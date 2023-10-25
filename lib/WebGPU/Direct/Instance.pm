package WebGPU::Direct::Instance
{
  use v5.30;
  use warnings;
  no warnings qw(experimental::signatures);
  use feature 'signatures';

  sub RequestAdapter (
    $self,
    $options  = undef,
    $callback = undef,
    $userdata = {}
      )
  {

    # If they provide a callback themselves, we will return undef
    my $adapter;

    $callback //= sub
    {
      my $status = shift;
      $adapter = shift;
      my $msg  = shift;
      my $data = shift;

      if ( $status != WebGPU::Direct::RequestAdapterStatus->Success )
      {
        warn(qq{RequestAdapter returned "$msg" ($status)"});
      }
    };

    $self->_RequestAdapter( $options, $callback, $userdata );

    return $adapter;
  }
};

1;
