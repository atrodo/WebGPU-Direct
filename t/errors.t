use strict;
use Test::More;

use WebGPU::Direct;

my $wgpu = WebGPU::Direct->new;

my $adapter = $wgpu->RequestAdapter( { compatibleSurface => undef } );
my $device  = $adapter->RequestDevice;

my $cube = {};

# Incorrectly create a buffer to force an error
{
  local $@;
  my $buffer = eval {
    $device->CreateBuffer(
      {
        size             => 16,
        usage            => 0,
        mappedAtCreation => 1,
      }
    );
  };

  my $error = $@;

  is( $buffer, undef, 'Creating the buffer failed' );
  isnt( $error, undef, 'There was an error' ) and diag( explain "$error" );
  is( ref $error, 'WebGPU::Direct::Error', 'Error produced is an Error object' );
  like( $error, qr/buffer/i, 'The error was about buffer' );
  like( $error, qr/usage/i,  'The error was about the usage field' );
  diag(explain $error);
}

done_testing;
