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

=item * Arguments

=over

=item * vertexCount (Unsigned 32bit (uint32_t))

=item * instanceCount (Unsigned 32bit (uint32_t))

=item * firstVertex (Unsigned 32bit (uint32_t))

=item * firstInstance (Unsigned 32bit (uint32_t))

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

=head3 Finish

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::RenderBundle>

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::RenderBundleDescriptor|WebGPU::Direct::Types/WebGPU::Direct::RenderBundleDescriptor>)

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

=head3 SetIndexBuffer

=over

=item * Arguments

=over

=item * buffer (L<WebGPU::Direct::Buffer>)

=item * format (L<WGPUIndexFormat|WebGPU::Direct::Constants/WebGPU::Direct::IndexFormat>)

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

=head3 SetVertexBuffer

=over

=item * Arguments

=over

=item * slot (Unsigned 32bit (uint32_t))

=item * buffer (L<WebGPU::Direct::Buffer>)

=item * offset (Unsigned 64bit (uint64_t))

=item * size (Unsigned 64bit (uint64_t))

=back

=back

=head3 Reference

=head3 Release

