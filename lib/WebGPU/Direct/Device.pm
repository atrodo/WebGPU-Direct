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

=item * WGPUBindGroup

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

=item * WGPUBindGroupLayout

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

=item * WGPUBuffer

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

=item * WGPUCommandEncoder

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::CommandEncoderDescriptor|WebGPU::Direct::Types/WebGPU::Direct::CommandEncoderDescriptor>)

=back

=back

=head3 CreateComputePipeline

=over

=item * Return Type

=over

=item * WGPUComputePipeline

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::ComputePipelineDescriptor|WebGPU::Direct::Types/WebGPU::Direct::ComputePipelineDescriptor>)

=back

=back

=head3 CreateComputePipelineAsync

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::ComputePipelineDescriptor|WebGPU::Direct::Types/WebGPU::Direct::ComputePipelineDescriptor>)

=item * callback (L<WebGPU::Direct::CreateComputePipelineAsyncCallback>)

=item * userdata (L<WebGPU::Direct::void>)

=back

=back

=head3 CreatePipelineLayout

=over

=item * Return Type

=over

=item * WGPUPipelineLayout

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

=item * WGPUQuerySet

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

=item * WGPURenderBundleEncoder

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

=item * WGPURenderPipeline

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::RenderPipelineDescriptor|WebGPU::Direct::Types/WebGPU::Direct::RenderPipelineDescriptor>)

=back

=back

=head3 CreateRenderPipelineAsync

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::RenderPipelineDescriptor|WebGPU::Direct::Types/WebGPU::Direct::RenderPipelineDescriptor>)

=item * callback (L<WebGPU::Direct::CreateRenderPipelineAsyncCallback>)

=item * userdata (L<WebGPU::Direct::void>)

=back

=back

=head3 CreateSampler

=over

=item * Return Type

=over

=item * WGPUSampler

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

=item * WGPUShaderModule

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::ShaderModuleDescriptor|WebGPU::Direct::Types/WebGPU::Direct::ShaderModuleDescriptor>)

=back

=back

=head3 CreateTexture

=over

=item * Return Type

=over

=item * WGPUTexture

=back

=item * Arguments

=over

=item * descriptor (L<WebGPU::Direct::TextureDescriptor|WebGPU::Direct::Types/WebGPU::Direct::TextureDescriptor>)

=back

=back

=head3 Destroy

=over

=item * Return Type

=over

=item * void

=back

=back

=head3 EnumerateFeatures

=over

=item * Return Type

=over

=item * size_t

=back

=item * Arguments

=over

=item * features (L<WebGPU::Direct::FeatureName>)

=back

=back

=head3 GetLimits

=over

=item * Return Type

=over

=item * WGPUBool

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

=item * WGPUQueue

=back

=back

=head3 HasFeature

=over

=item * Return Type

=over

=item * WGPUBool

=back

=item * Arguments

=over

=item * feature (L<WGPUFeatureName|WebGPU::Direct::Constants/WGPUFeatureName>)

=back

=back

=head3 PopErrorScope

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * callback (L<WebGPU::Direct::ErrorCallback>)

=item * userdata (L<WebGPU::Direct::void>)

=back

=back

=head3 PushErrorScope

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * filter (L<WGPUErrorFilter|WebGPU::Direct::Constants/WGPUErrorFilter>)

=back

=back

=head3 SetLabel

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * label (L<WebGPU::Direct::char>)

=back

=back

=head3 SetUncapturedErrorCallback

=over

=item * Return Type

=over

=item * void

=back

=item * Arguments

=over

=item * callback (L<WebGPU::Direct::ErrorCallback>)

=item * userdata (L<WebGPU::Direct::void>)

=back

=back

=head3 Reference

=over

=item * Return Type

=over

=item * void

=back

=back

=head3 Release

=over

=item * Return Type

=over

=item * void

=back

=back

