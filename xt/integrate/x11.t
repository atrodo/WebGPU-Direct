use strict;
use Test::More;
use WebGPU::Direct;

if ( !WebGPU::Direct::XS::HAS_X11 )
{
  plan skip_all => 'Test requires working X11';
}

use FindBin qw/$Bin/;
require "$Bin/show_frames.pm";

subtest 'Example X11' => sub
{
  my $xw     = 10;
  my $yh     = 10;
  my $window = WebGPU::Direct->new_window_x11( $xw, $yh );

  test_frames( $window, $xw, $yh );
};

done_testing;
