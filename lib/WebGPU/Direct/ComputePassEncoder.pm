package WebGPU::Direct::ComputePassEncoder
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

WebGPU::Direct::ComputePassEncoder

=head2 Methods

=head3 DispatchWorkgroups

=over

=item * Arguments

=over

=item * workgroupCountX (uint32_t)

=item * workgroupCountY (uint32_t)

=item * workgroupCountZ (uint32_t)

=back

=back

=head3 DispatchWorkgroupsIndirect

=over

=item * Arguments

=over

=item * indirectBuffer (L<WebGPU::Direct::Buffer>)

=item * indirectOffset (uint64_t)

=back

=back

=head3 End

=head3 InsertDebugMarker

=over

=item * Arguments

=over

=item * markerLabel (L<WebGPU::Direct::char>)

=back

=back

=head3 PopDebugGroup

=head3 PushDebugGroup

=over

=item * Arguments

=over

=item * groupLabel (L<WebGPU::Direct::char>)

=back

=back

=head3 SetBindGroup

=over

=item * Arguments

=over

=item * groupIndex (uint32_t)

=item * group (L<WebGPU::Direct::BindGroup>)

=item * dynamicOffsetCount (size_t)

=item * dynamicOffsets (L<WebGPU::Direct::uint32_t>)

=back

=back

=head3 SetLabel

=over

=item * Arguments

=over

=item * label (L<WebGPU::Direct::char>)

=back

=back

=head3 SetPipeline

=over

=item * Arguments

=over

=item * pipeline (L<WebGPU::Direct::ComputePipeline>)

=back

=back

=head3 Reference

=head3 Release

