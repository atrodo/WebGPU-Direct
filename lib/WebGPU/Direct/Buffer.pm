package WebGPU::Direct::Buffer
{
  use v5.30;
  use warnings;
  no warnings qw(experimental::signatures);
  use feature 'signatures';

  sub GetMappedRange (
    $self,
    $offset = 0,
    $size = $self->GetSize - $offset,
      )
  {
    return $self->_GetMappedRange($offset, $size);
  }
};

1;
