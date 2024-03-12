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

=head3 Destroy

=head3 GetConstMappedRange

=over

=item * Arguments

=over

=item * offset (size_t)

=item * size (size_t)

=back

=back

=head3 GetMapState

=over

=item * Return Type

=over

=item * L<WGPUBufferMapState|WebGPU::Direct::Constants/WGPUBufferMapState>

=back

=back

=head3 GetMappedRange

=over

=item * Arguments

=over

=item * offset (size_t)

=item * size (size_t)

=back

=back

=head3 GetSize

=over

=item * Return Type

=over

=item * uint64_t

=back

=back

=head3 GetUsage

=over

=item * Return Type

=over

=item * WGPUBufferUsageFlags

=back

=back

=head3 MapAsync

=over

=item * Arguments

=over

=item * mode (WGPUMapModeFlags)

=item * offset (size_t)

=item * size (size_t)

=item * callback (L<WebGPU::Direct::BufferMapCallback>)

=item * userdata (L<WebGPU::Direct::void>)

=back

=back

=head3 SetLabel

=over

=item * Arguments

=over

=item * label (L<WebGPU::Direct::char>)

=back

=back

=head3 Unmap

=head3 Reference

=head3 Release

