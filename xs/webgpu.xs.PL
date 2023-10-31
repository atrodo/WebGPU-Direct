#!/usr/bin/env perl

use v5.20;
use warnings;

use FindBin qw/$Bin $Script/;
use List::Util qw/pairs/;
use Data::Dumper qw//;
use ExtUtils::Typemaps qw//;
use ExtUtils::ParseXS::Utilities qw/standard_typemap_locations/;
use autodie;

open my $h,  '<', "$Bin/../webgpu/webgpu.h";
open my $xs, '>', "$Bin/webgpu.xs";
open my $c,  '>', "$Bin/webgpu.c";
open my $tm, '>', "$Bin/../typemap";
open my $pm, '>', "$Bin/../lib/WebGPU/Direct/XS.pm";

my $class_defaults = require "$Bin/$Script.default";

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

my $arrcnt_re = qr/^(\w+)Count$/xms;
my $arrnme_re = qr/^(\w+)s$/xms;

my @fns;
my @classes;
my %enums;
my %classdefs;
my %callbackdefs;

say $xs q{#pragma GCC diagnostic ignored "-Wint-to-pointer-cast"};
say $xs q{#pragma GCC diagnostic ignored "-Wformat"};
say $xs q{};

say $pm q{use strict;};
say $pm q{use warnings;};
say $pm q[package WebGPU::Direct::XS {];
say $pm q[  our $VERSION = '0.01';];
say $pm q[  require XSLoader;];
say $pm q[  XSLoader::load('WebGPU::Direct', $VERSION);];
say $pm q[}];
say $pm q[];
say $pm q[package WebGPU::Direct::Opaque {];
say $pm q[}];
say $pm q[];

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
        $enums{$type} = {};
      }
      else
      {
        die "Type mismatch: $1 ne $type"
            if $1 ne $type;
        $typedefs{$type} = 'enum';
      }
    }

    if (
      m[^ \s*
              (\w+) \s*
              = \s*
              (\w+) \s*
              ,? \s* $]xms
        )
    {
      my $const = $1;
      my $value = $2;
      my $short = $const;
      $short =~ s/$type\_//;
      if ( $short =~ m/^\d/ )
      {
        $short = "_$short";
      }
      $enums{$type}->{$value} = "use constant '$short' => dualvar($value, '$const');";
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
say $pm qq[package WebGPU::Direct {];

foreach (@fns)
{
  my %def = %$_;
  say_call_fn(%def);
  say $pm qq[  sub $def{name} { my \$class = shift; WebGPU::Direct::XS::$def{name}(\@_); }];
}

say $pm qq[  our \@export_all;];
foreach my $enum ( sort keys %enums )
{
  $enum =~ s/^WGPU//;
  my $pkg = "WebGPU::Direct::$enum";
  say $pm qq[  sub $enum () { '$pkg' }; push \@export_all, '$enum';];
}

say $pm qq[};];
say $pm qq[];

# Chosen by fair dice roll
say $c "#define CB_GUARD 0x25b3eea3";
say $c "typedef struct cb_data {
    I32 guard1;
    CV *perlsub;
    SV *data;
    I32 guard2;
} cb_data;
";

foreach my $enum (sort keys %enums)
{
  my $pkg = "WebGPU::Direct::$enum";
  $pkg =~ s/::WGPU/::/;

  say $pm qq[package $pkg {];
  say $pm qq[  use Scalar::Util qw/dualvar/;];

  my %consts = %{ $enums{$enum} };

  foreach my $value ( sort keys %consts )
  {
    say $pm qq[  $consts{$value}];
  }

  say $pm qq[};];
  say $pm qq[];
}

foreach my $class ( @classes )
{
  my %def = $classdefs{$class}->%*;

  my $type = $def{type};
  my @defs = $def{defs}->@*;
  my @fns  = $def{fns}->@*;

  my $preamble  = "";
  my $packs     = "";
  my $addl_pack = "";
  my $unpacks     = "";
  my $addl_unpack = "";
  my $destroy = '';
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
      $preamble = qq{push \@$class\::ISA, "$defs[0]->{return}";};
    }

    # Check for array-type elements
    state $maybe_array;
    foreach my $i (0..$#defs)
    {
      my %def = $defs[$i]->%*;

      my $match;
      if ( $def{ctype} eq 'size_t' && $def{key} =~ m/$arrcnt_re/ )
      {
        $match = $1;
      }
      if ( $def{key} =~ $arrnme_re )
      {
        $match = $1;
      }

      if ($match)
      {
        # If there is not yet a match
        if ( !$maybe_array )
        {
          $maybe_array = $match;
          next;
        }

        # Or the match doesn't match the last try
        if ( $match ne $maybe_array )
        {
          $maybe_array = $match;
          next;
        }

        my $cnt_i = $def{key} =~ m/$arrcnt_re/ ? $i : $i - 1;
        my $arr_i = $cnt_i == $i ? $i - 1 : $i;

        $defs[$cnt_i]->{ro}    = 1;
        $defs[$arr_i]->{array} = $match;
      }

      undef $maybe_array;
    }
  }
  else
  {
    $preamble = qq{push \@$class\::ISA, "WebGPU::Direct::Opaque";};
  }

  if ( @fns )
  {
    $prefix = $fns[0]->{prefix};
    warn "prefix is inconsistent: $prefix"
      if grep { $_->{prefix} && $_->{prefix} ne $prefix } @fns;

    my $class_pm = "$class.pm";
    $class_pm =~ s[::][/]g;
    $class_pm = "$Bin/../lib/$class_pm";

    if ( -e $class_pm )
    {
      $preamble .= "\nrequire $class;";

      open my $class_fh, '<', $class_pm;
      my %subs;

      while (<$class_fh>)
      {
        if ( m/sub \s* (\w*)/xms )
        {
          $subs{$1} = 1;
        }
      }

      foreach ( @fns )
      {
        my %fn_def = %$_;
        if ( exists $subs{ $fn_def{name} } )
        {
          $_->{as} = "_$fn_def{name}";
        }
      }
    }
  }

  say $xs '';
  say $xs qq{MODULE = WebGPU::Direct\tPACKAGE = $class\tPREFIX = $prefix};
  say $xs '';

  if ( grep { $_->{name} eq 'Release' } @fns )
  {
    $destroy = <<~"EOF"; my $n = qq{

        sub DESTROY
        {
          \$_[0]->Release;
        }
    EOF
    };
  }

  foreach (@defs)
  {
    my %def = %$_;
    my %calls = calls_for(%$_);
    $packs .= $calls{pack};
    $unpacks .= $calls{unpack};#qq{  _unpack_$typedef(aTHX_ h, "$def{key}", $def{klen}, $cast &n->$def{key} $set_addl);\n};

    say_set_fn($class, $type, %def);
  }

  if ( @defs )
  {
    my $short_class = $class;
    $short_class =~ s/WebGPU::Direct:://;
    my $default = Data::Dumper->Dump([$class_defaults->{$short_class} // {}], [qw/default/]);

    # Any scalar refs, strip the decoration and fully-qualify the call
    $default =~ s[\\'([\w\:\-\>]*)'][WebGPU::Direct::$1];

    say $pm <<~"EOF"; my $n = qq{
      package $class {
          $preamble
          my $default
          sub new {
              my \$class = shift;
              die "\$class does not inherit from $class\\n"
                if !\$class->isa("$class");
              \$class = ref(\$class) ? ref(\$class) : \$class;
              my \$result = { \%\$default, ref( \$_[0] ) eq ref {} ? %{\$_[0]} : \@_ };
              \$result = bless( \$result, \$class );
              \$result->pack;
              return \$result;
          }
          $destroy
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
          $preamble
          sub new {
              my \$class = __PACKAGE__;
              die "Cannot call new on abstract class \$class";
          }$destroy
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

  if ( $def{is_ptr} )
  {
    if ( $typedef eq 'obj' && $def{array} )
    {
      $typedef = "${typedef}array";
      $set_addl = qq{, sizeof(*n->$def{key})$set_addl};
      $set_addl = qq{, &n->$def{array}Count$set_addl};
      $cast    = '(void **)';
    }
    elsif ( $typedef eq 'obj' )
    {
      $typedef = "${typedef}ptr";
      $cast    = '(void **)';
    }
  }

  if ( $typedef eq 'obj' && !$def{is_ptr} )
  {
    $set_addl = qq{, sizeof(n->$def{key})$set_addl};
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
    set      => '',
    typedef  => undef,
  );

  if ( !$set_addl && $def{ctype} ne 'char' && $def{is_ptr} && !$def{array} )
  {
    my $warning
        = qq{  // "$def{key}" is a ptr type $def{ctype}, and that's not quite right yet, using opaque\n};
    $result{pack}     .= $warning;
    $result{unpack}   .= $warning;
    $result{store}    .= $warning;
    $result{find}     .= $warning;
    $result{set}      .= $warning;

    $typedef  = 'void';
  }

  my $call = qq{aTHX_ h, "$def{key}", $def{klen}, $cast &n->$def{key} $set_addl};
  my $set_call = qq{aTHX_ value,/**/ (void *) &n->$def{key} $set_addl};

  $result{pack}     .= qq{  _pack_$typedef($call);\n};
  $result{unpack}   .= qq{  _unpack_$typedef($call);\n};
  $result{store}    .= qq{  _store_$typedef($call, value);\n};
  $result{find}     .= qq{  _find_$typedef($call);\n};
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

  my $typedef = $calls{typedef};
  my $ret_type = $def{return};
  my $is_ptr = ( $def{ctype} ne 'char' && $def{is_ptr} );
  my $is_obj = ( $typedef eq 'obj' || $typedef eq 'void' );
  my $is_ro  = $def{ro};
  my $is_arr = $def{array};

  my $val_type
      = $is_ptr ? "SV *"
      : $is_obj ? "$def{return}"
      :           "SV *";

  if ( $is_ptr )
  {
    $val_type = 'SV *';
    $ret_type = 'SV *';
  }

  my $mut = 'SvREFCNT_inc(RETVAL);';
  if ( !$is_ro )
  {
    $mut = <<~"EOF"; my $n = qq{
    if (items > 1)
            {
                $calls{store}
            }
            else
            {
                SvREFCNT_inc(RETVAL);
            }
    EOF
    };
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
            RETVAL = $calls{find}
            $mut

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
  if ( @defargs >= 4
    && $defargs[-1] eq 'userdata'
    && $defargs[-3] eq 'callback' )
  {
    $is_cb = 1;
  }

  my %arrays;
  my $array_can;
  foreach my $i ( 0 .. @defargs )
  {
    next
        unless $i % 2;

    my $key   = $defargs[$i];
    my $value = $defargs[ $i - 1 ];
    if ( $value eq 'size_t' && $key =~ m/$arrcnt_re/ )
    {
      $array_can = $1;
      next;
    }
    if ( $array_can && $key =~ $arrnme_re && $1 eq $array_can )
    {
      $arrays{$array_can} = $value;
    }

    undef $array_can;
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

    if ( $value =~ $arrcnt_re && exists $arrays{$1} )

        #if ( $arrays{"${value}Count"} )
    {
      next;
    }

    if ( $value =~ $arrnme_re && exists $arrays{$1} )
    {
      #die;
      #next;
      $key = 'AV *';
    }

    if ( $value =~ m/$arrnme_re/ && $1 eq 'bundle' )
    {
    }

    push @args, "$key $value";
    push @keys, "$key";
    push @vals, "$value";
  }

  my $fn_name = $def{as} // $def{name};

  local $" = ', ';
  say $xs "";
  say $xs "$def{return}";
  say $xs "$def{prefix}$fn_name(@vals)";
  foreach (@args)
  {
    say $xs "        $_";
  }

  my @calls = @vals;
  say $xs "    CODE:";

  if ( $is_cb || keys %arrays )
  {
    if ($is_cb)
    {
      my $cb_type = $defargs[-4];
      my $cb_pkg  = pkg_name($cb_type);

      $cb_pkg =~ tr/:/_/;
      @calls[ -2, -1 ] = qw/c &c_userdata/;

      say $xs <<~"EOF"; my $n = qq{
              $cb_type c = &${cb_pkg}__callback;
              cb_data c_userdata = {
                .guard1 = CB_GUARD,
                .guard2 = CB_GUARD,
                .perlsub = callback,
                .data = userdata,
              };
        EOF
        };
    }

    foreach my $array ( keys %arrays )
    {
      my $type = $arrays{$array};
      $type =~ s/[*]$//;
      $type =~ s/const//;

      my $fetch = "($type) _get_struct_ptr(aTHX_ *item, NULL)";
      if ( $type =~ m/^\s*uint\d+_t\s*$/xms )
      {
        $fetch = "SvIV(*item)";
      }

      say $xs <<~"EOF"; my $n = qq{
              Size_t ${array}Count = av_count(${array}s);
              $type $array\[${array}Count+1];
              for ( Size_t i = 0; i < ${array}Count; i++ )
              {
                SV **item = av_fetch(${array}s, i, 0);
                if ( *item != NULL )
                {
                  $type n = $fetch;
                  $array\[i] = n;
                }
              }
              $array\[${array}Count+1] = ($type) 0;
        EOF
        };

      @calls = map { $_ eq "${array}s" ? ( "${array}Count", $array ) : $_ }
          @calls;
    }
  }

  my $call = join( ', ', @calls );
  my $retval = $def{return} =~ m/^void\s*$/ ? '' : 'RETVAL = ';

  say $xs "      $retval$def{prefix}$def{name}($call);";
  if ( $retval )
  {
    say $xs "    OUTPUT:";
    say $xs "      RETVAL";
  }
  say $xs "";
}

say $pm q{1;};

1;
