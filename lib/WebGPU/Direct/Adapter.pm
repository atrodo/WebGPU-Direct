package WebGPU::Direct::Adapter
{
  use v5.30;
  use warnings;
  no warnings qw(experimental::signatures);
  use feature 'signatures';

  use WebGPU::Direct::Error qw/webgpu_die/;

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
      my $supported_limits = WebGPU::Direct->SupportedLimits->new;

      $self->GetLimits($supported_limits);
      my $limits = $supported_limits->limits;

      my $req_limits
          = WebGPU::Direct->RequiredLimits->new( { limits => $limits } );
      $descriptor
          = WebGPU::Direct->DeviceDescriptor->new( requiredLimits => $req_limits );
    }

    $self->_RequestDevice( $descriptor, $callback, $userdata );

    if ($device)
    {
      my $croak = sub
      {
        my $type     = shift;
        my $message  = shift;
        my $userdata = shift;
        webgpu_die( $type, $message );
      };
      $device->SetUncapturedErrorCallback( $croak, {} );
    }

    return $device;
  }
};

1;
__END__
=pod

=encoding UTF-8

=head1 NAME

WebGPU::Direct::Adapter

=head2 Methods

=head3 EnumerateFeatures

=over

=item * Return Type

=over

=item * Integer (size_t)

=back

=item * Arguments

=over

=item * features (L<WebGPU::Direct::FeatureName|WebGPU::Direct::Constants/WebGPU::Direct::FeatureName>)

=back

=back

=head3 GetLimits

=over

=item * Return Type

=over

=item * Boolean (WGPUBool)

=back

=item * Arguments

=over

=item * limits (L<WebGPU::Direct::SupportedLimits|WebGPU::Direct::Types/WebGPU::Direct::SupportedLimits>)

=back

=back

=head3 GetProperties

=over

=item * Arguments

=over

=item * properties (L<WebGPU::Direct::AdapterProperties|WebGPU::Direct::Types/WebGPU::Direct::AdapterProperties>)

=back

=back

=head3 HasFeature

=over

=item * Return Type

=over

=item * Boolean (WGPUBool)

=back

=item * Arguments

=over

=item * feature (L<WebGPU::Direct::FeatureName|WebGPU::Direct::Constants/WebGPU::Direct::FeatureName>)

=back

=back

=head3 RequestDevice

=over

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::DeviceDescriptor|WebGPU::Direct::Types/WebGPU::Direct::DeviceDescriptor>) Default: undef

=item * callback (WebGPU::Direct::RequestDeviceCallback (Code reference)) Default: undef

=item * userdata (Scalar (void *)) Default: {}

=back

=back

=head3 Reference

=head3 Release

