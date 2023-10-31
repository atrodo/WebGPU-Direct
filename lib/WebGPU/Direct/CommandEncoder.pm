package WebGPU::Direct::CommandEncoder
{
  use v5.30;
  use warnings;
  no warnings qw(experimental::signatures);
  use feature 'signatures';

  use Scalar::Util qw/blessed/;
  use Carp qw/croak/;

  sub Finish (
    $self,
    $descriptor = {}
      )
  {
    return $self->_Finish($descriptor);
  }
};

1;
