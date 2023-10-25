package WebGPU::Direct::Adapter
{
  use v5.30;
  use warnings;
  no warnings qw(experimental::signatures);
  use feature 'signatures';

  sub RequestDevice (
    $self,
    $descriptor = undef,
    $callback   = undef,
    $userdata   = {}
      )
  {

    # If they provide a callback themselves, we will always return undef
    my $device;

    $callback //= sub
    {
      my $status = shift;
      $device = shift;
      my $msg  = shift;
      my $data = shift;

      if ( $status != WebGPU::Direct::RequestDeviceStatus->Success )
      {
        warn(qq{RequestDevice returned "$msg" ($status)"});
      }
    };

    if ( !defined $descriptor )
    {
      my $supported_limits = WebGPU::Direct->SupportedLimits;

      $self->GetLimits($supported_limits);
      my $limits = $supported_limits->limits;

      my $req_limits
          = WebGPU::Direct->RequiredLimits( { limits => $limits } );
      $descriptor
          = WebGPU::Direct->DeviceDescriptor( requiredLimits => $req_limits );
    }

    $self->_RequestDevice( $descriptor, $callback, $userdata );

    return $device;
  }
};

1;
