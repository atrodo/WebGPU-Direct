package WebGPU::Direct::RenderBundleEncoder
{
  use v5.30;
  use warnings;
  no warnings qw(experimental::signatures);
  use feature 'signatures';
};

1;
__END__
=pod

=encoding UTF-8

=head1 NAME

WebGPU::Direct::RenderBundleEncoder

=head2 Methods

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

=head3 Finish

=over

=item * Return Type

=over

=item * WGPURenderBundle

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::RenderBundleDescriptor|WebGPU::Direct::Types/WebGPU::Direct::RenderBundleDescriptor>)

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

