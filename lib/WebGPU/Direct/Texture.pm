package WebGPU::Direct::Texture
{
  use v5.30;
  use warnings;
  no warnings qw(experimental::signatures);
  use feature 'signatures';

  use Scalar::Util qw/blessed/;
  use Carp qw/croak/;

  sub CreateView (
    $self,
    $descriptor = {}
      )
  {
    if ( !blessed $descriptor )
    {
      my $new_descriptor = WebGPU::Direct->TextureViewDescriptor->new($descriptor);
      my $tvd            = WebGPU::Direct->TextureViewDimension;
      my $td             = WebGPU::Direct->TextureDimension;

      if ( !exists $descriptor->{Dimension} )
      {
        my $dim  = $self->GetDimension;
        my $doal = $self->GetDepthOrArrayLayers;
        if ( $dim == $td->_1D )
        {
          $new_descriptor->dimension( $tvd->_1D );
        }
        elsif ( $dim == $td->_2D && $doal == 1 )
        {
          $new_descriptor->dimension( $tvd->_2D );
        }
        elsif ( $dim == $td->_2D && $doal > 1 )
        {
          $new_descriptor->dimension( $tvd->_2DArray );
        }
        elsif ( $dim == $td->_3D )
        {
          $new_descriptor->dimension( $tvd->_3D );
        }
      }

      if ( !exists $descriptor->{ArrayLayerCount} )
      {
        my $doal        = $self->GetDepthOrArrayLayers;
        my $bal         = $new_descriptor->baseArrayLayer;
        my %ALC_default = (
          0 + $tvd->_1D       => 1,
          0 + $tvd->_2D       => 1,
          0 + $tvd->_3D       => 1,
          0 + $tvd->Cube      => 6,
          0 + $tvd->_2DArray  => $doal - $bal,
          0 + $tvd->CubeArray => $doal - $bal,
        );

        my $dim = 0 + $new_descriptor->dimension;
        $new_descriptor->arrayLayerCount( $ALC_default{$dim} );
      }

      if ( !exists $descriptor->{format} )
      {
        my $aspect = $new_descriptor->aspect;
        my $format = $self->GetFormat;

        state %depth_or_stencil = map { 0 + WebGPU::Direct->TextureFormat->$_ => 1 } qw/
            Stencil8        Depth16Unorm
            Depth24Plus     Depth24PlusStencil8
            Depth32Float    Depth32FloatStencil8
            /;

        if (
          (
               $aspect == WebGPU::Direct->TextureAspect->StencilOnly
            || $aspect == WebGPU::Direct->TextureAspect->DepthOnly
          )
          && $depth_or_stencil{ 0 + $format }
            )
        {
          croak "Do not yet have a mapping for Depth or Stencil formats";
        }
        else
        {
          $new_descriptor->format($format);
        }
      }

      if ( !exists $descriptor->{mipLevelCount} )
      {
        $new_descriptor->mipLevelCount( $self->GetMipLevelCount - $new_descriptor->baseMipLevel );
      }
      $descriptor = $new_descriptor;
    }
    return $self->_CreateView($descriptor);
  }
};

1;
__END__
=pod

=encoding UTF-8

=head1 NAME

WebGPU::Direct::Texture

=head2 Methods

=head3 CreateView

=over

=item * Return Type

=over

=item * WGPUTextureView

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::TextureViewDescriptor|WebGPU::Direct::Types/WebGPU::Direct::TextureViewDescriptor>)

=back

=back

=head3 Destroy

=over

=item * Return Type

=over

=item * void

=back

=back

=head3 GetDepthOrArrayLayers

=over

=item * Return Type

=over

=item * uint32_t

=back

=back

=head3 GetDimension

=over

=item * Return Type

=over

=item * L<WGPUTextureDimension|WebGPU::Direct::Constants/WGPUTextureDimension>

=back

=back

=head3 GetFormat

=over

=item * Return Type

=over

=item * L<WGPUTextureFormat|WebGPU::Direct::Constants/WGPUTextureFormat>

=back

=back

=head3 GetHeight

=over

=item * Return Type

=over

=item * uint32_t

=back

=back

=head3 GetMipLevelCount

=over

=item * Return Type

=over

=item * uint32_t

=back

=back

=head3 GetSampleCount

=over

=item * Return Type

=over

=item * uint32_t

=back

=back

=head3 GetUsage

=over

=item * Return Type

=over

=item * WGPUTextureUsageFlags

=back

=back

=head3 GetWidth

=over

=item * Return Type

=over

=item * uint32_t

=back

=back

=head3 SetLabel

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * label (L<WebGPU::Direct::char>)

=back

=back

=head3 Reference

=over

=item * Return Type

=over

=item * void

=back

=back

=head3 Release

=over

=item * Return Type

=over

=item * void

=back

=back

