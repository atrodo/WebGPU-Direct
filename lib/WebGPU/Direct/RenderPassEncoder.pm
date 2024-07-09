package WebGPU::Direct::RenderPassEncoder
{
  use v5.30;
  use warnings;
  no warnings qw(experimental::signatures);
  use feature 'signatures';

  use Scalar::Util qw/blessed/;
  use Carp qw/croak/;

  sub SetVertexBuffer (
    $self,
    $slot,
    $buffer,
    $offset = 0,
    $size   = $buffer->GetSize - $offset,
      )
  {
    return $self->_SetVertexBuffer( $slot, $buffer, $offset, $size );
  }
};

1;
__END__
=pod

=encoding UTF-8

=head1 NAME

WebGPU::Direct::RenderPassEncoder

=head2 Methods

=head3 BeginOcclusionQuery

=over

=item * Arguments

=over

=item * queryIndex (Unsigned 32bit (uint32_t))

=back

=back

=head3 Draw

=over

=item * Arguments

=over

=item * vertexCount (Unsigned 32bit (uint32_t))

=item * instanceCount (Unsigned 32bit (uint32_t)) Default: 1

=item * firstVertex (Unsigned 32bit (uint32_t)) Default: 0

=item * firstInstance (Unsigned 32bit (uint32_t)) Default: 0

=back

=back

=head3 DrawIndexed

=over

=item * Arguments

=over

=item * indexCount (Unsigned 32bit (uint32_t))

=item * instanceCount (Unsigned 32bit (uint32_t))

=item * firstIndex (Unsigned 32bit (uint32_t))

=item * baseVertex (Signed 32bit (int32_t))

=item * firstInstance (Unsigned 32bit (uint32_t))

=back

=back

=head3 DrawIndexedIndirect

=over

=item * Arguments

=over

=item * indirectBuffer (L<WebGPU::Direct::Buffer>)

=item * indirectOffset (Unsigned 64bit (uint64_t))

=back

=back

=head3 DrawIndirect

=over

=item * Arguments

=over

=item * indirectBuffer (L<WebGPU::Direct::Buffer>)

=item * indirectOffset (Unsigned 64bit (uint64_t))

=back

=back

=head3 End

=head3 EndOcclusionQuery

=head3 ExecuteBundles

=over

=item * Arguments

=over

=item * bundleCount (Integer (size_t))

=item * bundles (L<WebGPU::Direct::RenderBundle>)

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

=head3 SetBindGroup

=over

=item * Arguments

=over

=item * groupIndex (Unsigned 32bit (uint32_t))

=item * group (L<WebGPU::Direct::BindGroup>)

=item * dynamicOffsetCount (Integer (size_t))

=item * dynamicOffsets (Unsigned 32bit (uint32_t))

=back

=back

=head3 SetBlendConstant

=over

=item * Arguments

=over

=item * color (L<WebGPU::Direct::Color|WebGPU::Direct::Types/WebGPU::Direct::Color>)

=back

=back

=head3 SetIndexBuffer

=over

=item * Arguments

=over

=item * buffer (L<WebGPU::Direct::Buffer>)

=item * format (L<WebGPU::Direct::IndexFormat|WebGPU::Direct::Constants/WebGPU::Direct::IndexFormat>)

=item * offset (Unsigned 64bit (uint64_t))

=item * size (Unsigned 64bit (uint64_t))

=back

=back

=head3 SetLabel

=over

=item * Arguments

=over

=item * label (String (char *))

=back

=back

=head3 SetPipeline

=over

=item * Arguments

=over

=item * pipeline (L<WebGPU::Direct::RenderPipeline>)

=back

=back

=head3 SetScissorRect

=over

=item * Arguments

=over

=item * x (Unsigned 32bit (uint32_t))

=item * y (Unsigned 32bit (uint32_t))

=item * width (Unsigned 32bit (uint32_t))

=item * height (Unsigned 32bit (uint32_t))

=back

=back

=head3 SetStencilReference

=over

=item * Arguments

=over

=item * reference (Unsigned 32bit (uint32_t))

=back

=back

=head3 SetVertexBuffer

=over

=item * Arguments

=over

=item * slot (Unsigned 32bit (uint32_t))

=item * buffer (L<WebGPU::Direct::Buffer>)

=item * offset (Unsigned 64bit (uint64_t)) Default: 0

=item * size (Unsigned 64bit (uint64_t)) Default: GetSize() - offset

=back

=back

=head3 SetViewport

=over

=item * Arguments

=over

=item * x (Float (float))

=item * y (Float (float))

=item * width (Float (float))

=item * height (Float (float))

=item * minDepth (Float (float))

=item * maxDepth (Float (float))

=back

=back

=head3 Reference

=head3 Release

