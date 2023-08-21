#!/usr/bin/env perl

use v5.20;
use warnings;

use FindBin qw/$Bin/;
use List::Util qw/pairs/;
use ExtUtils::Typemaps qw//;
use ExtUtils::ParseXS::Utilities qw/standard_typemap_locations/;
use autodie;

open my $h,  '<', "$Bin/../webgpu/webgpu.h";
open my $xs, '>', "$Bin/webgpu.xs";
open my $c,  '>', "$Bin/webgpu.c";
open my $tm, '>', "$Bin/../typemap";
open my $pm, '>', "$Bin/../lib/WebGPU/Direct/XS.pl";

my %typedefs = (
    bool     => 'bool',
    double   => 'double',
    float    => 'float',
    uint16_t => 'uint16_t',
    uint32_t => 'uint32_t',
    uint64_t => 'uint64_t',
    int32_t  => 'int32_t',
    size_t   => 'size_t',
    char     => 'str',
    void     => 'void',
);

my @typemap = (
  q{# We do the tr/:/_/ in the output because ParseXS doesn't for outputs},
  q{INPUT},
  q{T_VOID},
  q{    $var = ($type) _get_struct_ptr(aTHX_ $arg, NULL)},
  q{T_FETCH},
  q{    $var = ($type) _get_struct_ptr(aTHX_ $arg, newSVpvs(\"${ my $t=$type; $t=~s/ .*//; $t=~tr/_/:/; $t=~s/^WGPU/WebGPU::Direct::/; \$t}\"))},
  q{T_FETCHPTR},
  q{    $var = ($type) _get_struct_ptr(aTHX_ $arg, newSVpvs(\"${ my $t=$type; $t=~s/ .*//; $t=~tr/_/:/; $t=~s/^WGPU/WebGPU::Direct::/; \$t}\"))},
  q{},
  q{OUTPUT},
  q{T_VOID},
  q{    $arg = _void__wrap($var);},
  q{T_FETCH},
  q{    $arg = ${$type=~tr/:/_/, \$type}__wrap($var);},
  q{T_FETCHPTR},
  q{    $arg = ${$type=~tr/:/_/, \$type}__wrap($var);},
);

my @fns;
my @classes;
my %classdefs;
my %callbackdefs;

say $xs q{#pragma GCC diagnostic ignored "-Wint-to-pointer-cast"};
say $xs q{#pragma GCC diagnostic ignored "-Wformat"};
say $xs q{};

say $pm q{use strict;};
say $pm q{use warnings;};

sub pkg_name
{
  my $ctype = shift;

  return $ctype
    if exists $typedefs{$ctype};

  $ctype = "WebGPU::Direct::$ctype";
  $ctype =~ s/::WGPU/::/;

  return $ctype;
}

while (<$h>)
{
  chomp;
  s[// .* $][]xms;
  s[/[*] .*? [*]/][]xms;
  s[ \s (?:WGPU_OBJECT_ATTRIBUTE|WGPU_ENUM_ATTRIBUTE|WGPU_STRUCTURE_ATTRIBUTE|WGPU_FUNCTION_ATTRIBUTE|WGPU_NULLABLE)][]xmsg;

  # Skip the WGPU_SKIP_PROCS definitions
  if ( m{^ [#] if \s+ [!] defined [(] WGPU_SKIP_PROCS [)] }xms .. m[^ [#] endif ]xms )
  {
    next;
  }

  if (m/^ [#] | ^ \s* $ | ^ extern \s* "C" \s* { | ^ } \s* $ /xms)
  {
    next;
  }

  # Skip forward declares
  if (m/^ \s* struct \s+ \w+ ; $/xms)
  {
    next;
  }

  if (
    m[^ typedef \s+ (enum) \s+ (\w+) \s+ { $]xms .. m[ ^ } \s+ (\w+) ; $]xms )
  {
    state $type;
    if ($1)
    {
      if ( $1 eq 'enum' )
      {
        die "Duplicate typedef: $2"
            if exists $typedefs{$2};
        $type = $2;
      }
      else
      {
        die "Type mismatch: $1 ne $type"
            if $1 ne $type;
        $typedefs{$type} = 'enum';
      }
    }
    next;
  }

  # Struct definitions
  if ( m[^ typedef \s+ (struct) \s+ (\w+) \s+ { $]xms ..  m[ ^ } \s+ (\w+) ; $]xms )
  {
    state $type;
    state $class;
    state @defs;

    if ($1)
    {
      if ( $1 eq 'struct' )
      {
        @defs  = ();
        $type  = $2;
        $class = pkg_name($type);

        die "Duplicate typedef: $class"
            if exists $typedefs{$class};

        $typedefs{$class} = 'obj';

      }
      else
      {
        my $restype = $2;
        die "Type mismatch: $1 ne $type"
            if $1 ne $type;

        push @classes, $class;
        $classdefs{$class} = {
          type  => $type,
          class => $class,
          defs  => [@defs],
          fns   => [],
          ptr_type => '',
        };
      }
      next;
    }

    if (
      m[^ \s*
              (struct \s*)?
              (\w+) \s*
              (const \s+)?
              (\s* [*] \s*)?
              (\w+)
              ; \s* $]xms
        )
    {
      no warnings 'uninitialized';
      my $full_ret   = "$1 $2 $3 $4";
      my $key        = $5;
      my $klen       = length $5;
      my $ctype      = $2;
      my $is_ptr     = !!$4;
      my $return     = pkg_name($ctype);
      my $typedef    = $typedefs{$ctype} // $typedefs{$return};
      my $inline_obj = !$is_ptr && $typedef eq 'obj';

      if ( $inline_obj && $classdefs{$return} && $classdefs{$return}->{ptr_type})
      {
        $inline_obj = undef;
      }

      if ( !defined $typedef )
      {
        die "Unknown typedef: $ctype";
      }

      if ( $typedef ne 'obj' && $typedef ne 'opaque' )
      {
        $return = $ctype;
      }

      if ( $typedef eq 'str' )
      {
        $return = $full_ret;
      }

      if ( $typedef eq 'void' )
      {
        $return = "void *";
      }

      $return =~ s/^\s+//;
      push @defs,
          {
        key        => $key,
        klen       => $klen,
        ctype      => $ctype,
        typedef    => $typedef,
        is_ptr     => $is_ptr,
        inline_obj => $inline_obj,
        return     => $return,
          };
    }
    else
    {
      die $_;
    }
    next;
  }

  # Ignore all other function call typdefs
  if (m[^ typedef \s+ (\w+) \s+ [(][*] (\w*) [)] [(] ([^)]+) [)] ; ]xms)
  {
    my $return = $1;
    my $type = $2;
    my $definition = $3;

    my $class = pkg_name($type);

    die "Duplicate typedef: $class"
        if exists $typedefs{$class};

    my @args = ( $definition =~ m[ \s* ([^,]*) \s+ (\w+) \s* (?: , | $ ) ]xmsg );

    # If the last arg is a user-data slot, create a callback situation
    if ( $return eq 'void' && $args[-2] && $args[-2] =~ m/^void\s+[*]$/ )
    {
      $callbackdefs{$class} = {
        type  => $type,
        class => $class,
        args  => \@args,
      };
    }

    $typedefs{$class} = 'void';

    push @classes, $class;

    $classdefs{$class} = {
      type  => $type,
      class => $class,
      ptr_type => 1,
      defs  => [],
      fns   => [],
    };

    next;
  }

  if (
    m[^WGPU_EXPORT \s* (\w+) \s* ( (?: const \s+)? (?: \s* [*] \s*)? ) \s* (\w+) \s* [(] \s* ( [^)]* ) \s* [)] ; \s* $ ]xms
      )
  {
    my $return  = $1;
    my $return2 = $2;
    my $fn_name = $3;
    my $arg     = $4;

    my @args = ( $arg =~ m[ \s* ([^,]*) \s+ (\w+) \s* (?: , | $ ) ]xmsg );

    my $fn_def = {
      return => pkg_name($return) . " $return2",
      return => "$return $return2",
      name   => $fn_name,
      args   => [@args],
    };

    my $first_arg = $args[0];
    my $first_pkg = pkg_name($first_arg);

    if ( ( ( $typedefs{$first_pkg} // '' ) eq 'obj' || ( $typedefs{$first_pkg} // '' ) eq 'opaque' )&& $fn_name =~ m/^($first_arg)/i )
    {
      $fn_def->{name} =~ s/^($first_arg)//i;
      $fn_def->{prefix} = $1;
      push $classdefs{$first_pkg}->{fns}->@*, $fn_def;
    }
    else
    {
      $fn_def->{name} =~ s/^(wgpu)//;
      $fn_def->{prefix} = $1;
      push @fns, $fn_def;
    }

    next;
  }

  if (m[^ typedef \s+ (\w+[*]?) \s+ (\w+); $]xms)
  {
    die "Unknown typedef: $1"
      if !$typedefs{$1};
    $typedefs{$2} = $typedefs{$1};
    next;
  }

  # Handle opaque sturcts that may be used as specifc types
  if (m[^ typedef \s+ struct \s+ (\w+ [*]?) \s+ (\w+); $]xms)
  {
    my $type  = $2;
    my $is_ptr = ( $1 =~ m/[*]/ );
    my $class = pkg_name($type);

    die "Duplicate typedef: $class"
        if exists $typedefs{$class};

    die
      if !$is_ptr;

    $typedefs{$class} = 'opaque';
    push @classes, $class;
    $classdefs{$class} = {
      type  => $type,
      ptr_type => $is_ptr,
      opaque => 1,
      class => $class,
      defs  => [],
      fns   => [],
    };
    next;
  }

  say $_;
  die "Unparsed line: $_";
}

say $xs qq{MODULE = WebGPU::Direct\t\tPACKAGE = WebGPU::Direct::XS\t\tPREFIX = wgpu};

foreach (@fns)
{
  my %def = %$_;
  say_call_fn(%def);
}

# Chosen by fair dice roll
say $c "#define CB_GUARD 0x25b3eea3";
say $c "typedef struct cb_data {
    I32 guard1;
    CV *perlsub;
    SV *data;
    I32 guard2;
} cb_data;
";

foreach my $class ( @classes )
{
  my %def = $classdefs{$class}->%*;

  my $type = $def{type};
  my @defs = $def{defs}->@*;
  my @fns  = $def{fns}->@*;

  my $isa       = "";
  my $packs     = "";
  my $addl_pack = "";
  my $unpacks     = "";
  my $addl_unpack = "";
  my $c_prefix  = "${class}";
  my $prefix    = "wgpu";

  $c_prefix =~ s/::/__/g;

  if ( @defs )
  {
    $packs = "  SV **f;\n  SV *fp;\n";

    if ( $defs[0]->{inline_obj} && 1 == scalar(grep { $_->{inline_obj} } @defs ) )
    {
      my $c_prefix = $defs[0]->{return} . '::';
      $c_prefix =~ s/::/__/g;
      $addl_pack = qq{${c_prefix}pack( /*asdf*/ THIS );\n};
      $addl_unpack = qq{${c_prefix}unpack( /*asdf*/ THIS );\n};
      $isa = qq{push \@$class\::ISA, "$defs[0]->{return}";};
    }
  }
  else
  {
    $isa = qq{push \@$class\::ISA, "WebGPU::Direct::Opaque";};
  }

  if ( @fns )
  {
    $prefix = $fns[0]->{prefix};
    warn "prefix is inconsistent: $prefix"
      if grep { $_->{prefix} && $_->{prefix} ne $prefix } @fns;
  }

  say $xs '';
  say $xs qq{MODULE = WebGPU::Direct\tPACKAGE = $class\tPREFIX = $prefix};
  say $xs '';

  foreach (@defs)
  {
    my %def = %$_;
    my %calls = calls_for(%$_);
    $packs .= $calls{find_set};#qq{  _find_set_$typedef(aTHX_ h, "$def{key}", $def{klen}, $cast &n->$def{key} $set_addl);\n};
    $unpacks .= $calls{unpack};#qq{  _unpack_$typedef(aTHX_ h, "$def{key}", $def{klen}, $cast &n->$def{key} $set_addl);\n};

    say_set_fn($class, $type, %def);
  }

  if ( @defs )
  {
    say $pm <<~"EOF"; my $n = qq{
      package $class {
          $isa
          sub new {
              my \$class = shift;
              die "\$class does not inherit from $class\\n"
                if !\$class->isa("$class");
              \$class = CORE::ref(\$class) ? CORE::ref(\$class) : \$class;
              my \$result = bless( { ref( \$_[0] ) eq ref {} ? %\$_[0] : \@_ }, \$class );
              \$result->unpack;
              return \$result;
          }
      }
      EOF
      };

    # TODO: Better function to intellgently handle new/choose pack/unpack
    say $xs <<~"EOF"; $n = qq{
      void
      pack(THIS)
              SV *THIS
          PROTOTYPE: \$
          CODE:
              ${c_prefix}__pack( THIS );
              $addl_pack //

      void
      unpack(THIS)
              SV *THIS
          PROTOTYPE: \$
          CODE:
              ${c_prefix}__unpack( THIS );
              $addl_unpack //

      SV *
      bytes(THIS)
              SV *THIS
          PROTOTYPE: \$
          CODE:
              $type *n = ($type *) _get_struct_ptr(aTHX, THIS, NULL);
              RETVAL = newSVpvn((const char *const) n, sizeof($type) );
          OUTPUT:
              RETVAL
      EOF
      };

    say $c <<~"EOF"; $n = qq{
    void ${c_prefix}__pack( SV *THIS )
    {
      if (!SvROK(THIS) || !sv_derived_from(THIS, "$class"))
      {
        croak_nocontext("%s: %s is not of type %s",
          "$class",
          "THIS", "$class");
      }

      HV *h = (HV *)SvRV(THIS);
      $type *n = ($type *) _get_struct_ptr(aTHX, THIS, NULL);
      if ( !n )
      {
        Newxz(n, 1, $type);
        sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
      }
    $packs
    }
    EOF
    };

    say $c <<~"EOF"; $n = qq{
    void ${c_prefix}__unpack( SV *THIS )
    {
      if (!SvROK(THIS) || !sv_derived_from(THIS, "$class"))
      {
        croak_nocontext("%s: %s is not of type %s",
          "$class",
          "THIS", "$class");
      }

      HV *h = (HV *)SvRV(THIS);
      $type *n = ($type *) _get_struct_ptr(aTHX, THIS, NULL);
      if ( !n )
      {
        Newxz(n, 1, $type);
        sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
      }
    $unpacks
    }

    SV *${type}__wrap( const ${type} * n )
    {
      HV *h = newHV();
      SV *RETVAL = sv_2mortal(newRV((SV*)h));

      sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
      sv_bless(RETVAL, gv_stashpv("$class", GV_ADD));
      ${c_prefix}__unpack(RETVAL);
      return SvREFCNT_inc(RETVAL);
    }
    EOF
    EOF
    };
  }
  else
  {
    say $pm <<~"EOF"; my $n = qq{
      package $class {
          $isa
          sub new {
              my \$class = __PACKAGE__;
              die "Cannot call new on abstract class \$class";
          }
      }
      EOF
      };

    # If the def is a ptr type, that is its already a pointer inside the
    # typedef, we don't add the * here
    my $ptr = $def{ptr_type} ? '' : '*';

    say $c <<~"EOF"; $n = qq{
    SV *${type}__wrap( ${type} $ptr n )
    {
      return _new_opaque(newSVpvs("$class"), n);
    }
    EOF
    };
  }

  foreach (@fns)
  {
    my %def = %$_;
    say_call_fn(%def);
  }
  
  my $typemap = $typedefs{$class} eq 'obj' ? 'T_SV' : 'T_VOID';
  say $tm sprintf("%-64s%s", $type, "T_FETCH");
  say $tm sprintf("%-64s%s", "$type *", 'T_FETCHPTR');
  say $tm sprintf("%-64s%s", "$type const *", 'T_FETCHPTR');
  say $tm sprintf("%-64s%s", "struct $type const *", 'T_FETCHPTR');
  say $tm sprintf("%-64s%s", $class, $typemap);
  #say $tm sprintf("%-64s%s", "$class *", 'T_FETCHPTR');
  #say $tm sprintf("%-64s%s", "$class const *", 'T_FETCHPTR');

  say $c "typedef SV* $c_prefix;";
}

foreach my $typedef ( sort keys %typedefs )
{
  next
      if exists $classdefs{$typedef};

  my $typemap = tm_of($typedef);
  say $tm sprintf( "%-64s%s", $typedef, $typemap );
  say $tm sprintf( "%-64s%s", "$typedef *", $typemap );
  say $tm sprintf( "%-64s%s", "$typedef const *", $typemap );
}

say $tm join("\n", @typemap);

$tm->flush;

my $tmx = ExtUtils::Typemaps->new;
foreach my $tm_file ( standard_typemap_locations( \@INC ) )
{
  next unless -f $tm_file;

  # skip directories, binary files etc.
  next
    if !-T $tm_file;

  $tmx->merge( file => $tm_file, replace => 1 );
}

foreach my $cb_name ( sort keys %callbackdefs )
{
  my $callback = $callbackdefs{$cb_name};
  my $type = $callback->{type};
  my $class = $callback->{class};
  my @args = $callback->{args}->@*;
  my $c_prefix  = "${class}";

  $c_prefix =~ s/::/__/g;

  my @argdefs;
  my @keys;
  my @vals;
  my @pushs;

  my $argoff = -1;
  foreach my $pair ( pairs @args )
  {
    my ( $key, $value ) = @$pair;

    my ($type) = $key =~ m/^(?:struct\s+)?(\w+)/;
    my $pkg = pkg_name($type);

    warn "Unknown type: $type"
        if !exists $typedefs{$pkg} && !exists $typedefs{$type};

    push @argdefs, "$key $value";
    push @keys,    $key;
    push @vals,    $value;

    if ( $value eq 'userdata' )
    {
      push @pushs, "\n    XPUSHs(cb->data);";
      next;
    }

    my $outputmap = $tmx->get_outputmap( ctype => $key );
    $argoff++;

    die "Can't find for ctype $key"
      if !defined $outputmap;

    {
      my $arg  = "tm_$value";
      my $var  = $value;
      my $type = $type;

      $type =~ tr/:/_/;

      my $expr = $outputmap->cleaned_code;

      {
        local $@;
        my $pushget = eval qq{use strict; "$expr;"};
        die $@
            if $@;
        push @pushs, "\n    $c_prefix $arg = newSV(0); $pushget";
        push @pushs, "\n    XPUSHs($arg);";
      }
    }
  }

  {
    local $" = ', ';
    say $c "void ${c_prefix}__callback( @argdefs )";
  }

  say $c <<~"EOF"; my $n = qq{
      {
        cb_data *cb = (cb_data *)userdata;
        if ( cb->guard1 != CB_GUARD || cb->guard2 != cb->guard1 )
        {
          croak("Got a callback with improper guards: 0x%X, 0x%X", cb->guard1, cb->guard2);
        }

        dSP;
        dTARGET;
        PUSHMARK(SP);@pushs
        PUTBACK;
        call_sv((SV *)cb->perlsub, G_VOID);
      }
    EOF
    };
}

sub tm_of
{
  my $typedef = shift;

  my $typemap
      = ( $typedef =~ m/WGPU/i ) ? 'T_IV'
      : ( $typedef =~ m/_t$/ )   ? 'T_IV'
      : ( $typedef =~ m/^char$/ )? 'T_PV'
      :                            'T_' . uc($typedef);

  return $typemap;
}

sub calls_for
{
  my %def = @_;

  my $cast = '';
  my $set_addl
      = ( $def{typedef} eq 'obj' )  ? qq{, newSVpvs("$def{return}")}
      : ( $def{typedef} eq 'opaque' ) ? qq{, newSVpvs("$def{return}")}
      :                               "";

  my $typedef = $def{typedef};
  if ( $typedef eq 'obj' && $def{is_ptr} )
  {
    $typedef = "${typedef}ptr";
    $cast    = '(void **)';
  }

  if ( $typedef eq 'opaque' )
  {
    $cast    = '(void **)';
  }

  my %result = (
    pack     => '',
    unpack   => '',
    store    => '',
    find     => '',
    find_set => '',
    set      => '',
    typedef  => undef,
  );

  # TODO
  if ( !$set_addl && $def{ctype} ne 'char' && $def{is_ptr} )
  {
    my $warning
        = qq{  // "$def{key}" is a ptr type $def{ctype}, and that's not quite right yet, using opaque\n};
    $result{pack}     .= $warning;
    $result{unpack}   .= $warning;
    $result{store}    .= $warning;
    $result{find}     .= $warning;
    $result{find_set} .= $warning;
    $result{set}      .= $warning;

    $typedef  = 'void';
  }

  my $call = qq{aTHX_ h, "$def{key}", $def{klen}, $cast &n->$def{key} $set_addl};
  my $set_call = qq{aTHX_ value,/**/ (void *) &n->$def{key} $set_addl};

  if ( 0 )#$is_obj )
  {
    #$set_call = qq{  _set_$typedef(aTHX_ value,/*-*/ (void *) &n->$def{key});\n};
  }

  $result{pack}     .= qq{  _pack_$typedef($call);\n};
  $result{unpack}   .= qq{  _unpack_$typedef($call);\n};
  $result{store}    .= qq{  _store_$typedef($call, value);\n};
  $result{find}     .= qq{  _find_$typedef($call);\n};
  $result{find_set} .= qq{  _find_set_$typedef($call);\n};
  $result{set}      .= qq{  _set_$typedef($set_call);\n};

  $result{typedef} = $typedef;

  return %result;
}

sub say_set_fn
{
  my $class = shift;
  my $type = shift;
  my %def = @_;

  my %calls = calls_for(%def);

  # TODO: this is causing a compile error because return type for ptrs disagreew ith the find_set call
  my $typedef = $calls{typedef};
  my $ret_type = $def{return};
  my $is_ptr = ( $def{ctype} ne 'char' && $def{is_ptr} );
  my $is_obj = ( $typedef eq 'obj' || $typedef eq 'void' );
  my $val_type
      = $is_ptr ? "SV *"
      : $is_obj ? "$def{return}"
      :           "SV *";

  if ( $is_ptr )
  {
    $val_type = 'SV *';
    $ret_type = 'SV *';
  }

  say $xs <<~"EOF"; my $n = qq{
    SV *
    $def{key}(THIS, value = NO_INIT)
            $class THIS
            $val_type value
        PROTOTYPE: \$;\$
        CODE:
            HV *h = (HV *)SvRV(THIS);
            $type *n = ($type *) _get_struct_ptr(aTHX, THIS, NULL);
            RETVAL = $calls{find_set};

            if (items > 1)
            {
                $calls{store}
            }
        OUTPUT:
            RETVAL
    EOF
    };

=c
  my $is_obj = ( $def{typedef} eq 'obj' || $def{typedef} eq 'void' );

  if ( $is_obj )
  {
    say $xs <<~"EOF"; my $n = qq{
      $def{return}
      $def{key}(THIS, value = NO_INIT)
              $class THIS
              $def{return} value
          PROTOTYPE: \$;\$
          CODE:
              HV *h = (HV *)SvRV(THIS);
              $type *n = ($type *) _get_struct_ptr(aTHX, THIS, NULL);
              SV *type_sv = newSVpvs("$def{return}");
              RETVAL = _find_set_$def{typedef}(aTHX_ h, "$def{key}", $def{klen}, &n->$def{key}, type_sv);

              if (items > 1)
              {
                  _set_$def{typedef}(aTHX_ value,/**/ (void *) &n->$def{key}, type_sv);
                  _unpack(THIS);
              }
          OUTPUT:
              RETVAL
      EOF
      };
  }
  else
  {
    say $xs <<~"EOF"; my $n = qq{
      $def{return}
      $def{key}(THIS, value = NO_INIT)
              $class THIS
              SV *value
          PROTOTYPE: \$;\$
          CODE:
              HV *h = (HV *)SvRV(THIS);
              $type *n = ($type *) _get_struct_ptr(aTHX, THIS, NULL);
              SV *type_sv = newSVpvs("$type");
              RETVAL = _find_set_$def{typedef}(aTHX_ h, "$def{key}", $def{klen}, &n->$def{key});

              if (items > 1)
              {
                  _set_$def{typedef}(aTHX_ value,/*-*/ (void *) &n->$def{key});
                  _unpack(THIS);
              }
          OUTPUT:
              RETVAL
      EOF
      };
  }
=cut
}

sub say_call_fn
{
  my %def = @_;

    my $is_cb;
    my @defargs = $def{args}->@*;
    if ( @defargs >= 4 && $defargs[-1] eq 'userdata' && $defargs[-3] eq 'callback' )
    {
      $is_cb = 1;
    }

    my @args;
    my @keys;
    my @vals;
    foreach my $pair ( pairs @defargs )
    {
      my ( $key, $value ) = @$pair;

      my ($type) = $key =~ m/^(\w+)/;
      my $pkg = pkg_name($type);

      warn "Unknown type: $type"
          if !exists $typedefs{$pkg} && !exists $typedefs{$type};

      if ( $is_cb && $value eq 'callback' )
      {
        $key = 'CV *';
      }

      if ( $is_cb && $value eq 'userdata' )
      {
        $key = 'SV *';
      }

      push @args, "$key $value";
      push @keys, "$key";
      push @vals, "$value";
    }

    local $" = ', ';
    say $xs "";
    say $xs "$def{return}";
    say $xs "$def{prefix}$def{name}(@vals)";
    foreach ( @args )
    {
      say $xs "        $_";
    }

    if ( $is_cb )
    {
      my $cb_type = $defargs[-4];
      my $cb_pkg = pkg_name($cb_type);
      my @calls = @vals;

      $cb_pkg =~ tr/:/_/;
      @calls[-2, -1] = qw/c &c_userdata/;

      my $call = join(', ', @calls);

      say $xs <<~"EOF"; my $n = qq{
          CODE:
            $cb_type c = &${cb_pkg}__callback;
            cb_data c_userdata = {
              .guard1 = CB_GUARD,
              .guard2 = CB_GUARD,
              .perlsub = callback,
              .data = userdata,
            };
            $def{prefix}$def{name}($call);
      EOF
      };
    }
    say $xs "";
}

say $pm q{1;};

1;
