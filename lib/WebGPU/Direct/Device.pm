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

        $descriptor = WebGPU::Direct->ShaderModuleDescriptor->new(
          {
            label       => $label,
            nextInChain => WebGPU::Direct->ShaderModuleWGSLDescriptor->new(
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
__END__
=pod

=encoding UTF-8

=head1 NAME

WebGPU::Direct::Device

=head2 Methods

=head3 CreateBindGroup

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::BindGroup>

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::BindGroupDescriptor|WebGPU::Direct::Types/WebGPU::Direct::BindGroupDescriptor>)

=back

=back

=head3 CreateBindGroupLayout

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::BindGroupLayout>

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::BindGroupLayoutDescriptor|WebGPU::Direct::Types/WebGPU::Direct::BindGroupLayoutDescriptor>)

=back

=back

=head3 CreateBuffer

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::Buffer>

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::BufferDescriptor|WebGPU::Direct::Types/WebGPU::Direct::BufferDescriptor>)

=back

=back

=head3 CreateCommandEncoder

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::CommandEncoder>

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::CommandEncoderDescriptor|WebGPU::Direct::Types/WebGPU::Direct::CommandEncoderDescriptor>) Default: {}

=back

=back

=head3 CreateComputePipeline

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::ComputePipeline>

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::ComputePipelineDescriptor|WebGPU::Direct::Types/WebGPU::Direct::ComputePipelineDescriptor>)

=back

=back

=head3 CreateComputePipelineAsync

=over

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::ComputePipelineDescriptor|WebGPU::Direct::Types/WebGPU::Direct::ComputePipelineDescriptor>)

=item * callback (WebGPU::Direct::CreateComputePipelineAsyncCallback (Code reference))

=item * userdata (Scalar (void *))

=back

=back

=head3 CreatePipelineLayout

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::PipelineLayout>

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::PipelineLayoutDescriptor|WebGPU::Direct::Types/WebGPU::Direct::PipelineLayoutDescriptor>)

=back

=back

=head3 CreateQuerySet

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::QuerySet>

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::QuerySetDescriptor|WebGPU::Direct::Types/WebGPU::Direct::QuerySetDescriptor>)

=back

=back

=head3 CreateRenderBundleEncoder

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::RenderBundleEncoder>

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::RenderBundleEncoderDescriptor|WebGPU::Direct::Types/WebGPU::Direct::RenderBundleEncoderDescriptor>)

=back

=back

=head3 CreateRenderPipeline

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::RenderPipeline>

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::RenderPipelineDescriptor|WebGPU::Direct::Types/WebGPU::Direct::RenderPipelineDescriptor>)

=back

=back

=head3 CreateRenderPipelineAsync

=over

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::RenderPipelineDescriptor|WebGPU::Direct::Types/WebGPU::Direct::RenderPipelineDescriptor>)

=item * callback (WebGPU::Direct::CreateRenderPipelineAsyncCallback (Code reference))

=item * userdata (Scalar (void *))

=back

=back

=head3 CreateSampler

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::Sampler>

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::SamplerDescriptor|WebGPU::Direct::Types/WebGPU::Direct::SamplerDescriptor>)

=back

=back

=head3 CreateShaderModule

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::ShaderModule>

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::ShaderModuleDescriptor|WebGPU::Direct::Types/WebGPU::Direct::ShaderModuleDescriptor>) Default: {}

=back

=back

=head3 CreateTexture

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::Texture>

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::TextureDescriptor|WebGPU::Direct::Types/WebGPU::Direct::TextureDescriptor>)

=back

=back

=head3 Destroy

=head3 EnumerateFeatures

=over

=item * Return Type

=over

=item * Integer (size_t)

=back

=item * Arguments

=over

=item * features (L<WebGPU::Direct::FeatureName|WebGPU::Direct::Constants/WebGPU::Direct::FeatureName>)

=back

=back

=head3 GetLimits

=over

=item * Return Type

=over

=item * Boolean (WGPUBool)

=back

=item * Arguments

=over

=item * limits (L<WebGPU::Direct::SupportedLimits|WebGPU::Direct::Types/WebGPU::Direct::SupportedLimits>)

=back

=back

=head3 GetQueue

=over

=item * Return Type

=over

=item * L<WebGPU::Direct::Queue>

=back

=back

=head3 HasFeature

=over

=item * Return Type

=over

=item * Boolean (WGPUBool)

=back

=item * Arguments

=over

=item * feature (L<WebGPU::Direct::FeatureName|WebGPU::Direct::Constants/WebGPU::Direct::FeatureName>)

=back

=back

=head3 PopErrorScope

=over

=item * Arguments

=over

=item * callback (WebGPU::Direct::ErrorCallback (Code reference))

=item * userdata (Scalar (void *))

=back

=back

=head3 PushErrorScope

=over

=item * Arguments

=over

=item * filter (L<WebGPU::Direct::ErrorFilter|WebGPU::Direct::Constants/WebGPU::Direct::ErrorFilter>)

=back

=back

=head3 SetLabel

=over

=item * Arguments

=over

=item * label (String (char *))

=back

=back

=head3 SetUncapturedErrorCallback

=over

=item * Arguments

=over

=item * callback (WebGPU::Direct::ErrorCallback (Code reference))

=item * userdata (Scalar (void *))

=back

=back

=head3 Reference

=head3 Release

