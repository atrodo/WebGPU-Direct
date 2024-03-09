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

=head3 DispatchWorkgroups (void)

=over

=item Arguments

=over

=item workgroupCountX (uint32_t)

=item workgroupCountY (uint32_t)

=item workgroupCountZ (uint32_t)

=back

=back

=head3 DispatchWorkgroupsIndirect (void)

=over

=item Arguments

=over

=item indirectBuffer (L<WebGPU::Direct::Buffer>)

=item indirectOffset (uint64_t)

=back

=back

=head3 End (void)

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

=head3 SetBindGroup (void)

=over

=item Arguments

=over

=item groupIndex (uint32_t)

=item group (L<WebGPU::Direct::BindGroup>)

=item dynamicOffsetCount (size_t)

=item dynamicOffsets (L<WebGPU::Direct::uint32_t>)

=back

=back

=head3 SetLabel (void)

=over

=item Arguments

=over

=item label (L<WebGPU::Direct::char>)

=back

=back

=head3 SetPipeline (void)

=over

=item Arguments

=over

=item pipeline (L<WebGPU::Direct::ComputePipeline>)

=back

=back

=head3 Reference (void)

=head3 Release (void)

