package WebGPU::Direct::Surface
{
  use v5.30;
  use warnings;
  no warnings qw(experimental::signatures);
  use feature 'signatures';

  sub GetCurrentTexture (
    $self,
    $surfaceTexture = undef,
      )
  {
    if ( !defined $surfaceTexture )
    {
      $surfaceTexture = WebGPU::Direct->SurfaceTexture->new;
    }

    $self->_GetCurrentTexture($surfaceTexture);

    return $surfaceTexture;
  }
};

1;
__END__
=pod

=encoding UTF-8

=head1 NAME

WebGPU::Direct::Surface

=head2 Methods

=head3 Configure (void)

=over

=item Arguments

=over

=item config (L<WebGPU::Direct::SurfaceConfiguration|WebGPU::Direct::Types/WebGPU::Direct::SurfaceConfiguration>)

=back

=back

=head3 GetCapabilities (void)

=over

=item Arguments

=over

=item adapter (L<WebGPU::Direct::Adapter>)

=item capabilities (L<WebGPU::Direct::SurfaceCapabilities|WebGPU::Direct::Types/WebGPU::Direct::SurfaceCapabilities>)

=back

=back

=head3 GetCurrentTexture (void)

=over

=item Arguments

=over

=item surfaceTexture (L<WebGPU::Direct::SurfaceTexture|WebGPU::Direct::Types/WebGPU::Direct::SurfaceTexture>)

=back

=back

=head3 GetPreferredFormat (L<WGPUTextureFormat|WebGPU::Direct::Constants/WGPUTextureFormat>)

=over

=item Arguments

=over

=item adapter (L<WebGPU::Direct::Adapter>)

=back

=back

=head3 Present (void)

=head3 Unconfigure (void)

=head3 Reference (void)

=head3 Release (void)

