package WebGPU::Direct::Surface
{
  use v5.30;
  use warnings;
  no warnings qw(experimental::signatures);
  use feature 'signatures';

  sub GetCurrentTexture (
    $self,
    $surfaceTexture = undef,
      )
  {
    if ( !defined $surfaceTexture )
    {
      $surfaceTexture = WebGPU::Direct->SurfaceTexture->new;
    }

    $self->_GetCurrentTexture($surfaceTexture);

    return $surfaceTexture;
  }
};

1;
