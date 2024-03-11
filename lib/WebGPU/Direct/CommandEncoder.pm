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

=head3 BeginComputePass

=over

=item * Return Type

=over

=item * WGPUComputePassEncoder

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::ComputePassDescriptor|WebGPU::Direct::Types/WebGPU::Direct::ComputePassDescriptor>)

=back

=back

=head3 BeginRenderPass

=over

=item * Return Type

=over

=item * WGPURenderPassEncoder

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::RenderPassDescriptor|WebGPU::Direct::Types/WebGPU::Direct::RenderPassDescriptor>)

=back

=back

=head3 ClearBuffer

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * buffer (L<WebGPU::Direct::Buffer>)

=item * offset (uint64_t)

=item * size (uint64_t)

=back

=back

=head3 CopyBufferToBuffer

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * source (L<WebGPU::Direct::Buffer>)

=item * sourceOffset (uint64_t)

=item * destination (L<WebGPU::Direct::Buffer>)

=item * destinationOffset (uint64_t)

=item * size (uint64_t)

=back

=back

=head3 CopyBufferToTexture

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * source (L<WebGPU::Direct::ImageCopyBuffer|WebGPU::Direct::Types/WebGPU::Direct::ImageCopyBuffer>)

=item * destination (L<WebGPU::Direct::ImageCopyTexture|WebGPU::Direct::Types/WebGPU::Direct::ImageCopyTexture>)

=item * copySize (L<WebGPU::Direct::Extent3D|WebGPU::Direct::Types/WebGPU::Direct::Extent3D>)

=back

=back

=head3 CopyTextureToBuffer

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * source (L<WebGPU::Direct::ImageCopyTexture|WebGPU::Direct::Types/WebGPU::Direct::ImageCopyTexture>)

=item * destination (L<WebGPU::Direct::ImageCopyBuffer|WebGPU::Direct::Types/WebGPU::Direct::ImageCopyBuffer>)

=item * copySize (L<WebGPU::Direct::Extent3D|WebGPU::Direct::Types/WebGPU::Direct::Extent3D>)

=back

=back

=head3 CopyTextureToTexture

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * source (L<WebGPU::Direct::ImageCopyTexture|WebGPU::Direct::Types/WebGPU::Direct::ImageCopyTexture>)

=item * destination (L<WebGPU::Direct::ImageCopyTexture|WebGPU::Direct::Types/WebGPU::Direct::ImageCopyTexture>)

=item * copySize (L<WebGPU::Direct::Extent3D|WebGPU::Direct::Types/WebGPU::Direct::Extent3D>)

=back

=back

=head3 Finish

=over

=item * Return Type

=over

=item * WGPUCommandBuffer

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::CommandBufferDescriptor|WebGPU::Direct::Types/WebGPU::Direct::CommandBufferDescriptor>)

=back

=back

=head3 InsertDebugMarker

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * markerLabel (L<WebGPU::Direct::char>)

=back

=back

=head3 PopDebugGroup

=over

=item * Return Type

=over

=item * void

=back

=back

=head3 PushDebugGroup

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * groupLabel (L<WebGPU::Direct::char>)

=back

=back

=head3 ResolveQuerySet

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * querySet (L<WebGPU::Direct::QuerySet>)

=item * firstQuery (uint32_t)

=item * queryCount (uint32_t)

=item * destination (L<WebGPU::Direct::Buffer>)

=item * destinationOffset (uint64_t)

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

=head3 WriteTimestamp

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * querySet (L<WebGPU::Direct::QuerySet>)

=item * queryIndex (uint32_t)

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

