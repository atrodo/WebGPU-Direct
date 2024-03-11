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

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * queryIndex (uint32_t)

=back

=back

=head3 Draw

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * vertexCount (uint32_t)

=item * instanceCount (uint32_t)

=item * firstVertex (uint32_t)

=item * firstInstance (uint32_t)

=back

=back

=head3 DrawIndexed

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * indexCount (uint32_t)

=item * instanceCount (uint32_t)

=item * firstIndex (uint32_t)

=item * baseVertex (int32_t)

=item * firstInstance (uint32_t)

=back

=back

=head3 DrawIndexedIndirect

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * indirectBuffer (L<WebGPU::Direct::Buffer>)

=item * indirectOffset (uint64_t)

=back

=back

=head3 DrawIndirect

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * indirectBuffer (L<WebGPU::Direct::Buffer>)

=item * indirectOffset (uint64_t)

=back

=back

=head3 End

=over

=item * Return Type

=over

=item * void

=back

=back

=head3 EndOcclusionQuery

=over

=item * Return Type

=over

=item * void

=back

=back

=head3 ExecuteBundles

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * bundleCount (size_t)

=item * bundles (L<WebGPU::Direct::RenderBundle>)

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

=head3 SetBindGroup

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * groupIndex (uint32_t)

=item * group (L<WebGPU::Direct::BindGroup>)

=item * dynamicOffsetCount (size_t)

=item * dynamicOffsets (L<WebGPU::Direct::uint32_t>)

=back

=back

=head3 SetBlendConstant

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * color (L<WebGPU::Direct::Color|WebGPU::Direct::Types/WebGPU::Direct::Color>)

=back

=back

=head3 SetIndexBuffer

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * buffer (L<WebGPU::Direct::Buffer>)

=item * format (L<WGPUIndexFormat|WebGPU::Direct::Constants/WGPUIndexFormat>)

=item * offset (uint64_t)

=item * size (uint64_t)

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

=head3 SetPipeline

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * pipeline (L<WebGPU::Direct::RenderPipeline>)

=back

=back

=head3 SetScissorRect

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * x (uint32_t)

=item * y (uint32_t)

=item * width (uint32_t)

=item * height (uint32_t)

=back

=back

=head3 SetStencilReference

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * reference (uint32_t)

=back

=back

=head3 SetVertexBuffer

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * slot (uint32_t)

=item * buffer (L<WebGPU::Direct::Buffer>)

=item * offset (uint64_t)

=item * size (uint64_t)

=back

=back

=head3 SetViewport

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * x (float)

=item * y (float)

=item * width (float)

=item * height (float)

=item * minDepth (float)

=item * maxDepth (float)

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

