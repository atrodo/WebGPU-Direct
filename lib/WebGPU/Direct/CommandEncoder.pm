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
__END__
=pod

=encoding UTF-8

=head1 NAME

WebGPU::Direct::CommandEncoder

=head2 Methods

=head3 BeginComputePass (WGPUComputePassEncoder)

=over

=item Arguments

=over

=item descriptor (L<WebGPU::Direct::ComputePassDescriptor|WebGPU::Direct::Types/WebGPU::Direct::ComputePassDescriptor>)

=back

=back

=head3 BeginRenderPass (WGPURenderPassEncoder)

=over

=item Arguments

=over

=item descriptor (L<WebGPU::Direct::RenderPassDescriptor|WebGPU::Direct::Types/WebGPU::Direct::RenderPassDescriptor>)

=back

=back

=head3 ClearBuffer (void)

=over

=item Arguments

=over

=item buffer (L<WebGPU::Direct::Buffer>)

=item offset (uint64_t)

=item size (uint64_t)

=back

=back

=head3 CopyBufferToBuffer (void)

=over

=item Arguments

=over

=item source (L<WebGPU::Direct::Buffer>)

=item sourceOffset (uint64_t)

=item destination (L<WebGPU::Direct::Buffer>)

=item destinationOffset (uint64_t)

=item size (uint64_t)

=back

=back

=head3 CopyBufferToTexture (void)

=over

=item Arguments

=over

=item source (L<WebGPU::Direct::ImageCopyBuffer|WebGPU::Direct::Types/WebGPU::Direct::ImageCopyBuffer>)

=item destination (L<WebGPU::Direct::ImageCopyTexture|WebGPU::Direct::Types/WebGPU::Direct::ImageCopyTexture>)

=item copySize (L<WebGPU::Direct::Extent3D|WebGPU::Direct::Types/WebGPU::Direct::Extent3D>)

=back

=back

=head3 CopyTextureToBuffer (void)

=over

=item Arguments

=over

=item source (L<WebGPU::Direct::ImageCopyTexture|WebGPU::Direct::Types/WebGPU::Direct::ImageCopyTexture>)

=item destination (L<WebGPU::Direct::ImageCopyBuffer|WebGPU::Direct::Types/WebGPU::Direct::ImageCopyBuffer>)

=item copySize (L<WebGPU::Direct::Extent3D|WebGPU::Direct::Types/WebGPU::Direct::Extent3D>)

=back

=back

=head3 CopyTextureToTexture (void)

=over

=item Arguments

=over

=item source (L<WebGPU::Direct::ImageCopyTexture|WebGPU::Direct::Types/WebGPU::Direct::ImageCopyTexture>)

=item destination (L<WebGPU::Direct::ImageCopyTexture|WebGPU::Direct::Types/WebGPU::Direct::ImageCopyTexture>)

=item copySize (L<WebGPU::Direct::Extent3D|WebGPU::Direct::Types/WebGPU::Direct::Extent3D>)

=back

=back

=head3 Finish (WGPUCommandBuffer)

=over

=item Arguments

=over

=item descriptor (L<WebGPU::Direct::CommandBufferDescriptor|WebGPU::Direct::Types/WebGPU::Direct::CommandBufferDescriptor>)

=back

=back

=head3 InsertDebugMarker (void)

=over

=item Arguments

=over

=item markerLabel (L<WebGPU::Direct::char>)

=back

=back

=head3 PopDebugGroup (void)

=head3 PushDebugGroup (void)

=over

=item Arguments

=over

=item groupLabel (L<WebGPU::Direct::char>)

=back

=back

=head3 ResolveQuerySet (void)

=over

=item Arguments

=over

=item querySet (L<WebGPU::Direct::QuerySet>)

=item firstQuery (uint32_t)

=item queryCount (uint32_t)

=item destination (L<WebGPU::Direct::Buffer>)

=item destinationOffset (uint64_t)

=back

=back

=head3 SetLabel (void)

=over

=item Arguments

=over

=item label (L<WebGPU::Direct::char>)

=back

=back

=head3 WriteTimestamp (void)

=over

=item Arguments

=over

=item querySet (L<WebGPU::Direct::QuerySet>)

=item queryIndex (uint32_t)

=back

=back

=head3 Reference (void)

=head3 Release (void)

