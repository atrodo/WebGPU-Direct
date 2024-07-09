package WebGPU::Direct::Instance
{
  use v5.30;
  use warnings;
  no warnings qw(experimental::signatures);
  use feature 'signatures';

  use Carp;

  sub RequestAdapter (
    $self,
    $options  = undef,
    $callback = undef,
    $userdata = {}
      )
  {

    # If they provide a callback themselves, we will return undef
    my $adapter;

    $callback //= sub
    {
      my $status = shift;
      $adapter = shift;
      my $msg  = shift;
      my $data = shift;

      if ( $status != WebGPU::Direct::RequestAdapterStatus->Success )
      {
        warn(qq{RequestAdapter returned "$msg" ($status)"});
      }
    };

    if ( !$options || !exists $options->{compatibleSurface} )
    {
      my $pkg = __PACKAGE__;
      my $fn  = 'RequestAdapter';
      carp "$pkg: $fn: compatibleSurface not provided"
          . "\n\tThis is likely not what you want, the returned adapter may be incompataible with your surface";
    }

    $self->_RequestAdapter( $options, $callback, $userdata );

    return $adapter;
  }
};

1;
__END__
=pod

=encoding UTF-8

=head1 NAME

WebGPU::Direct::Instance

=head2 Methods

=head3 CreateSurface

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::Surface>

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::SurfaceDescriptor|WebGPU::Direct::Types/WebGPU::Direct::SurfaceDescriptor>)

=back

=back

=head3 ProcessEvents

=head3 RequestAdapter

=over

=item * Arguments

=over

=item * options (L<WebGPU::Direct::RequestAdapterOptions|WebGPU::Direct::Types/WebGPU::Direct::RequestAdapterOptions>) Default: undef

=item * callback (WebGPU::Direct::RequestAdapterCallback (Code reference)) Default: undef

=item * userdata (Scalar (void *)) Default: {}

=back

=back

=head3 Reference

=head3 Release

