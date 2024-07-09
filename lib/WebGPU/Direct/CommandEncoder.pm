package WebGPU::Direct::CommandEncoder
{
  use v5.30;
  use warnings;
  no warnings qw(experimental::signatures);
  use feature 'signatures';

  use Scalar::Util qw/blessed/;
  use Carp qw/croak/;

  sub BeginComputePass (
    $self,
    $descriptor = {}
      )
  {
    return $self->_BeginComputePass($descriptor);
  }

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

=item * L<WebGPU::Direct::ComputePassEncoder>

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::ComputePassDescriptor|WebGPU::Direct::Types/WebGPU::Direct::ComputePassDescriptor>) Default: {}

=back

=back

=head3 BeginRenderPass

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::RenderPassEncoder>

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::RenderPassDescriptor|WebGPU::Direct::Types/WebGPU::Direct::RenderPassDescriptor>)

=back

=back

=head3 ClearBuffer

=over

=item * Arguments

=over

=item * buffer (L<WebGPU::Direct::Buffer>)

=item * offset (Unsigned 64bit (uint64_t))

=item * size (Unsigned 64bit (uint64_t))

=back

=back

=head3 CopyBufferToBuffer

=over

=item * Arguments

=over

=item * source (L<WebGPU::Direct::Buffer>)

=item * sourceOffset (Unsigned 64bit (uint64_t))

=item * destination (L<WebGPU::Direct::Buffer>)

=item * destinationOffset (Unsigned 64bit (uint64_t))

=item * size (Unsigned 64bit (uint64_t))

=back

=back

=head3 CopyBufferToTexture

=over

=item * Arguments

=over

=item * source (L<WebGPU::Direct::ImageCopyBuffer|WebGPU::Direct::Types/WebGPU::Direct::ImageCopyBuffer>)

=item * destination (L<WebGPU::Direct::ImageCopyTexture|WebGPU::Direct::Types/WebGPU::Direct::ImageCopyTexture>)

=item * copySize (L<WebGPU::Direct::Extent3D|WebGPU::Direct::Types/WebGPU::Direct::Extent3D>)

=back

=back

=head3 CopyTextureToBuffer

=over

=item * Arguments

=over

=item * source (L<WebGPU::Direct::ImageCopyTexture|WebGPU::Direct::Types/WebGPU::Direct::ImageCopyTexture>)

=item * destination (L<WebGPU::Direct::ImageCopyBuffer|WebGPU::Direct::Types/WebGPU::Direct::ImageCopyBuffer>)

=item * copySize (L<WebGPU::Direct::Extent3D|WebGPU::Direct::Types/WebGPU::Direct::Extent3D>)

=back

=back

=head3 CopyTextureToTexture

=over

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

=item * L<WebGPU::Direct::CommandBuffer>

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::CommandBufferDescriptor|WebGPU::Direct::Types/WebGPU::Direct::CommandBufferDescriptor>) Default: {}

=back

=back

=head3 InsertDebugMarker

=over

=item * Arguments

=over

=item * markerLabel (String (char *))

=back

=back

=head3 PopDebugGroup

=head3 PushDebugGroup

=over

=item * Arguments

=over

=item * groupLabel (String (char *))

=back

=back

=head3 ResolveQuerySet

=over

=item * Arguments

=over

=item * querySet (L<WebGPU::Direct::QuerySet>)

=item * firstQuery (Unsigned 32bit (uint32_t))

=item * queryCount (Unsigned 32bit (uint32_t))

=item * destination (L<WebGPU::Direct::Buffer>)

=item * destinationOffset (Unsigned 64bit (uint64_t))

=back

=back

=head3 SetLabel

=over

=item * Arguments

=over

=item * label (String (char *))

=back

=back

=head3 WriteTimestamp

=over

=item * Arguments

=over

=item * querySet (L<WebGPU::Direct::QuerySet>)

=item * queryIndex (Unsigned 32bit (uint32_t))

=back

=back

=head3 Reference

=head3 Release

