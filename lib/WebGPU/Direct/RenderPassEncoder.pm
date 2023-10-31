package WebGPU::Direct::RenderPassEncoder
{
  use v5.30;
  use warnings;
  no warnings qw(experimental::signatures);
  use feature 'signatures';

  use Scalar::Util qw/blessed/;
  use Carp qw/croak/;

  sub SetVertexBuffer (
    $self,
    $slot,
    $buffer,
    $offset = 0,
    $size   = $buffer->GetSize - $offset,
      )
  {
    return $self->_SetVertexBuffer( $slot, $buffer, $offset, $size );
  }
};

1;
