package WebGPU::Direct::Buffer
{
  use v5.30;
  use warnings;
  no warnings qw(experimental::signatures);
  use feature 'signatures';

  sub GetMappedRange (
    $self,
    $offset = 0,
    $size = $self->GetSize - $offset,
      )
  {
    return $self->_GetMappedRange($offset, $size);
  }
};

1;
__END__
=pod

=encoding UTF-8

=head1 NAME

WebGPU::Direct::Buffer

=head2 Methods

=head3 Destroy (void)

=head3 GetConstMappedRange (void)

=over

=item Arguments

=over

=item offset (size_t)

=item size (size_t)

=back

=back

=head3 GetMapState (L<WGPUBufferMapState|WebGPU::Direct::Constants/WGPUBufferMapState>)

=head3 GetMappedRange (void)

=over

=item Arguments

=over

=item offset (size_t)

=item size (size_t)

=back

=back

=head3 GetSize (uint64_t)

=head3 GetUsage (WGPUBufferUsageFlags)

=head3 MapAsync (void)

=over

=item Arguments

=over

=item mode (WGPUMapModeFlags)

=item offset (size_t)

=item size (size_t)

=item callback (L<WebGPU::Direct::BufferMapCallback>)

=item userdata (L<WebGPU::Direct::void>)

=back

=back

=head3 SetLabel (void)

=over

=item Arguments

=over

=item label (L<WebGPU::Direct::char>)

=back

=back

=head3 Unmap (void)

=head3 Reference (void)

=head3 Release (void)

