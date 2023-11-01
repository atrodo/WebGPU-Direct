package WebGPU::Direct::Device
{
  use v5.30;
  use warnings;
  no warnings qw(experimental::signatures);
  use feature 'signatures';

  use Scalar::Util qw/blessed/;
  use Carp qw/croak/;

  sub CreateShaderModule (
    $self,
    $descriptor = {},
      )
  {
    if ( !blessed $descriptor )
    {
      if ( exists $descriptor->{code} )
      {
        croak "Cannot load code when `nextInChain` also exists"
            if exists $descriptor->{nextInChain};

        my $stype = WebGPU::Direct->SType;
        my $label = delete $descriptor->{label} // '(anon).wsgl';
        my $code  = delete $descriptor->{code};

        $descriptor = WebGPU::Direct->ShaderModuleDescriptor(
          {
            label       => $label,
            nextInChain => WebGPU::Direct->ShaderModuleWGSLDescriptor(
              {
                sType => $stype->ShaderModuleWGSLDescriptor,
                code  => $code,
              }
            ),
            %$descriptor,
          }
        );

      }
    }

    return $self->_CreateShaderModule($descriptor);
  }

  sub CreateCommandEncoder (
    $self,
    $descriptor = {},
  )
  {
    return $self->_CreateCommandEncoder($descriptor);
  }
};

1;
