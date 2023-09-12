use strict;
use warnings;
package WebGPU::Direct::XS {
  our $VERSION = '0.01';
  require XSLoader;
  XSLoader::load('WebGPU::Direct', $VERSION);
}

package WebGPU::Direct::Adapter {
    push @WebGPU::Direct::Adapter::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::BindGroup {
    push @WebGPU::Direct::BindGroup::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::BindGroupLayout {
    push @WebGPU::Direct::BindGroupLayout::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::Buffer {
    push @WebGPU::Direct::Buffer::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::CommandBuffer {
    push @WebGPU::Direct::CommandBuffer::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::CommandEncoder {
    push @WebGPU::Direct::CommandEncoder::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::ComputePassEncoder {
    push @WebGPU::Direct::ComputePassEncoder::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::ComputePipeline {
    push @WebGPU::Direct::ComputePipeline::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::Device {
    push @WebGPU::Direct::Device::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::Instance {
    push @WebGPU::Direct::Instance::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::PipelineLayout {
    push @WebGPU::Direct::PipelineLayout::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::QuerySet {
    push @WebGPU::Direct::QuerySet::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::Queue {
    push @WebGPU::Direct::Queue::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::RenderBundle {
    push @WebGPU::Direct::RenderBundle::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::RenderBundleEncoder {
    push @WebGPU::Direct::RenderBundleEncoder::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::RenderPassEncoder {
    push @WebGPU::Direct::RenderPassEncoder::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::RenderPipeline {
    push @WebGPU::Direct::RenderPipeline::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::Sampler {
    push @WebGPU::Direct::Sampler::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::ShaderModule {
    push @WebGPU::Direct::ShaderModule::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::Surface {
    push @WebGPU::Direct::Surface::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::SwapChain {
    push @WebGPU::Direct::SwapChain::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::Texture {
    push @WebGPU::Direct::Texture::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::TextureView {
    push @WebGPU::Direct::TextureView::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::BufferMapCallback {
    push @WebGPU::Direct::BufferMapCallback::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::CompilationInfoCallback {
    push @WebGPU::Direct::CompilationInfoCallback::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::CreateComputePipelineAsyncCallback {
    push @WebGPU::Direct::CreateComputePipelineAsyncCallback::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::CreateRenderPipelineAsyncCallback {
    push @WebGPU::Direct::CreateRenderPipelineAsyncCallback::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::DeviceLostCallback {
    push @WebGPU::Direct::DeviceLostCallback::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::ErrorCallback {
    push @WebGPU::Direct::ErrorCallback::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::Proc {
    push @WebGPU::Direct::Proc::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::QueueWorkDoneCallback {
    push @WebGPU::Direct::QueueWorkDoneCallback::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::RequestAdapterCallback {
    push @WebGPU::Direct::RequestAdapterCallback::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::RequestDeviceCallback {
    push @WebGPU::Direct::RequestDeviceCallback::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::ChainedStruct {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ChainedStruct\n"
          if !$class->isa("WebGPU::Direct::ChainedStruct");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ChainedStructOut {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ChainedStructOut\n"
          if !$class->isa("WebGPU::Direct::ChainedStructOut");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::AdapterProperties {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::AdapterProperties\n"
          if !$class->isa("WebGPU::Direct::AdapterProperties");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::BindGroupEntry {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BindGroupEntry\n"
          if !$class->isa("WebGPU::Direct::BindGroupEntry");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::BlendComponent {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BlendComponent\n"
          if !$class->isa("WebGPU::Direct::BlendComponent");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::BufferBindingLayout {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BufferBindingLayout\n"
          if !$class->isa("WebGPU::Direct::BufferBindingLayout");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::BufferDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BufferDescriptor\n"
          if !$class->isa("WebGPU::Direct::BufferDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::Color {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::Color\n"
          if !$class->isa("WebGPU::Direct::Color");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::CommandBufferDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::CommandBufferDescriptor\n"
          if !$class->isa("WebGPU::Direct::CommandBufferDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::CommandEncoderDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::CommandEncoderDescriptor\n"
          if !$class->isa("WebGPU::Direct::CommandEncoderDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::CompilationMessage {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::CompilationMessage\n"
          if !$class->isa("WebGPU::Direct::CompilationMessage");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ComputePassTimestampWrite {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ComputePassTimestampWrite\n"
          if !$class->isa("WebGPU::Direct::ComputePassTimestampWrite");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ConstantEntry {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ConstantEntry\n"
          if !$class->isa("WebGPU::Direct::ConstantEntry");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::Extent3D {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::Extent3D\n"
          if !$class->isa("WebGPU::Direct::Extent3D");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::InstanceDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::InstanceDescriptor\n"
          if !$class->isa("WebGPU::Direct::InstanceDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::Limits {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::Limits\n"
          if !$class->isa("WebGPU::Direct::Limits");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::MultisampleState {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::MultisampleState\n"
          if !$class->isa("WebGPU::Direct::MultisampleState");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::Origin3D {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::Origin3D\n"
          if !$class->isa("WebGPU::Direct::Origin3D");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::PipelineLayoutDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::PipelineLayoutDescriptor\n"
          if !$class->isa("WebGPU::Direct::PipelineLayoutDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::PrimitiveDepthClipControl {
    push @WebGPU::Direct::PrimitiveDepthClipControl::ISA, "WebGPU::Direct::ChainedStruct";
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::PrimitiveDepthClipControl\n"
          if !$class->isa("WebGPU::Direct::PrimitiveDepthClipControl");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::PrimitiveState {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::PrimitiveState\n"
          if !$class->isa("WebGPU::Direct::PrimitiveState");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::QuerySetDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::QuerySetDescriptor\n"
          if !$class->isa("WebGPU::Direct::QuerySetDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::QueueDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::QueueDescriptor\n"
          if !$class->isa("WebGPU::Direct::QueueDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::RenderBundleDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderBundleDescriptor\n"
          if !$class->isa("WebGPU::Direct::RenderBundleDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::RenderBundleEncoderDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderBundleEncoderDescriptor\n"
          if !$class->isa("WebGPU::Direct::RenderBundleEncoderDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::RenderPassDepthStencilAttachment {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderPassDepthStencilAttachment\n"
          if !$class->isa("WebGPU::Direct::RenderPassDepthStencilAttachment");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::RenderPassDescriptorMaxDrawCount {
    push @WebGPU::Direct::RenderPassDescriptorMaxDrawCount::ISA, "WebGPU::Direct::ChainedStruct";
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderPassDescriptorMaxDrawCount\n"
          if !$class->isa("WebGPU::Direct::RenderPassDescriptorMaxDrawCount");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::RenderPassTimestampWrite {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderPassTimestampWrite\n"
          if !$class->isa("WebGPU::Direct::RenderPassTimestampWrite");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::RequestAdapterOptions {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RequestAdapterOptions\n"
          if !$class->isa("WebGPU::Direct::RequestAdapterOptions");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::SamplerBindingLayout {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SamplerBindingLayout\n"
          if !$class->isa("WebGPU::Direct::SamplerBindingLayout");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::SamplerDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SamplerDescriptor\n"
          if !$class->isa("WebGPU::Direct::SamplerDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ShaderModuleCompilationHint {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ShaderModuleCompilationHint\n"
          if !$class->isa("WebGPU::Direct::ShaderModuleCompilationHint");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ShaderModuleSPIRVDescriptor {
    push @WebGPU::Direct::ShaderModuleSPIRVDescriptor::ISA, "WebGPU::Direct::ChainedStruct";
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ShaderModuleSPIRVDescriptor\n"
          if !$class->isa("WebGPU::Direct::ShaderModuleSPIRVDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ShaderModuleWGSLDescriptor {
    push @WebGPU::Direct::ShaderModuleWGSLDescriptor::ISA, "WebGPU::Direct::ChainedStruct";
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ShaderModuleWGSLDescriptor\n"
          if !$class->isa("WebGPU::Direct::ShaderModuleWGSLDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::StencilFaceState {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::StencilFaceState\n"
          if !$class->isa("WebGPU::Direct::StencilFaceState");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::StorageTextureBindingLayout {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::StorageTextureBindingLayout\n"
          if !$class->isa("WebGPU::Direct::StorageTextureBindingLayout");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::SurfaceDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceDescriptor\n"
          if !$class->isa("WebGPU::Direct::SurfaceDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow {
    push @WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow::ISA, "WebGPU::Direct::ChainedStruct";
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow\n"
          if !$class->isa("WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector {
    push @WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector::ISA, "WebGPU::Direct::ChainedStruct";
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector\n"
          if !$class->isa("WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::SurfaceDescriptorFromMetalLayer {
    push @WebGPU::Direct::SurfaceDescriptorFromMetalLayer::ISA, "WebGPU::Direct::ChainedStruct";
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceDescriptorFromMetalLayer\n"
          if !$class->isa("WebGPU::Direct::SurfaceDescriptorFromMetalLayer");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::SurfaceDescriptorFromWaylandSurface {
    push @WebGPU::Direct::SurfaceDescriptorFromWaylandSurface::ISA, "WebGPU::Direct::ChainedStruct";
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceDescriptorFromWaylandSurface\n"
          if !$class->isa("WebGPU::Direct::SurfaceDescriptorFromWaylandSurface");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::SurfaceDescriptorFromWindowsHWND {
    push @WebGPU::Direct::SurfaceDescriptorFromWindowsHWND::ISA, "WebGPU::Direct::ChainedStruct";
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceDescriptorFromWindowsHWND\n"
          if !$class->isa("WebGPU::Direct::SurfaceDescriptorFromWindowsHWND");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::SurfaceDescriptorFromXcbWindow {
    push @WebGPU::Direct::SurfaceDescriptorFromXcbWindow::ISA, "WebGPU::Direct::ChainedStruct";
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceDescriptorFromXcbWindow\n"
          if !$class->isa("WebGPU::Direct::SurfaceDescriptorFromXcbWindow");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::SurfaceDescriptorFromXlibWindow {
    push @WebGPU::Direct::SurfaceDescriptorFromXlibWindow::ISA, "WebGPU::Direct::ChainedStruct";
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceDescriptorFromXlibWindow\n"
          if !$class->isa("WebGPU::Direct::SurfaceDescriptorFromXlibWindow");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::SwapChainDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SwapChainDescriptor\n"
          if !$class->isa("WebGPU::Direct::SwapChainDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::TextureBindingLayout {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::TextureBindingLayout\n"
          if !$class->isa("WebGPU::Direct::TextureBindingLayout");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::TextureDataLayout {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::TextureDataLayout\n"
          if !$class->isa("WebGPU::Direct::TextureDataLayout");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::TextureViewDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::TextureViewDescriptor\n"
          if !$class->isa("WebGPU::Direct::TextureViewDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::VertexAttribute {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::VertexAttribute\n"
          if !$class->isa("WebGPU::Direct::VertexAttribute");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::BindGroupDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BindGroupDescriptor\n"
          if !$class->isa("WebGPU::Direct::BindGroupDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::BindGroupLayoutEntry {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BindGroupLayoutEntry\n"
          if !$class->isa("WebGPU::Direct::BindGroupLayoutEntry");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::BlendState {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BlendState\n"
          if !$class->isa("WebGPU::Direct::BlendState");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::CompilationInfo {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::CompilationInfo\n"
          if !$class->isa("WebGPU::Direct::CompilationInfo");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ComputePassDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ComputePassDescriptor\n"
          if !$class->isa("WebGPU::Direct::ComputePassDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::DepthStencilState {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::DepthStencilState\n"
          if !$class->isa("WebGPU::Direct::DepthStencilState");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ImageCopyBuffer {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ImageCopyBuffer\n"
          if !$class->isa("WebGPU::Direct::ImageCopyBuffer");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ImageCopyTexture {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ImageCopyTexture\n"
          if !$class->isa("WebGPU::Direct::ImageCopyTexture");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ProgrammableStageDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ProgrammableStageDescriptor\n"
          if !$class->isa("WebGPU::Direct::ProgrammableStageDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::RenderPassColorAttachment {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderPassColorAttachment\n"
          if !$class->isa("WebGPU::Direct::RenderPassColorAttachment");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::RequiredLimits {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RequiredLimits\n"
          if !$class->isa("WebGPU::Direct::RequiredLimits");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ShaderModuleDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ShaderModuleDescriptor\n"
          if !$class->isa("WebGPU::Direct::ShaderModuleDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::SupportedLimits {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SupportedLimits\n"
          if !$class->isa("WebGPU::Direct::SupportedLimits");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::TextureDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::TextureDescriptor\n"
          if !$class->isa("WebGPU::Direct::TextureDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::VertexBufferLayout {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::VertexBufferLayout\n"
          if !$class->isa("WebGPU::Direct::VertexBufferLayout");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::BindGroupLayoutDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BindGroupLayoutDescriptor\n"
          if !$class->isa("WebGPU::Direct::BindGroupLayoutDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ColorTargetState {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ColorTargetState\n"
          if !$class->isa("WebGPU::Direct::ColorTargetState");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ComputePipelineDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ComputePipelineDescriptor\n"
          if !$class->isa("WebGPU::Direct::ComputePipelineDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::DeviceDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::DeviceDescriptor\n"
          if !$class->isa("WebGPU::Direct::DeviceDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::RenderPassDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderPassDescriptor\n"
          if !$class->isa("WebGPU::Direct::RenderPassDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::VertexState {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::VertexState\n"
          if !$class->isa("WebGPU::Direct::VertexState");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::FragmentState {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::FragmentState\n"
          if !$class->isa("WebGPU::Direct::FragmentState");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::RenderPipelineDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderPipelineDescriptor\n"
          if !$class->isa("WebGPU::Direct::RenderPipelineDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ }, $class );
        $result->pack;
        return $result;
    }
}

1;
