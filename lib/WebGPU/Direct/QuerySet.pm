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

=item * uint32_t

=back

=back

=head3 GetType

=over

=item * Return Type

=over

=item * L<WGPUQueryType|WebGPU::Direct::Constants/WGPUQueryType>

=back

=back

=head3 SetLabel

=over

=item * Arguments

=over

=item * label (L<WebGPU::Direct::char>)

=back

=back

=head3 Reference

=head3 Release

