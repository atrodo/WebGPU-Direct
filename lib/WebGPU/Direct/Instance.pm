package WebGPU::Direct::Instance
{
  use v5.30;
  use warnings;
  no warnings qw(experimental::signatures);
  use feature 'signatures';

  use Carp;

  sub requestAdapter (
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

      if ( $status != WebGPU::Direct::RequestAdapterStatus->success )
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

    $self->_requestAdapter( $options, $callback, $userdata );

    return $adapter;
  }
};

1;
__END__
=pod

=encoding UTF-8

=head1 NAME

WebGPU::Direct::Instance

=head2 Methods

=head3 createSurface

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::Surface>

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::SurfaceDescriptor|WebGPU::Direct::Types/WebGPU::Direct::SurfaceDescriptor>)

=back

=back

=head3 getWGSLLanguageFeatures

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::Status|WebGPU::Direct::Constants/WebGPU::Direct::Status>

=back

=item * Arguments

=over

=item * features (L<WebGPU::Direct::SupportedWGSLLanguageFeatures|WebGPU::Direct::Types/WebGPU::Direct::SupportedWGSLLanguageFeatures>)

=back

=back

=head3 hasWGSLLanguageFeature

=over

=item * Return Type

=over

=item * Boolean (WGPUBool)

=back

=item * Arguments

=over

=item * feature (L<WebGPU::Direct::WGSLLanguageFeatureName|WebGPU::Direct::Constants/WebGPU::Direct::WGSLLanguageFeatureName>)

=back

=back

=head3 processEvents

=head3 requestAdapter

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::Future|WebGPU::Direct::Types/WebGPU::Direct::Future>

=back

=item * Arguments

=over

=item * options (L<WebGPU::Direct::RequestAdapterOptions|WebGPU::Direct::Types/WebGPU::Direct::RequestAdapterOptions>) Default: undef

=item * callbackInfo (L<WebGPU::Direct::RequestAdapterCallbackInfo|WebGPU::Direct::Types/WebGPU::Direct::RequestAdapterCallbackInfo>)

=back

=back

=head3 waitAny

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::WaitStatus|WebGPU::Direct::Constants/WebGPU::Direct::WaitStatus>

=back

=item * Arguments

=over

=item * futureCount (Integer (size_t))

=item * futures (L<WebGPU::Direct::FutureWaitInfo|WebGPU::Direct::Types/WebGPU::Direct::FutureWaitInfo>)

=item * timeoutNS (Unsigned 64bit (uint64_t))

=back

=back

=head3 addRef

=head3 release

