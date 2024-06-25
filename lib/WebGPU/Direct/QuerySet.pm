package WebGPU::Direct::QuerySet
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

WebGPU::Direct::QuerySet

=head2 Methods

=head3 Destroy

=head3 GetCount

=over

=item * Return Type

=over

=item * Unsigned 32bit (uint32_t)

=back

=back

=head3 GetType

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::QueryType|WebGPU::Direct::Constants/WebGPU::Direct::QueryType>

=back

=back

=head3 SetLabel

=over

=item * Arguments

=over

=item * label (String (char *))

=back

=back

=head3 Reference

=head3 Release

