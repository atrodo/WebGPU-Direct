package WebGPU::Direct::Buffer
{
  use v5.30;
  use warnings;
  no warnings qw(experimental::signatures);
  use feature 'signatures';
  use Carp;

  sub GetConstMappedRange (
    $self,
    $offset = 0,
    $size   = $self->GetSize - $offset,
      )
  {
    return $self->_GetConstMappedRange( $offset, $size );
  }

  sub GetMappedRange (
    $self,
    $offset = 0,
    $size   = $self->GetSize - $offset,
      )
  {
    return $self->_GetMappedRange( $offset, $size );
  }

  sub MapAsync (
    $self,
    $mode,
    $offset   = 0,
    $size     = $self->GetSize - $offset,
    $callback = '',
    $userdata = {},
      )
  {
    croak "callback must be provided"
        if !$callback;

    return $self->_MapAsync( $mode, $offset, $size, $callback, $userdata );
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

=item * Return Type

=over

=item * Scalar (void *)

=back

=item * Arguments

=over

=item * offset (Integer (size_t)) Default: 0

=item * size (Integer (size_t)) Default: GetSize() - offset

=back

=back

=head3 GetMapState

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::BufferMapState|WebGPU::Direct::Constants/WebGPU::Direct::BufferMapState>

=back

=back

=head3 GetMappedRange

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::MappedBuffer>

=back

=item * Arguments

=over

=item * offset (Integer (size_t)) Default: 0

=item * size (Integer (size_t)) Default: GetSize() - offset

=back

=back

=head3 GetSize

=over

=item * Return Type

=over

=item * Unsigned 64bit (uint64_t)

=back

=back

=head3 GetUsage

=over

=item * Return Type

=over

=item * L<WGPUBufferUsageFlags|WebGPU::Direct::Constants/WebGPU::Direct::BufferUsage>

=back

=back

=head3 MapAsync

=over

=item * Arguments

=over

=item * mode (L<WGPUMapModeFlags|WebGPU::Direct::Constants/WebGPU::Direct::MapMode>)

=item * offset (Integer (size_t)) Default: 0

=item * size (Integer (size_t)) Default: GetSize() - offset

=item * callback (WebGPU::Direct::BufferMapCallback (Code reference))

=item * userdata (Scalar (void *)) Default: {}

=back

=back

=head3 SetLabel

=over

=item * Arguments

=over

=item * label (String (char *))

=back

=back

=head3 Unmap

=head3 Reference

=head3 Release

