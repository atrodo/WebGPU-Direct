use strict;
use warnings;
package WebGPU::Direct::Adapter {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::BindGroup {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::BindGroupLayout {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::Buffer {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::CommandBuffer {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::CommandEncoder {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::ComputePassEncoder {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::ComputePipeline {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::Device {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::Instance {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::PipelineLayout {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::QuerySet {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::Queue {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::RenderBundle {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::RenderBundleEncoder {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::RenderPassEncoder {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::RenderPipeline {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::Sampler {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::ShaderModule {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::Surface {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::SwapChain {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::Texture {
    
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
}

package WebGPU::Direct::TextureView {
    
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
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ChainedStructOut {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ChainedStructOut\n"
          if !$class->isa("WebGPU::Direct::ChainedStructOut");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::AdapterProperties {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::AdapterProperties\n"
          if !$class->isa("WebGPU::Direct::AdapterProperties");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::BindGroupEntry {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BindGroupEntry\n"
          if !$class->isa("WebGPU::Direct::BindGroupEntry");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::BlendComponent {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BlendComponent\n"
          if !$class->isa("WebGPU::Direct::BlendComponent");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::BufferBindingLayout {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BufferBindingLayout\n"
          if !$class->isa("WebGPU::Direct::BufferBindingLayout");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::BufferDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BufferDescriptor\n"
          if !$class->isa("WebGPU::Direct::BufferDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::Color {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::Color\n"
          if !$class->isa("WebGPU::Direct::Color");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::CommandBufferDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::CommandBufferDescriptor\n"
          if !$class->isa("WebGPU::Direct::CommandBufferDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::CommandEncoderDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::CommandEncoderDescriptor\n"
          if !$class->isa("WebGPU::Direct::CommandEncoderDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::CompilationMessage {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::CompilationMessage\n"
          if !$class->isa("WebGPU::Direct::CompilationMessage");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ComputePassTimestampWrite {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ComputePassTimestampWrite\n"
          if !$class->isa("WebGPU::Direct::ComputePassTimestampWrite");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ConstantEntry {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ConstantEntry\n"
          if !$class->isa("WebGPU::Direct::ConstantEntry");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::Extent3D {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::Extent3D\n"
          if !$class->isa("WebGPU::Direct::Extent3D");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::InstanceDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::InstanceDescriptor\n"
          if !$class->isa("WebGPU::Direct::InstanceDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::Limits {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::Limits\n"
          if !$class->isa("WebGPU::Direct::Limits");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::MultisampleState {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::MultisampleState\n"
          if !$class->isa("WebGPU::Direct::MultisampleState");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::Origin3D {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::Origin3D\n"
          if !$class->isa("WebGPU::Direct::Origin3D");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::PipelineLayoutDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::PipelineLayoutDescriptor\n"
          if !$class->isa("WebGPU::Direct::PipelineLayoutDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
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
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::PrimitiveState {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::PrimitiveState\n"
          if !$class->isa("WebGPU::Direct::PrimitiveState");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::QuerySetDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::QuerySetDescriptor\n"
          if !$class->isa("WebGPU::Direct::QuerySetDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::QueueDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::QueueDescriptor\n"
          if !$class->isa("WebGPU::Direct::QueueDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::RenderBundleDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderBundleDescriptor\n"
          if !$class->isa("WebGPU::Direct::RenderBundleDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::RenderBundleEncoderDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderBundleEncoderDescriptor\n"
          if !$class->isa("WebGPU::Direct::RenderBundleEncoderDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::RenderPassDepthStencilAttachment {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderPassDepthStencilAttachment\n"
          if !$class->isa("WebGPU::Direct::RenderPassDepthStencilAttachment");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
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
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::RenderPassTimestampWrite {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderPassTimestampWrite\n"
          if !$class->isa("WebGPU::Direct::RenderPassTimestampWrite");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::RequestAdapterOptions {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RequestAdapterOptions\n"
          if !$class->isa("WebGPU::Direct::RequestAdapterOptions");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::SamplerBindingLayout {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SamplerBindingLayout\n"
          if !$class->isa("WebGPU::Direct::SamplerBindingLayout");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::SamplerDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SamplerDescriptor\n"
          if !$class->isa("WebGPU::Direct::SamplerDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ShaderModuleCompilationHint {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ShaderModuleCompilationHint\n"
          if !$class->isa("WebGPU::Direct::ShaderModuleCompilationHint");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
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
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
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
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::StencilFaceState {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::StencilFaceState\n"
          if !$class->isa("WebGPU::Direct::StencilFaceState");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::StorageTextureBindingLayout {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::StorageTextureBindingLayout\n"
          if !$class->isa("WebGPU::Direct::StorageTextureBindingLayout");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::SurfaceDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceDescriptor\n"
          if !$class->isa("WebGPU::Direct::SurfaceDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
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
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
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
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
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
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
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
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
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
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
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
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
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
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::SwapChainDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SwapChainDescriptor\n"
          if !$class->isa("WebGPU::Direct::SwapChainDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::TextureBindingLayout {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::TextureBindingLayout\n"
          if !$class->isa("WebGPU::Direct::TextureBindingLayout");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::TextureDataLayout {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::TextureDataLayout\n"
          if !$class->isa("WebGPU::Direct::TextureDataLayout");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::TextureViewDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::TextureViewDescriptor\n"
          if !$class->isa("WebGPU::Direct::TextureViewDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::VertexAttribute {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::VertexAttribute\n"
          if !$class->isa("WebGPU::Direct::VertexAttribute");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::BindGroupDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BindGroupDescriptor\n"
          if !$class->isa("WebGPU::Direct::BindGroupDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::BindGroupLayoutEntry {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BindGroupLayoutEntry\n"
          if !$class->isa("WebGPU::Direct::BindGroupLayoutEntry");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::BlendState {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BlendState\n"
          if !$class->isa("WebGPU::Direct::BlendState");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::CompilationInfo {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::CompilationInfo\n"
          if !$class->isa("WebGPU::Direct::CompilationInfo");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ComputePassDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ComputePassDescriptor\n"
          if !$class->isa("WebGPU::Direct::ComputePassDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::DepthStencilState {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::DepthStencilState\n"
          if !$class->isa("WebGPU::Direct::DepthStencilState");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ImageCopyBuffer {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ImageCopyBuffer\n"
          if !$class->isa("WebGPU::Direct::ImageCopyBuffer");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ImageCopyTexture {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ImageCopyTexture\n"
          if !$class->isa("WebGPU::Direct::ImageCopyTexture");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ProgrammableStageDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ProgrammableStageDescriptor\n"
          if !$class->isa("WebGPU::Direct::ProgrammableStageDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::RenderPassColorAttachment {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderPassColorAttachment\n"
          if !$class->isa("WebGPU::Direct::RenderPassColorAttachment");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::RequiredLimits {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RequiredLimits\n"
          if !$class->isa("WebGPU::Direct::RequiredLimits");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ShaderModuleDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ShaderModuleDescriptor\n"
          if !$class->isa("WebGPU::Direct::ShaderModuleDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::SupportedLimits {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SupportedLimits\n"
          if !$class->isa("WebGPU::Direct::SupportedLimits");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::TextureDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::TextureDescriptor\n"
          if !$class->isa("WebGPU::Direct::TextureDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::VertexBufferLayout {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::VertexBufferLayout\n"
          if !$class->isa("WebGPU::Direct::VertexBufferLayout");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::BindGroupLayoutDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BindGroupLayoutDescriptor\n"
          if !$class->isa("WebGPU::Direct::BindGroupLayoutDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ColorTargetState {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ColorTargetState\n"
          if !$class->isa("WebGPU::Direct::ColorTargetState");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::ComputePipelineDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ComputePipelineDescriptor\n"
          if !$class->isa("WebGPU::Direct::ComputePipelineDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::DeviceDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::DeviceDescriptor\n"
          if !$class->isa("WebGPU::Direct::DeviceDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::RenderPassDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderPassDescriptor\n"
          if !$class->isa("WebGPU::Direct::RenderPassDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::VertexState {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::VertexState\n"
          if !$class->isa("WebGPU::Direct::VertexState");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::FragmentState {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::FragmentState\n"
          if !$class->isa("WebGPU::Direct::FragmentState");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

package WebGPU::Direct::RenderPipelineDescriptor {
    
    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderPipelineDescriptor\n"
          if !$class->isa("WebGPU::Direct::RenderPipelineDescriptor");
        $class = CORE::ref($class) ? CORE::ref($class) : $class;
        my $result = bless( { ref( $_[0] ) eq ref {} ? %$_[0] : @_ }, $class );
        $result->pack;
        return $result;
    }
}

