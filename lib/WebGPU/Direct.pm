package WebGPU::Direct;

use strict;
use 5.008_005;
our $VERSION = '0.01';

use Carp;
use WebGPU::Direct::XS;

use Exporter 'import';

our @export_all;
our %EXPORT_TAGS = ( 'all' => [ @export_all ] );
our @EXPORT_OK = ( @export_all );
our @EXPORT = qw//;

use base 'WebGPU::Direct::Instance';

sub new
{
  my $class = shift;
  die "$class does not inherit from WebGPU::Direct\n"
      if !$class->isa("WebGPU::Direct");
  $class = ref($class) ? ref($class) : $class;

  my $ref = { ref( $_[0] ) eq ref {} ? %{ $_[0] } : @_ };
  my $result = WebGPU::Direct::XS::CreateInstance($ref);

  # Rebless into our class, which inherits from Instance
  $result = bless( $result, $class );

  return $result;
}

sub AUTOLOAD
{
  our $AUTOLOAD;
  my $sub = $AUTOLOAD;

  if ( my $new = $sub->can('new') )
  {
    no strict 'refs';
    local $@;
    eval "*$sub = sub { my \$class = shift; $sub\->new(\@_); };";
    die $@ if $@;
    goto &$sub;
  }

  my ($pkg, $fn) = $sub =~ m/(.*)::([^:]*)/;
  croak(qq[Can't locate object method "$fn" via package "$pkg"])
    if $fn ne uc $fn;

  return;
}

1;
__END__

=encoding utf-8

=head1 NAME

WebGPU::Direct - Blah blah blah

=head1 SYNOPSIS

  use WebGPU::Direct;

=head1 DESCRIPTION

WebGPU::Direct is

=head1 AUTHOR

Jon Gentle E<lt>cpan@atrodo.orgE<gt>

=head1 COPYRIGHT

Copyright 2023- Jon Gentle

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

=cut
