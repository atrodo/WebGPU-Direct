package WebGPU::Direct::Instance
{
  use v5.30;
  use warnings;
  no warnings qw(experimental::signatures);
  use feature 'signatures';

  use Carp;

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

    if ( !$options || !exists $options->{compatibleSurface} )
    {
      my $pkg = __PACKAGE__;
      my $fn  = 'RequestAdapter';
      carp "$pkg: $fn: compatibleSurface not provided"
          . "\n\tThis is likely not what you want, the returned adapter may be incompataible with your surface";
    }

    $self->_RequestAdapter( $options, $callback, $userdata );

    return $adapter;
  }
};

1;
