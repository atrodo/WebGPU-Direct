use strict;
use warnings;

use 5.008005;

use ExtUtils::MakeMaker;

my %WriteMakefileArgs = (
  "ABSTRACT"           => "Blah blah blah",
  "AUTHOR"             => "Jon Gentle <cpan\@atrodo.org>",
  "CONFIGURE_REQUIRES" => { "ExtUtils::MakeMaker" => 0 },
  "DISTNAME"           => "WebGPU-Direct",
  "LICENSE"            => "perl",
  "MIN_PERL_VERSION"   => "5.030000",
  "NAME"               => "WebGPU::Direct",
  "PREREQ_PM"          => {},
  "TEST_REQUIRES"      => { "Test::More" => "0.96" },
  "VERSION"            => "0.01",
  INC                  => '-I.',
  LIBS                 => ['-lwgpu_native'],
  "test"               => { "TESTS" => "t/*.t" },
  depend               => {
    'Direct.c' => 'Direct.xs xs/*.xs xs/*.c',
  },
);

my $addl_search = $ENV{ADDL_SEARCH} // '';
if ($addl_search)
{
  $addl_search = "-L$addl_search";
}

my ($EXTRALIBS) = do
{
  local $SIG{__WARN__} = sub { };
  ExtUtils::Liblist->ext("-l_lib_test_$$");
};

sub is_lib
{
  my $lib = shift;

  my ($extra) = ExtUtils::Liblist->ext("$addl_search -l$lib");
  $extra =~ s/\Q$EXTRALIBS//;

  return !!$extra;
}

my $wgpu = 'wgpu_native';
if ( !is_lib($wgpu) )
{
  die "Unable to locate $wgpu\n";
}

my @libs;
my @defines;

if ( is_lib('X11') )
{
  push @libs,    '-lX11';
  push @defines, '-DHAS_X11';
}

$WriteMakefileArgs{LIBS}   = "$addl_search -l$wgpu @libs";
$WriteMakefileArgs{DEFINE} = "@defines";

my %FallbackPrereqs = ( "Test::More" => "0.96" );

unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } )
{
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
    unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);
