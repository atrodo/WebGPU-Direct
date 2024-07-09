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

=head3 Configure

=over

=item * Arguments

=over

=item * config (L<WebGPU::Direct::SurfaceConfiguration|WebGPU::Direct::Types/WebGPU::Direct::SurfaceConfiguration>)

=back

=back

=head3 GetCapabilities

=over

=item * Arguments

=over

=item * adapter (L<WebGPU::Direct::Adapter>)

=item * capabilities (L<WebGPU::Direct::SurfaceCapabilities|WebGPU::Direct::Types/WebGPU::Direct::SurfaceCapabilities>)

=back

=back

=head3 GetCurrentTexture

=over

=item * Arguments

=over

=item * surfaceTexture (L<WebGPU::Direct::SurfaceTexture|WebGPU::Direct::Types/WebGPU::Direct::SurfaceTexture>) Default: undef

=back

=back

=head3 GetPreferredFormat

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::TextureFormat|WebGPU::Direct::Constants/WebGPU::Direct::TextureFormat>

=back

=item * Arguments

=over

=item * adapter (L<WebGPU::Direct::Adapter>)

=back

=back

=head3 Present

=head3 Unconfigure

=head3 Reference

=head3 Release

