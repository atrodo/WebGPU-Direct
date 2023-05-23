#!/usr/bin/env perl

use v5.20;
use warnings;

use FindBin qw/$Bin/;
use List::Util qw/pairs/;
use autodie;

open my $h,  '<', "$Bin/../webgpu/webgpu.h";
open my $xs, '>', "$Bin/webgpu.xsh";
open my $c,  '>', "$Bin/webgpu.c";
open my $tm, '>', "$Bin/typemap";
open my $pm, '>', "$Bin/../lib/WebGPU/Direct/XS.pl";

my %typedefs = (
    bool     => 'bool',
    double   => 'double',
    float    => 'float',
    uint16_t => 'uint16_t',
    uint32_t => 'uint32_t',
    uint64_t => 'uint64_t',
    int32_t  => 'int32_t',
    char     => 'str',
    void     => 'void',
);

my @fns;
my @classes;
my %classdefs;

say $xs q{#pragma GCC diagnostic ignored "-Wint-to-pointer-cast"};
say $xs q{#pragma GCC diagnostic ignored "-Wformat"};
say $xs q{};

say $pm q{use strict;};
say $pm q{use warnings;};

sub pkg_name
{
  my $ctype = shift;
  $ctype = "WebGPU::Direct::$ctype";
  $ctype =~ s/::WGPU/::/;
  return $ctype;
}

while (<$h>)
{
  chomp;
  s[// .* $][]xms;

  if (m/^ [#] | ^ \s* $ | ^ extern \s* "C" \s* { | ^ } \s* $ /xms)
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

  if ( m[^ typedef \s+ (struct) \s+ (\w+) \s+ { $]xms ..
    m[ ^ } \s+ (\w+) ; $]xms )
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
        };
      }
      next;
    }

    if (
      m[^ \s*
              (struct \s*)?
              (\w+) \s*
              (const \s*)?
              (\s* [*] \s*)?
              (\w+)
              ; \s* $]xms
        )
    {
      my $key        = $5;
      my $klen       = length $5;
      my $ctype      = $2;
      my $is_ptr     = !!$4;
      my $return     = pkg_name($ctype);
      my $typedef    = $typedefs{$ctype} // $typedefs{$return};
      my $inline_obj = !$is_ptr && $typedef eq 'obj';

      if ( !defined $typedef )
      {
        die "Unknown typedef: $ctype";
      }

      if ( $typedef ne 'obj' )
      {
        $return = $ctype;
      }

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

      warn( "Hey: $class " . scalar(@defs) ) if $inline_obj;
    }
    else
    {
      die $_;
    }
    next;
  }

  # Ignore function call typdefs
  if (m[^ typedef \s+ \w+ (\s* const \s*)? (\s* [*] \s*)? \s+ [(][*] ]xms)
  {
    next;
  }

  if (
    m[^WGPU_EXPORT \s* (\w+ \s* (?: const \s*)? (?: \s* [*] \s*)? ) \s* (\w+) \s* [(] \s* ( [^)]* ) \s* [)] ; \s* $ ]xms
      )
  {
    my $return  = $1;
    my $fn_name = $2;
    my $arg     = $3;

    my @args = ( $arg =~ m[ \s* ([^,]*) \s+ (\w+) \s* (?: , | $ ) ]xmsg );

    my $fn_def = {
      return => pkg_name($return),
      name   => $fn_name,
      args   => [@args],
    };

    my $first_arg = $args[0];
    my $first_pkg = pkg_name($first_arg);

    if ( ( $typedefs{$first_pkg} // '' ) eq 'obj'
      && $fn_name =~ m/^$first_arg/i )
    {
      $fn_def->{name} =~ s/^$first_arg//i;
      push $classdefs{$first_pkg}->{fns}->@*, $fn_def;
    }
    else
    {
      push @fns, $fn_def;
    }

    next;
  }

  if (m[^ typedef \s+ (\w+[*]?) \s+ (\w+); $]xms)
  {
    $typedefs{$2} = $1;
    next;
  }

  if (m[^ typedef \s+ struct \s+ (\w+) [*]? \s+ (\w+); $]xms)
  {
    my $type  = $2;
    my $class = pkg_name($type);

    die "Duplicate typedef: $class"
        if exists $typedefs{$class};

    $typedefs{$class} = 'void';
    push @classes, $class;
    $classdefs{$class} = {
      type  => $type,
      class => $class,
      defs  => [],
      fns   => [],
    };
    next;
  }

  say $_;
}

say $xs qq{MODULE = WebGPU::Direct\t\tPACKAGE = WebGPU::Direct::XS};

foreach (@fns)
{
  my %def = %$_;
  warn $def{name};
  my $class = 'WebGPU::Direct';
  my $type  = 'asdf';

  my @args;
  my @keys;
  my @vals;
  foreach my $pair ( pairs $def{args}->@* )
  {
    my ( $key, $value ) = @$pair;

    my ($type) = $key =~ m/^(\w+)/;
    my $pkg = pkg_name($type);

    warn "Unknown type: $type"
        if !exists $typedefs{$pkg} && !exists $typedefs{$type};

    if ( exists $typedefs{$pkg} )
    {
      $key =~ s/^$type/$pkg/;
    }
    push @args, "$key $value";
    push @keys, "$key";
    push @vals, "$value";
  }

  local $" = ', ';
  say $xs "";
  say $xs "$def{return}";
  say $xs "$def{name}(@vals)";
  foreach ( @args )
  {
    say $xs "        $_";
  }
  say $xs "";
}

foreach my $class ( @classes )
{
  my %def = $classdefs{$class}->%*;

  my $type = $def{type};
  my @defs = $def{defs}->@*;
  my @fns  = $def{fns}->@*;

  my $c_prefix  = "${type}__";
  my $isa       = "";
  my $packs     = "";
  my $addl_pack = "";

  if ( @defs )
  {
    $packs = "  SV **f;\n  SV *fp;\n";
    if ( $defs[0]->{inline_obj} && 1 == scalar(grep { $_->{inline_obj} } @defs ) )
    {
      warn "HeyHye";
      my $c_prefix = $defs[0]->{ctype} . '__';
      $addl_pack = qq{${c_prefix}pack( SV *THIS );\n};
      $isa = qq{push \@$class\::ISA, "$defs[0]->{return}";};
    }
  }

  say $xs '';
  say $xs qq{MODULE = WebGPU::Direct\tPACKAGE = $class\tPREFIX = wgpu};
  say $xs '';

  foreach (@defs)
  {
    my %def = %$_;
    $packs .= qq{  _find_set_$def{typedef}(aTHX_ h, "$def{key}", $def{klen}, &n->$def{key}, newSVpvs("$def{return}"));\n};

    say $xs <<~"EOF"; my $n = qq{
      $def{return}
      $def{key}(THIS, value = NO_INIT)
              $class THIS
              $def{return} value
          PROTOTYPE: \$;\$
          CODE:
              HV *h = SvRV(THIS);
              $type *n = _get_struct_ptr(aTHX, THIS, NULL);
              SV *type_sv = newSVpvs("$type");
              RETVAL = _find_obj(aTHX_ h, "$def{key}", $def{klen}, &n->$def{key}, type_sv);

              if (items > 1)
              {
                  _set_obj(aTHX_ value, &n->$def{key}, type_sv);
              }
          OUTPUT:
              RETVAL
      EOF
      };
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
              \$result->pack;
              return \$result;
          }
      }
      EOF
      };

    say $xs <<~"EOF"; $n = qq{
      void
      pack(THIS)
              SV *THIS
          PROTOTYPE: \$
          CODE:
              ${c_prefix}pack( SV *THIS );
              $addl_pack
      EOF
      };

    say $c <<~"EOF"; $n = qq{
    void ${c_prefix}pack( SV *THIS )
    {
      if (!SvROK(THIS) || !sv_derived_from(THIS, "$class"))
      {
        croak_nocontext("%s: %s is not of type %s",
          "$class",
          "THIS", "$class");
      }

      HV *h = SvRV(THIS);
      $type *n = _get_struct_ptr(aTHX, THIS, NULL);
      if ( !n )
      {
        Newxz(n, 1, $type);
        sv_magicext(h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
      }
    $packs
    }
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

    say $c <<~"EOF"; $n = qq{
    SV *${c_prefix}wrap( void *n )
    {
      HV *h = newHV();
      SV *RETVAL = sv_2mortal(newRV((SV*)h));

      sv_magicext(h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
      sv_bless(RETVAL, gv_stashpv("$class", GV_ADD));
      return RETVAL;
    }
    EOF
    };
  }

  foreach (@fns)
  {
    my %def = %$_;
    warn $def{name};

    say $xs <<~"EOF"; my $n = qq{
      $def{return}
      $def{name}(THIS, value = NO_INIT)
              $class THIS
              $def{return} value
          PROTOTYPE: \$;\$
          CODE:
              HV *h = SvRV(THIS);
              $type *n = _get_struct_ptr(aTHX, THIS, NULL);
              SV *type_sv = newSVpvs("$type");
              RETVAL = _find_obj(aTHX_ h, "$def{key}", $def{klen}, &n->$def{key}, type_sv);

              if (items > 1)
              {
                  _set_obj(aTHX_ value, &n->$def{key}, type_sv);
              }
          OUTPUT:
              RETVAL
      EOF
      };
  }
  
  my $typemap = $typedefs{$class} eq 'obj' ? 'T_SV' : 'T_VOID';
  say $tm sprintf("%-64s%s", $class, $typemap);
}

foreach my $typedef ( sort keys %typedefs )
{
  next
      if exists $classdefs{$typedef};

  my $typemap
      = ( $typedef =~ m/WGPU/i ) ? 'T_IV'
      : ( $typedef =~ m/_t$/ )   ? 'T_IV'
      :                            'T_' . uc($typedef);
  say $tm sprintf( "%-64s%s", $typedef, $typemap );
}

say $tm <<'EOF';
INPUT
T_VOID
    $var = (int32_t)SvUV($arg)

OUTPUT
T_VOID
    $arg = newRV((SV*)$var);
EOF

1;
