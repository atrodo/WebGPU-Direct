package WebGPU::Direct::Queue
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

WebGPU::Direct::Queue

=head2 Methods

=head3 OnSubmittedWorkDone

=over

=item * Arguments

=over

=item * callback (L<WebGPU::Direct::QueueWorkDoneCallback>)

=item * userdata (Scalar (void *))

=back

=back

=head3 SetLabel

=over

=item * Arguments

=over

=item * label (String (char *))

=back

=back

=head3 Submit

=over

=item * Arguments

=over

=item * commandCount (Integer (size_t))

=item * commands (L<WebGPU::Direct::CommandBuffer>)

=back

=back

=head3 WriteBuffer

=over

=item * Arguments

=over

=item * buffer (L<WebGPU::Direct::Buffer>)

=item * bufferOffset (Unsigned 64bit (uint64_t))

=item * data (Scalar (void *))

=item * size (Integer (size_t))

=back

=back

=head3 WriteTexture

=over

=item * Arguments

=over

=item * destination (L<WebGPU::Direct::ImageCopyTexture|WebGPU::Direct::Types/WebGPU::Direct::ImageCopyTexture>)

=item * data (Scalar (void *))

=item * dataSize (Integer (size_t))

=item * dataLayout (L<WebGPU::Direct::TextureDataLayout|WebGPU::Direct::Types/WebGPU::Direct::TextureDataLayout>)

=item * writeSize (L<WebGPU::Direct::Extent3D|WebGPU::Direct::Types/WebGPU::Direct::Extent3D>)

=back

=back

=head3 Reference

=head3 Release

