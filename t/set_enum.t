use v5.30;
use Test::More;
use Scalar::Util qw/refaddr/;

use WebGPU::Direct;
use Data::Dumper;

my $wgpu = WebGPU::Direct->new;

# Defaults with inline structs
{
  my $a = $wgpu->ChainedStruct->new(
    {
      sType => 'RenderPassDescriptorMaxDrawCount',
    }
  );

  cmp_ok( $a->sType, '==', $wgpu->SType->RenderPassDescriptorMaxDrawCount, 'sType was set by name' );
  cmp_ok( $a->sType, 'eq', $wgpu->SType->RenderPassDescriptorMaxDrawCount, 'Setting by name used dualvar version' );
}

{
  my $a = $wgpu->ChainedStruct->new(
    {
      sType => 'Invalid',
    }
  );

  cmp_ok( $a->sType, '==', $wgpu->SType->Invalid, 'sType was set by name' );
  cmp_ok( $a->sType, 'eq', $wgpu->SType->Invalid, 'Setting by name used dualvar version' );
}

warn Data::Dumper::Dumper($wgpu->ChainedStruct->new({ sType => -0.0 }));

done_testing;
