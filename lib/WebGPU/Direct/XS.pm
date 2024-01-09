use v5.30;
use warnings;

package # Hide from PAUSE
    WebGPU::Direct::XS
{
  our $VERSION = '0.01';
  require XSLoader;
  XSLoader::load('WebGPU::Direct', $VERSION);
}

package WebGPU::Direct::Opaque {
}

package WebGPU::Direct {
  sub CreateInstance { my $class = shift; WebGPU::Direct::XS::CreateInstance(@_); }
  sub GetProcAddress { my $class = shift; WebGPU::Direct::XS::GetProcAddress(@_); }
  our @export_all;
  sub AdapterType () { 'WebGPU::Direct::AdapterType' }; push @export_all, 'AdapterType';
  sub AddressMode () { 'WebGPU::Direct::AddressMode' }; push @export_all, 'AddressMode';
  sub BackendType () { 'WebGPU::Direct::BackendType' }; push @export_all, 'BackendType';
  sub BlendFactor () { 'WebGPU::Direct::BlendFactor' }; push @export_all, 'BlendFactor';
  sub BlendOperation () { 'WebGPU::Direct::BlendOperation' }; push @export_all, 'BlendOperation';
  sub BufferBindingType () { 'WebGPU::Direct::BufferBindingType' }; push @export_all, 'BufferBindingType';
  sub BufferMapAsyncStatus () { 'WebGPU::Direct::BufferMapAsyncStatus' }; push @export_all, 'BufferMapAsyncStatus';
  sub BufferMapState () { 'WebGPU::Direct::BufferMapState' }; push @export_all, 'BufferMapState';
  sub BufferUsage () { 'WebGPU::Direct::BufferUsage' }; push @export_all, 'BufferUsage';
  sub ColorWriteMask () { 'WebGPU::Direct::ColorWriteMask' }; push @export_all, 'ColorWriteMask';
  sub CompareFunction () { 'WebGPU::Direct::CompareFunction' }; push @export_all, 'CompareFunction';
  sub CompilationInfoRequestStatus () { 'WebGPU::Direct::CompilationInfoRequestStatus' }; push @export_all, 'CompilationInfoRequestStatus';
  sub CompilationMessageType () { 'WebGPU::Direct::CompilationMessageType' }; push @export_all, 'CompilationMessageType';
  sub CompositeAlphaMode () { 'WebGPU::Direct::CompositeAlphaMode' }; push @export_all, 'CompositeAlphaMode';
  sub CreatePipelineAsyncStatus () { 'WebGPU::Direct::CreatePipelineAsyncStatus' }; push @export_all, 'CreatePipelineAsyncStatus';
  sub CullMode () { 'WebGPU::Direct::CullMode' }; push @export_all, 'CullMode';
  sub DeviceLostReason () { 'WebGPU::Direct::DeviceLostReason' }; push @export_all, 'DeviceLostReason';
  sub ErrorFilter () { 'WebGPU::Direct::ErrorFilter' }; push @export_all, 'ErrorFilter';
  sub ErrorType () { 'WebGPU::Direct::ErrorType' }; push @export_all, 'ErrorType';
  sub FeatureName () { 'WebGPU::Direct::FeatureName' }; push @export_all, 'FeatureName';
  sub FilterMode () { 'WebGPU::Direct::FilterMode' }; push @export_all, 'FilterMode';
  sub FrontFace () { 'WebGPU::Direct::FrontFace' }; push @export_all, 'FrontFace';
  sub IndexFormat () { 'WebGPU::Direct::IndexFormat' }; push @export_all, 'IndexFormat';
  sub LoadOp () { 'WebGPU::Direct::LoadOp' }; push @export_all, 'LoadOp';
  sub MapMode () { 'WebGPU::Direct::MapMode' }; push @export_all, 'MapMode';
  sub MipmapFilterMode () { 'WebGPU::Direct::MipmapFilterMode' }; push @export_all, 'MipmapFilterMode';
  sub PowerPreference () { 'WebGPU::Direct::PowerPreference' }; push @export_all, 'PowerPreference';
  sub PresentMode () { 'WebGPU::Direct::PresentMode' }; push @export_all, 'PresentMode';
  sub PrimitiveTopology () { 'WebGPU::Direct::PrimitiveTopology' }; push @export_all, 'PrimitiveTopology';
  sub QueryType () { 'WebGPU::Direct::QueryType' }; push @export_all, 'QueryType';
  sub QueueWorkDoneStatus () { 'WebGPU::Direct::QueueWorkDoneStatus' }; push @export_all, 'QueueWorkDoneStatus';
  sub RequestAdapterStatus () { 'WebGPU::Direct::RequestAdapterStatus' }; push @export_all, 'RequestAdapterStatus';
  sub RequestDeviceStatus () { 'WebGPU::Direct::RequestDeviceStatus' }; push @export_all, 'RequestDeviceStatus';
  sub SType () { 'WebGPU::Direct::SType' }; push @export_all, 'SType';
  sub SamplerBindingType () { 'WebGPU::Direct::SamplerBindingType' }; push @export_all, 'SamplerBindingType';
  sub ShaderStage () { 'WebGPU::Direct::ShaderStage' }; push @export_all, 'ShaderStage';
  sub StencilOperation () { 'WebGPU::Direct::StencilOperation' }; push @export_all, 'StencilOperation';
  sub StorageTextureAccess () { 'WebGPU::Direct::StorageTextureAccess' }; push @export_all, 'StorageTextureAccess';
  sub StoreOp () { 'WebGPU::Direct::StoreOp' }; push @export_all, 'StoreOp';
  sub SurfaceGetCurrentTextureStatus () { 'WebGPU::Direct::SurfaceGetCurrentTextureStatus' }; push @export_all, 'SurfaceGetCurrentTextureStatus';
  sub TextureAspect () { 'WebGPU::Direct::TextureAspect' }; push @export_all, 'TextureAspect';
  sub TextureDimension () { 'WebGPU::Direct::TextureDimension' }; push @export_all, 'TextureDimension';
  sub TextureFormat () { 'WebGPU::Direct::TextureFormat' }; push @export_all, 'TextureFormat';
  sub TextureSampleType () { 'WebGPU::Direct::TextureSampleType' }; push @export_all, 'TextureSampleType';
  sub TextureUsage () { 'WebGPU::Direct::TextureUsage' }; push @export_all, 'TextureUsage';
  sub TextureViewDimension () { 'WebGPU::Direct::TextureViewDimension' }; push @export_all, 'TextureViewDimension';
  sub VertexFormat () { 'WebGPU::Direct::VertexFormat' }; push @export_all, 'VertexFormat';
  sub VertexStepMode () { 'WebGPU::Direct::VertexStepMode' }; push @export_all, 'VertexStepMode';
  sub Adapter () { Carp::croak if @_>1; 'WebGPU::Direct::Adapter' }
  sub AdapterProperties () { Carp::croak if @_>1; 'WebGPU::Direct::AdapterProperties' }
  sub BindGroup () { Carp::croak if @_>1; 'WebGPU::Direct::BindGroup' }
  sub BindGroupDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::BindGroupDescriptor' }
  sub BindGroupEntry () { Carp::croak if @_>1; 'WebGPU::Direct::BindGroupEntry' }
  sub BindGroupLayout () { Carp::croak if @_>1; 'WebGPU::Direct::BindGroupLayout' }
  sub BindGroupLayoutDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::BindGroupLayoutDescriptor' }
  sub BindGroupLayoutEntry () { Carp::croak if @_>1; 'WebGPU::Direct::BindGroupLayoutEntry' }
  sub BlendComponent () { Carp::croak if @_>1; 'WebGPU::Direct::BlendComponent' }
  sub BlendState () { Carp::croak if @_>1; 'WebGPU::Direct::BlendState' }
  sub Buffer () { Carp::croak if @_>1; 'WebGPU::Direct::Buffer' }
  sub BufferBindingLayout () { Carp::croak if @_>1; 'WebGPU::Direct::BufferBindingLayout' }
  sub BufferDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::BufferDescriptor' }
  sub BufferMapCallback () { Carp::croak if @_>1; 'WebGPU::Direct::BufferMapCallback' }
  sub ChainedStruct () { Carp::croak if @_>1; 'WebGPU::Direct::ChainedStruct' }
  sub ChainedStructOut () { Carp::croak if @_>1; 'WebGPU::Direct::ChainedStructOut' }
  sub Color () { Carp::croak if @_>1; 'WebGPU::Direct::Color' }
  sub ColorTargetState () { Carp::croak if @_>1; 'WebGPU::Direct::ColorTargetState' }
  sub CommandBuffer () { Carp::croak if @_>1; 'WebGPU::Direct::CommandBuffer' }
  sub CommandBufferDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::CommandBufferDescriptor' }
  sub CommandEncoder () { Carp::croak if @_>1; 'WebGPU::Direct::CommandEncoder' }
  sub CommandEncoderDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::CommandEncoderDescriptor' }
  sub CompilationInfo () { Carp::croak if @_>1; 'WebGPU::Direct::CompilationInfo' }
  sub CompilationInfoCallback () { Carp::croak if @_>1; 'WebGPU::Direct::CompilationInfoCallback' }
  sub CompilationMessage () { Carp::croak if @_>1; 'WebGPU::Direct::CompilationMessage' }
  sub ComputePassDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::ComputePassDescriptor' }
  sub ComputePassEncoder () { Carp::croak if @_>1; 'WebGPU::Direct::ComputePassEncoder' }
  sub ComputePassTimestampWrites () { Carp::croak if @_>1; 'WebGPU::Direct::ComputePassTimestampWrites' }
  sub ComputePipeline () { Carp::croak if @_>1; 'WebGPU::Direct::ComputePipeline' }
  sub ComputePipelineDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::ComputePipelineDescriptor' }
  sub ConstantEntry () { Carp::croak if @_>1; 'WebGPU::Direct::ConstantEntry' }
  sub CreateComputePipelineAsyncCallback () { Carp::croak if @_>1; 'WebGPU::Direct::CreateComputePipelineAsyncCallback' }
  sub CreateRenderPipelineAsyncCallback () { Carp::croak if @_>1; 'WebGPU::Direct::CreateRenderPipelineAsyncCallback' }
  sub DepthStencilState () { Carp::croak if @_>1; 'WebGPU::Direct::DepthStencilState' }
  sub Device () { Carp::croak if @_>1; 'WebGPU::Direct::Device' }
  sub DeviceDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::DeviceDescriptor' }
  sub DeviceLostCallback () { Carp::croak if @_>1; 'WebGPU::Direct::DeviceLostCallback' }
  sub ErrorCallback () { Carp::croak if @_>1; 'WebGPU::Direct::ErrorCallback' }
  sub Extent3D () { Carp::croak if @_>1; 'WebGPU::Direct::Extent3D' }
  sub FragmentState () { Carp::croak if @_>1; 'WebGPU::Direct::FragmentState' }
  sub ImageCopyBuffer () { Carp::croak if @_>1; 'WebGPU::Direct::ImageCopyBuffer' }
  sub ImageCopyTexture () { Carp::croak if @_>1; 'WebGPU::Direct::ImageCopyTexture' }
  sub Instance () { Carp::croak if @_>1; 'WebGPU::Direct::Instance' }
  sub InstanceDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::InstanceDescriptor' }
  sub Limits () { Carp::croak if @_>1; 'WebGPU::Direct::Limits' }
  sub MultisampleState () { Carp::croak if @_>1; 'WebGPU::Direct::MultisampleState' }
  sub Origin3D () { Carp::croak if @_>1; 'WebGPU::Direct::Origin3D' }
  sub PipelineLayout () { Carp::croak if @_>1; 'WebGPU::Direct::PipelineLayout' }
  sub PipelineLayoutDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::PipelineLayoutDescriptor' }
  sub PrimitiveDepthClipControl () { Carp::croak if @_>1; 'WebGPU::Direct::PrimitiveDepthClipControl' }
  sub PrimitiveState () { Carp::croak if @_>1; 'WebGPU::Direct::PrimitiveState' }
  sub Proc () { Carp::croak if @_>1; 'WebGPU::Direct::Proc' }
  sub ProgrammableStageDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::ProgrammableStageDescriptor' }
  sub QuerySet () { Carp::croak if @_>1; 'WebGPU::Direct::QuerySet' }
  sub QuerySetDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::QuerySetDescriptor' }
  sub Queue () { Carp::croak if @_>1; 'WebGPU::Direct::Queue' }
  sub QueueDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::QueueDescriptor' }
  sub QueueWorkDoneCallback () { Carp::croak if @_>1; 'WebGPU::Direct::QueueWorkDoneCallback' }
  sub RenderBundle () { Carp::croak if @_>1; 'WebGPU::Direct::RenderBundle' }
  sub RenderBundleDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::RenderBundleDescriptor' }
  sub RenderBundleEncoder () { Carp::croak if @_>1; 'WebGPU::Direct::RenderBundleEncoder' }
  sub RenderBundleEncoderDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::RenderBundleEncoderDescriptor' }
  sub RenderPassColorAttachment () { Carp::croak if @_>1; 'WebGPU::Direct::RenderPassColorAttachment' }
  sub RenderPassDepthStencilAttachment () { Carp::croak if @_>1; 'WebGPU::Direct::RenderPassDepthStencilAttachment' }
  sub RenderPassDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::RenderPassDescriptor' }
  sub RenderPassDescriptorMaxDrawCount () { Carp::croak if @_>1; 'WebGPU::Direct::RenderPassDescriptorMaxDrawCount' }
  sub RenderPassEncoder () { Carp::croak if @_>1; 'WebGPU::Direct::RenderPassEncoder' }
  sub RenderPassTimestampWrites () { Carp::croak if @_>1; 'WebGPU::Direct::RenderPassTimestampWrites' }
  sub RenderPipeline () { Carp::croak if @_>1; 'WebGPU::Direct::RenderPipeline' }
  sub RenderPipelineDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::RenderPipelineDescriptor' }
  sub RequestAdapterCallback () { Carp::croak if @_>1; 'WebGPU::Direct::RequestAdapterCallback' }
  sub RequestAdapterOptions () { Carp::croak if @_>1; 'WebGPU::Direct::RequestAdapterOptions' }
  sub RequestDeviceCallback () { Carp::croak if @_>1; 'WebGPU::Direct::RequestDeviceCallback' }
  sub RequiredLimits () { Carp::croak if @_>1; 'WebGPU::Direct::RequiredLimits' }
  sub Sampler () { Carp::croak if @_>1; 'WebGPU::Direct::Sampler' }
  sub SamplerBindingLayout () { Carp::croak if @_>1; 'WebGPU::Direct::SamplerBindingLayout' }
  sub SamplerDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::SamplerDescriptor' }
  sub ShaderModule () { Carp::croak if @_>1; 'WebGPU::Direct::ShaderModule' }
  sub ShaderModuleCompilationHint () { Carp::croak if @_>1; 'WebGPU::Direct::ShaderModuleCompilationHint' }
  sub ShaderModuleDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::ShaderModuleDescriptor' }
  sub ShaderModuleSPIRVDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::ShaderModuleSPIRVDescriptor' }
  sub ShaderModuleWGSLDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::ShaderModuleWGSLDescriptor' }
  sub StencilFaceState () { Carp::croak if @_>1; 'WebGPU::Direct::StencilFaceState' }
  sub StorageTextureBindingLayout () { Carp::croak if @_>1; 'WebGPU::Direct::StorageTextureBindingLayout' }
  sub SupportedLimits () { Carp::croak if @_>1; 'WebGPU::Direct::SupportedLimits' }
  sub Surface () { Carp::croak if @_>1; 'WebGPU::Direct::Surface' }
  sub SurfaceCapabilities () { Carp::croak if @_>1; 'WebGPU::Direct::SurfaceCapabilities' }
  sub SurfaceConfiguration () { Carp::croak if @_>1; 'WebGPU::Direct::SurfaceConfiguration' }
  sub SurfaceDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::SurfaceDescriptor' }
  sub SurfaceDescriptorFromAndroidNativeWindow () { Carp::croak if @_>1; 'WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow' }
  sub SurfaceDescriptorFromCanvasHTMLSelector () { Carp::croak if @_>1; 'WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector' }
  sub SurfaceDescriptorFromMetalLayer () { Carp::croak if @_>1; 'WebGPU::Direct::SurfaceDescriptorFromMetalLayer' }
  sub SurfaceDescriptorFromWaylandSurface () { Carp::croak if @_>1; 'WebGPU::Direct::SurfaceDescriptorFromWaylandSurface' }
  sub SurfaceDescriptorFromWindowsHWND () { Carp::croak if @_>1; 'WebGPU::Direct::SurfaceDescriptorFromWindowsHWND' }
  sub SurfaceDescriptorFromXcbWindow () { Carp::croak if @_>1; 'WebGPU::Direct::SurfaceDescriptorFromXcbWindow' }
  sub SurfaceDescriptorFromXlibWindow () { Carp::croak if @_>1; 'WebGPU::Direct::SurfaceDescriptorFromXlibWindow' }
  sub SurfaceTexture () { Carp::croak if @_>1; 'WebGPU::Direct::SurfaceTexture' }
  sub Texture () { Carp::croak if @_>1; 'WebGPU::Direct::Texture' }
  sub TextureBindingLayout () { Carp::croak if @_>1; 'WebGPU::Direct::TextureBindingLayout' }
  sub TextureDataLayout () { Carp::croak if @_>1; 'WebGPU::Direct::TextureDataLayout' }
  sub TextureDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::TextureDescriptor' }
  sub TextureView () { Carp::croak if @_>1; 'WebGPU::Direct::TextureView' }
  sub TextureViewDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::TextureViewDescriptor' }
  sub VertexAttribute () { Carp::croak if @_>1; 'WebGPU::Direct::VertexAttribute' }
  sub VertexBufferLayout () { Carp::croak if @_>1; 'WebGPU::Direct::VertexBufferLayout' }
  sub VertexState () { Carp::croak if @_>1; 'WebGPU::Direct::VertexState' }
  sub newAdapter { my $class = shift; return WebGPU::Direct::Adapter->new(@_); }
  sub newAdapterProperties { my $class = shift; return WebGPU::Direct::AdapterProperties->new(@_); }
  sub newBindGroup { my $class = shift; return WebGPU::Direct::BindGroup->new(@_); }
  sub newBindGroupDescriptor { my $class = shift; return WebGPU::Direct::BindGroupDescriptor->new(@_); }
  sub newBindGroupEntry { my $class = shift; return WebGPU::Direct::BindGroupEntry->new(@_); }
  sub newBindGroupLayout { my $class = shift; return WebGPU::Direct::BindGroupLayout->new(@_); }
  sub newBindGroupLayoutDescriptor { my $class = shift; return WebGPU::Direct::BindGroupLayoutDescriptor->new(@_); }
  sub newBindGroupLayoutEntry { my $class = shift; return WebGPU::Direct::BindGroupLayoutEntry->new(@_); }
  sub newBlendComponent { my $class = shift; return WebGPU::Direct::BlendComponent->new(@_); }
  sub newBlendState { my $class = shift; return WebGPU::Direct::BlendState->new(@_); }
  sub newBuffer { my $class = shift; return WebGPU::Direct::Buffer->new(@_); }
  sub newBufferBindingLayout { my $class = shift; return WebGPU::Direct::BufferBindingLayout->new(@_); }
  sub newBufferDescriptor { my $class = shift; return WebGPU::Direct::BufferDescriptor->new(@_); }
  sub newBufferMapCallback { my $class = shift; return WebGPU::Direct::BufferMapCallback->new(@_); }
  sub newChainedStruct { my $class = shift; return WebGPU::Direct::ChainedStruct->new(@_); }
  sub newChainedStructOut { my $class = shift; return WebGPU::Direct::ChainedStructOut->new(@_); }
  sub newColor { my $class = shift; return WebGPU::Direct::Color->new(@_); }
  sub newColorTargetState { my $class = shift; return WebGPU::Direct::ColorTargetState->new(@_); }
  sub newCommandBuffer { my $class = shift; return WebGPU::Direct::CommandBuffer->new(@_); }
  sub newCommandBufferDescriptor { my $class = shift; return WebGPU::Direct::CommandBufferDescriptor->new(@_); }
  sub newCommandEncoder { my $class = shift; return WebGPU::Direct::CommandEncoder->new(@_); }
  sub newCommandEncoderDescriptor { my $class = shift; return WebGPU::Direct::CommandEncoderDescriptor->new(@_); }
  sub newCompilationInfo { my $class = shift; return WebGPU::Direct::CompilationInfo->new(@_); }
  sub newCompilationInfoCallback { my $class = shift; return WebGPU::Direct::CompilationInfoCallback->new(@_); }
  sub newCompilationMessage { my $class = shift; return WebGPU::Direct::CompilationMessage->new(@_); }
  sub newComputePassDescriptor { my $class = shift; return WebGPU::Direct::ComputePassDescriptor->new(@_); }
  sub newComputePassEncoder { my $class = shift; return WebGPU::Direct::ComputePassEncoder->new(@_); }
  sub newComputePassTimestampWrites { my $class = shift; return WebGPU::Direct::ComputePassTimestampWrites->new(@_); }
  sub newComputePipeline { my $class = shift; return WebGPU::Direct::ComputePipeline->new(@_); }
  sub newComputePipelineDescriptor { my $class = shift; return WebGPU::Direct::ComputePipelineDescriptor->new(@_); }
  sub newConstantEntry { my $class = shift; return WebGPU::Direct::ConstantEntry->new(@_); }
  sub newCreateComputePipelineAsyncCallback { my $class = shift; return WebGPU::Direct::CreateComputePipelineAsyncCallback->new(@_); }
  sub newCreateRenderPipelineAsyncCallback { my $class = shift; return WebGPU::Direct::CreateRenderPipelineAsyncCallback->new(@_); }
  sub newDepthStencilState { my $class = shift; return WebGPU::Direct::DepthStencilState->new(@_); }
  sub newDevice { my $class = shift; return WebGPU::Direct::Device->new(@_); }
  sub newDeviceDescriptor { my $class = shift; return WebGPU::Direct::DeviceDescriptor->new(@_); }
  sub newDeviceLostCallback { my $class = shift; return WebGPU::Direct::DeviceLostCallback->new(@_); }
  sub newErrorCallback { my $class = shift; return WebGPU::Direct::ErrorCallback->new(@_); }
  sub newExtent3D { my $class = shift; return WebGPU::Direct::Extent3D->new(@_); }
  sub newFragmentState { my $class = shift; return WebGPU::Direct::FragmentState->new(@_); }
  sub newImageCopyBuffer { my $class = shift; return WebGPU::Direct::ImageCopyBuffer->new(@_); }
  sub newImageCopyTexture { my $class = shift; return WebGPU::Direct::ImageCopyTexture->new(@_); }
  sub newInstance { my $class = shift; return WebGPU::Direct::Instance->new(@_); }
  sub newInstanceDescriptor { my $class = shift; return WebGPU::Direct::InstanceDescriptor->new(@_); }
  sub newLimits { my $class = shift; return WebGPU::Direct::Limits->new(@_); }
  sub newMultisampleState { my $class = shift; return WebGPU::Direct::MultisampleState->new(@_); }
  sub newOrigin3D { my $class = shift; return WebGPU::Direct::Origin3D->new(@_); }
  sub newPipelineLayout { my $class = shift; return WebGPU::Direct::PipelineLayout->new(@_); }
  sub newPipelineLayoutDescriptor { my $class = shift; return WebGPU::Direct::PipelineLayoutDescriptor->new(@_); }
  sub newPrimitiveDepthClipControl { my $class = shift; return WebGPU::Direct::PrimitiveDepthClipControl->new(@_); }
  sub newPrimitiveState { my $class = shift; return WebGPU::Direct::PrimitiveState->new(@_); }
  sub newProc { my $class = shift; return WebGPU::Direct::Proc->new(@_); }
  sub newProgrammableStageDescriptor { my $class = shift; return WebGPU::Direct::ProgrammableStageDescriptor->new(@_); }
  sub newQuerySet { my $class = shift; return WebGPU::Direct::QuerySet->new(@_); }
  sub newQuerySetDescriptor { my $class = shift; return WebGPU::Direct::QuerySetDescriptor->new(@_); }
  sub newQueue { my $class = shift; return WebGPU::Direct::Queue->new(@_); }
  sub newQueueDescriptor { my $class = shift; return WebGPU::Direct::QueueDescriptor->new(@_); }
  sub newQueueWorkDoneCallback { my $class = shift; return WebGPU::Direct::QueueWorkDoneCallback->new(@_); }
  sub newRenderBundle { my $class = shift; return WebGPU::Direct::RenderBundle->new(@_); }
  sub newRenderBundleDescriptor { my $class = shift; return WebGPU::Direct::RenderBundleDescriptor->new(@_); }
  sub newRenderBundleEncoder { my $class = shift; return WebGPU::Direct::RenderBundleEncoder->new(@_); }
  sub newRenderBundleEncoderDescriptor { my $class = shift; return WebGPU::Direct::RenderBundleEncoderDescriptor->new(@_); }
  sub newRenderPassColorAttachment { my $class = shift; return WebGPU::Direct::RenderPassColorAttachment->new(@_); }
  sub newRenderPassDepthStencilAttachment { my $class = shift; return WebGPU::Direct::RenderPassDepthStencilAttachment->new(@_); }
  sub newRenderPassDescriptor { my $class = shift; return WebGPU::Direct::RenderPassDescriptor->new(@_); }
  sub newRenderPassDescriptorMaxDrawCount { my $class = shift; return WebGPU::Direct::RenderPassDescriptorMaxDrawCount->new(@_); }
  sub newRenderPassEncoder { my $class = shift; return WebGPU::Direct::RenderPassEncoder->new(@_); }
  sub newRenderPassTimestampWrites { my $class = shift; return WebGPU::Direct::RenderPassTimestampWrites->new(@_); }
  sub newRenderPipeline { my $class = shift; return WebGPU::Direct::RenderPipeline->new(@_); }
  sub newRenderPipelineDescriptor { my $class = shift; return WebGPU::Direct::RenderPipelineDescriptor->new(@_); }
  sub newRequestAdapterCallback { my $class = shift; return WebGPU::Direct::RequestAdapterCallback->new(@_); }
  sub newRequestAdapterOptions { my $class = shift; return WebGPU::Direct::RequestAdapterOptions->new(@_); }
  sub newRequestDeviceCallback { my $class = shift; return WebGPU::Direct::RequestDeviceCallback->new(@_); }
  sub newRequiredLimits { my $class = shift; return WebGPU::Direct::RequiredLimits->new(@_); }
  sub newSampler { my $class = shift; return WebGPU::Direct::Sampler->new(@_); }
  sub newSamplerBindingLayout { my $class = shift; return WebGPU::Direct::SamplerBindingLayout->new(@_); }
  sub newSamplerDescriptor { my $class = shift; return WebGPU::Direct::SamplerDescriptor->new(@_); }
  sub newShaderModule { my $class = shift; return WebGPU::Direct::ShaderModule->new(@_); }
  sub newShaderModuleCompilationHint { my $class = shift; return WebGPU::Direct::ShaderModuleCompilationHint->new(@_); }
  sub newShaderModuleDescriptor { my $class = shift; return WebGPU::Direct::ShaderModuleDescriptor->new(@_); }
  sub newShaderModuleSPIRVDescriptor { my $class = shift; return WebGPU::Direct::ShaderModuleSPIRVDescriptor->new(@_); }
  sub newShaderModuleWGSLDescriptor { my $class = shift; return WebGPU::Direct::ShaderModuleWGSLDescriptor->new(@_); }
  sub newStencilFaceState { my $class = shift; return WebGPU::Direct::StencilFaceState->new(@_); }
  sub newStorageTextureBindingLayout { my $class = shift; return WebGPU::Direct::StorageTextureBindingLayout->new(@_); }
  sub newSupportedLimits { my $class = shift; return WebGPU::Direct::SupportedLimits->new(@_); }
  sub newSurface { my $class = shift; return WebGPU::Direct::Surface->new(@_); }
  sub newSurfaceCapabilities { my $class = shift; return WebGPU::Direct::SurfaceCapabilities->new(@_); }
  sub newSurfaceConfiguration { my $class = shift; return WebGPU::Direct::SurfaceConfiguration->new(@_); }
  sub newSurfaceDescriptor { my $class = shift; return WebGPU::Direct::SurfaceDescriptor->new(@_); }
  sub newSurfaceDescriptorFromAndroidNativeWindow { my $class = shift; return WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow->new(@_); }
  sub newSurfaceDescriptorFromCanvasHTMLSelector { my $class = shift; return WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector->new(@_); }
  sub newSurfaceDescriptorFromMetalLayer { my $class = shift; return WebGPU::Direct::SurfaceDescriptorFromMetalLayer->new(@_); }
  sub newSurfaceDescriptorFromWaylandSurface { my $class = shift; return WebGPU::Direct::SurfaceDescriptorFromWaylandSurface->new(@_); }
  sub newSurfaceDescriptorFromWindowsHWND { my $class = shift; return WebGPU::Direct::SurfaceDescriptorFromWindowsHWND->new(@_); }
  sub newSurfaceDescriptorFromXcbWindow { my $class = shift; return WebGPU::Direct::SurfaceDescriptorFromXcbWindow->new(@_); }
  sub newSurfaceDescriptorFromXlibWindow { my $class = shift; return WebGPU::Direct::SurfaceDescriptorFromXlibWindow->new(@_); }
  sub newSurfaceTexture { my $class = shift; return WebGPU::Direct::SurfaceTexture->new(@_); }
  sub newTexture { my $class = shift; return WebGPU::Direct::Texture->new(@_); }
  sub newTextureBindingLayout { my $class = shift; return WebGPU::Direct::TextureBindingLayout->new(@_); }
  sub newTextureDataLayout { my $class = shift; return WebGPU::Direct::TextureDataLayout->new(@_); }
  sub newTextureDescriptor { my $class = shift; return WebGPU::Direct::TextureDescriptor->new(@_); }
  sub newTextureView { my $class = shift; return WebGPU::Direct::TextureView->new(@_); }
  sub newTextureViewDescriptor { my $class = shift; return WebGPU::Direct::TextureViewDescriptor->new(@_); }
  sub newVertexAttribute { my $class = shift; return WebGPU::Direct::VertexAttribute->new(@_); }
  sub newVertexBufferLayout { my $class = shift; return WebGPU::Direct::VertexBufferLayout->new(@_); }
  sub newVertexState { my $class = shift; return WebGPU::Direct::VertexState->new(@_); }
};

package WebGPU::Direct::AdapterType {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('DiscreteGPU' => (0x00000000, 'WGPUAdapterType_DiscreteGPU'));
  __PACKAGE__->_add_enum('IntegratedGPU' => (0x00000001, 'WGPUAdapterType_IntegratedGPU'));
  __PACKAGE__->_add_enum('CPU' => (0x00000002, 'WGPUAdapterType_CPU'));
  __PACKAGE__->_add_enum('Unknown' => (0x00000003, 'WGPUAdapterType_Unknown'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUAdapterType_Force32'));
  WebGPU::Direct::AdapterType->_build_const_lut;
};

package WebGPU::Direct::AddressMode {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Repeat' => (0x00000000, 'WGPUAddressMode_Repeat'));
  __PACKAGE__->_add_enum('MirrorRepeat' => (0x00000001, 'WGPUAddressMode_MirrorRepeat'));
  __PACKAGE__->_add_enum('ClampToEdge' => (0x00000002, 'WGPUAddressMode_ClampToEdge'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUAddressMode_Force32'));
  WebGPU::Direct::AddressMode->_build_const_lut;
};

package WebGPU::Direct::BackendType {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Undefined' => (0x00000000, 'WGPUBackendType_Undefined'));
  __PACKAGE__->_add_enum('Null' => (0x00000001, 'WGPUBackendType_Null'));
  __PACKAGE__->_add_enum('WebGPU' => (0x00000002, 'WGPUBackendType_WebGPU'));
  __PACKAGE__->_add_enum('D3D11' => (0x00000003, 'WGPUBackendType_D3D11'));
  __PACKAGE__->_add_enum('D3D12' => (0x00000004, 'WGPUBackendType_D3D12'));
  __PACKAGE__->_add_enum('Metal' => (0x00000005, 'WGPUBackendType_Metal'));
  __PACKAGE__->_add_enum('Vulkan' => (0x00000006, 'WGPUBackendType_Vulkan'));
  __PACKAGE__->_add_enum('OpenGL' => (0x00000007, 'WGPUBackendType_OpenGL'));
  __PACKAGE__->_add_enum('OpenGLES' => (0x00000008, 'WGPUBackendType_OpenGLES'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUBackendType_Force32'));
  WebGPU::Direct::BackendType->_build_const_lut;
};

package WebGPU::Direct::BlendFactor {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Zero' => (0x00000000, 'WGPUBlendFactor_Zero'));
  __PACKAGE__->_add_enum('One' => (0x00000001, 'WGPUBlendFactor_One'));
  __PACKAGE__->_add_enum('Src' => (0x00000002, 'WGPUBlendFactor_Src'));
  __PACKAGE__->_add_enum('OneMinusSrc' => (0x00000003, 'WGPUBlendFactor_OneMinusSrc'));
  __PACKAGE__->_add_enum('SrcAlpha' => (0x00000004, 'WGPUBlendFactor_SrcAlpha'));
  __PACKAGE__->_add_enum('OneMinusSrcAlpha' => (0x00000005, 'WGPUBlendFactor_OneMinusSrcAlpha'));
  __PACKAGE__->_add_enum('Dst' => (0x00000006, 'WGPUBlendFactor_Dst'));
  __PACKAGE__->_add_enum('OneMinusDst' => (0x00000007, 'WGPUBlendFactor_OneMinusDst'));
  __PACKAGE__->_add_enum('DstAlpha' => (0x00000008, 'WGPUBlendFactor_DstAlpha'));
  __PACKAGE__->_add_enum('OneMinusDstAlpha' => (0x00000009, 'WGPUBlendFactor_OneMinusDstAlpha'));
  __PACKAGE__->_add_enum('SrcAlphaSaturated' => (0x0000000A, 'WGPUBlendFactor_SrcAlphaSaturated'));
  __PACKAGE__->_add_enum('Constant' => (0x0000000B, 'WGPUBlendFactor_Constant'));
  __PACKAGE__->_add_enum('OneMinusConstant' => (0x0000000C, 'WGPUBlendFactor_OneMinusConstant'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUBlendFactor_Force32'));
  WebGPU::Direct::BlendFactor->_build_const_lut;
};

package WebGPU::Direct::BlendOperation {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Add' => (0x00000000, 'WGPUBlendOperation_Add'));
  __PACKAGE__->_add_enum('Subtract' => (0x00000001, 'WGPUBlendOperation_Subtract'));
  __PACKAGE__->_add_enum('ReverseSubtract' => (0x00000002, 'WGPUBlendOperation_ReverseSubtract'));
  __PACKAGE__->_add_enum('Min' => (0x00000003, 'WGPUBlendOperation_Min'));
  __PACKAGE__->_add_enum('Max' => (0x00000004, 'WGPUBlendOperation_Max'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUBlendOperation_Force32'));
  WebGPU::Direct::BlendOperation->_build_const_lut;
};

package WebGPU::Direct::BufferBindingType {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Undefined' => (0x00000000, 'WGPUBufferBindingType_Undefined'));
  __PACKAGE__->_add_enum('Uniform' => (0x00000001, 'WGPUBufferBindingType_Uniform'));
  __PACKAGE__->_add_enum('Storage' => (0x00000002, 'WGPUBufferBindingType_Storage'));
  __PACKAGE__->_add_enum('ReadOnlyStorage' => (0x00000003, 'WGPUBufferBindingType_ReadOnlyStorage'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUBufferBindingType_Force32'));
  WebGPU::Direct::BufferBindingType->_build_const_lut;
};

package WebGPU::Direct::BufferMapAsyncStatus {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Success' => (0x00000000, 'WGPUBufferMapAsyncStatus_Success'));
  __PACKAGE__->_add_enum('ValidationError' => (0x00000001, 'WGPUBufferMapAsyncStatus_ValidationError'));
  __PACKAGE__->_add_enum('Unknown' => (0x00000002, 'WGPUBufferMapAsyncStatus_Unknown'));
  __PACKAGE__->_add_enum('DeviceLost' => (0x00000003, 'WGPUBufferMapAsyncStatus_DeviceLost'));
  __PACKAGE__->_add_enum('DestroyedBeforeCallback' => (0x00000004, 'WGPUBufferMapAsyncStatus_DestroyedBeforeCallback'));
  __PACKAGE__->_add_enum('UnmappedBeforeCallback' => (0x00000005, 'WGPUBufferMapAsyncStatus_UnmappedBeforeCallback'));
  __PACKAGE__->_add_enum('MappingAlreadyPending' => (0x00000006, 'WGPUBufferMapAsyncStatus_MappingAlreadyPending'));
  __PACKAGE__->_add_enum('OffsetOutOfRange' => (0x00000007, 'WGPUBufferMapAsyncStatus_OffsetOutOfRange'));
  __PACKAGE__->_add_enum('SizeOutOfRange' => (0x00000008, 'WGPUBufferMapAsyncStatus_SizeOutOfRange'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUBufferMapAsyncStatus_Force32'));
  WebGPU::Direct::BufferMapAsyncStatus->_build_const_lut;
};

package WebGPU::Direct::BufferMapState {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Unmapped' => (0x00000000, 'WGPUBufferMapState_Unmapped'));
  __PACKAGE__->_add_enum('Pending' => (0x00000001, 'WGPUBufferMapState_Pending'));
  __PACKAGE__->_add_enum('Mapped' => (0x00000002, 'WGPUBufferMapState_Mapped'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUBufferMapState_Force32'));
  WebGPU::Direct::BufferMapState->_build_const_lut;
};

package WebGPU::Direct::BufferUsage {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('None' => (0x00000000, 'WGPUBufferUsage_None'));
  __PACKAGE__->_add_enum('MapRead' => (0x00000001, 'WGPUBufferUsage_MapRead'));
  __PACKAGE__->_add_enum('MapWrite' => (0x00000002, 'WGPUBufferUsage_MapWrite'));
  __PACKAGE__->_add_enum('CopySrc' => (0x00000004, 'WGPUBufferUsage_CopySrc'));
  __PACKAGE__->_add_enum('CopyDst' => (0x00000008, 'WGPUBufferUsage_CopyDst'));
  __PACKAGE__->_add_enum('Index' => (0x00000010, 'WGPUBufferUsage_Index'));
  __PACKAGE__->_add_enum('Vertex' => (0x00000020, 'WGPUBufferUsage_Vertex'));
  __PACKAGE__->_add_enum('Uniform' => (0x00000040, 'WGPUBufferUsage_Uniform'));
  __PACKAGE__->_add_enum('Storage' => (0x00000080, 'WGPUBufferUsage_Storage'));
  __PACKAGE__->_add_enum('Indirect' => (0x00000100, 'WGPUBufferUsage_Indirect'));
  __PACKAGE__->_add_enum('QueryResolve' => (0x00000200, 'WGPUBufferUsage_QueryResolve'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUBufferUsage_Force32'));
  WebGPU::Direct::BufferUsage->_build_const_lut;
};

package WebGPU::Direct::ColorWriteMask {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('None' => (0x00000000, 'WGPUColorWriteMask_None'));
  __PACKAGE__->_add_enum('Red' => (0x00000001, 'WGPUColorWriteMask_Red'));
  __PACKAGE__->_add_enum('Green' => (0x00000002, 'WGPUColorWriteMask_Green'));
  __PACKAGE__->_add_enum('Blue' => (0x00000004, 'WGPUColorWriteMask_Blue'));
  __PACKAGE__->_add_enum('Alpha' => (0x00000008, 'WGPUColorWriteMask_Alpha'));
  __PACKAGE__->_add_enum('All' => (0x0000000F, 'WGPUColorWriteMask_All'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUColorWriteMask_Force32'));
  WebGPU::Direct::ColorWriteMask->_build_const_lut;
};

package WebGPU::Direct::CompareFunction {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Undefined' => (0x00000000, 'WGPUCompareFunction_Undefined'));
  __PACKAGE__->_add_enum('Never' => (0x00000001, 'WGPUCompareFunction_Never'));
  __PACKAGE__->_add_enum('Less' => (0x00000002, 'WGPUCompareFunction_Less'));
  __PACKAGE__->_add_enum('LessEqual' => (0x00000003, 'WGPUCompareFunction_LessEqual'));
  __PACKAGE__->_add_enum('Greater' => (0x00000004, 'WGPUCompareFunction_Greater'));
  __PACKAGE__->_add_enum('GreaterEqual' => (0x00000005, 'WGPUCompareFunction_GreaterEqual'));
  __PACKAGE__->_add_enum('Equal' => (0x00000006, 'WGPUCompareFunction_Equal'));
  __PACKAGE__->_add_enum('NotEqual' => (0x00000007, 'WGPUCompareFunction_NotEqual'));
  __PACKAGE__->_add_enum('Always' => (0x00000008, 'WGPUCompareFunction_Always'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUCompareFunction_Force32'));
  WebGPU::Direct::CompareFunction->_build_const_lut;
};

package WebGPU::Direct::CompilationInfoRequestStatus {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Success' => (0x00000000, 'WGPUCompilationInfoRequestStatus_Success'));
  __PACKAGE__->_add_enum('Error' => (0x00000001, 'WGPUCompilationInfoRequestStatus_Error'));
  __PACKAGE__->_add_enum('DeviceLost' => (0x00000002, 'WGPUCompilationInfoRequestStatus_DeviceLost'));
  __PACKAGE__->_add_enum('Unknown' => (0x00000003, 'WGPUCompilationInfoRequestStatus_Unknown'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUCompilationInfoRequestStatus_Force32'));
  WebGPU::Direct::CompilationInfoRequestStatus->_build_const_lut;
};

package WebGPU::Direct::CompilationMessageType {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Error' => (0x00000000, 'WGPUCompilationMessageType_Error'));
  __PACKAGE__->_add_enum('Warning' => (0x00000001, 'WGPUCompilationMessageType_Warning'));
  __PACKAGE__->_add_enum('Info' => (0x00000002, 'WGPUCompilationMessageType_Info'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUCompilationMessageType_Force32'));
  WebGPU::Direct::CompilationMessageType->_build_const_lut;
};

package WebGPU::Direct::CompositeAlphaMode {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Auto' => (0x00000000, 'WGPUCompositeAlphaMode_Auto'));
  __PACKAGE__->_add_enum('Opaque' => (0x00000001, 'WGPUCompositeAlphaMode_Opaque'));
  __PACKAGE__->_add_enum('Premultiplied' => (0x00000002, 'WGPUCompositeAlphaMode_Premultiplied'));
  __PACKAGE__->_add_enum('Unpremultiplied' => (0x00000003, 'WGPUCompositeAlphaMode_Unpremultiplied'));
  __PACKAGE__->_add_enum('Inherit' => (0x00000004, 'WGPUCompositeAlphaMode_Inherit'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUCompositeAlphaMode_Force32'));
  WebGPU::Direct::CompositeAlphaMode->_build_const_lut;
};

package WebGPU::Direct::CreatePipelineAsyncStatus {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Success' => (0x00000000, 'WGPUCreatePipelineAsyncStatus_Success'));
  __PACKAGE__->_add_enum('ValidationError' => (0x00000001, 'WGPUCreatePipelineAsyncStatus_ValidationError'));
  __PACKAGE__->_add_enum('InternalError' => (0x00000002, 'WGPUCreatePipelineAsyncStatus_InternalError'));
  __PACKAGE__->_add_enum('DeviceLost' => (0x00000003, 'WGPUCreatePipelineAsyncStatus_DeviceLost'));
  __PACKAGE__->_add_enum('DeviceDestroyed' => (0x00000004, 'WGPUCreatePipelineAsyncStatus_DeviceDestroyed'));
  __PACKAGE__->_add_enum('Unknown' => (0x00000005, 'WGPUCreatePipelineAsyncStatus_Unknown'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUCreatePipelineAsyncStatus_Force32'));
  WebGPU::Direct::CreatePipelineAsyncStatus->_build_const_lut;
};

package WebGPU::Direct::CullMode {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('None' => (0x00000000, 'WGPUCullMode_None'));
  __PACKAGE__->_add_enum('Front' => (0x00000001, 'WGPUCullMode_Front'));
  __PACKAGE__->_add_enum('Back' => (0x00000002, 'WGPUCullMode_Back'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUCullMode_Force32'));
  WebGPU::Direct::CullMode->_build_const_lut;
};

package WebGPU::Direct::DeviceLostReason {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Undefined' => (0x00000000, 'WGPUDeviceLostReason_Undefined'));
  __PACKAGE__->_add_enum('Destroyed' => (0x00000001, 'WGPUDeviceLostReason_Destroyed'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUDeviceLostReason_Force32'));
  WebGPU::Direct::DeviceLostReason->_build_const_lut;
};

package WebGPU::Direct::ErrorFilter {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Validation' => (0x00000000, 'WGPUErrorFilter_Validation'));
  __PACKAGE__->_add_enum('OutOfMemory' => (0x00000001, 'WGPUErrorFilter_OutOfMemory'));
  __PACKAGE__->_add_enum('Internal' => (0x00000002, 'WGPUErrorFilter_Internal'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUErrorFilter_Force32'));
  WebGPU::Direct::ErrorFilter->_build_const_lut;
};

package WebGPU::Direct::ErrorType {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('NoError' => (0x00000000, 'WGPUErrorType_NoError'));
  __PACKAGE__->_add_enum('Validation' => (0x00000001, 'WGPUErrorType_Validation'));
  __PACKAGE__->_add_enum('OutOfMemory' => (0x00000002, 'WGPUErrorType_OutOfMemory'));
  __PACKAGE__->_add_enum('Internal' => (0x00000003, 'WGPUErrorType_Internal'));
  __PACKAGE__->_add_enum('Unknown' => (0x00000004, 'WGPUErrorType_Unknown'));
  __PACKAGE__->_add_enum('DeviceLost' => (0x00000005, 'WGPUErrorType_DeviceLost'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUErrorType_Force32'));
  WebGPU::Direct::ErrorType->_build_const_lut;
};

package WebGPU::Direct::FeatureName {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Undefined' => (0x00000000, 'WGPUFeatureName_Undefined'));
  __PACKAGE__->_add_enum('DepthClipControl' => (0x00000001, 'WGPUFeatureName_DepthClipControl'));
  __PACKAGE__->_add_enum('Depth32FloatStencil8' => (0x00000002, 'WGPUFeatureName_Depth32FloatStencil8'));
  __PACKAGE__->_add_enum('TimestampQuery' => (0x00000003, 'WGPUFeatureName_TimestampQuery'));
  __PACKAGE__->_add_enum('TextureCompressionBC' => (0x00000004, 'WGPUFeatureName_TextureCompressionBC'));
  __PACKAGE__->_add_enum('TextureCompressionETC2' => (0x00000005, 'WGPUFeatureName_TextureCompressionETC2'));
  __PACKAGE__->_add_enum('TextureCompressionASTC' => (0x00000006, 'WGPUFeatureName_TextureCompressionASTC'));
  __PACKAGE__->_add_enum('IndirectFirstInstance' => (0x00000007, 'WGPUFeatureName_IndirectFirstInstance'));
  __PACKAGE__->_add_enum('ShaderF16' => (0x00000008, 'WGPUFeatureName_ShaderF16'));
  __PACKAGE__->_add_enum('RG11B10UfloatRenderable' => (0x00000009, 'WGPUFeatureName_RG11B10UfloatRenderable'));
  __PACKAGE__->_add_enum('BGRA8UnormStorage' => (0x0000000A, 'WGPUFeatureName_BGRA8UnormStorage'));
  __PACKAGE__->_add_enum('Float32Filterable' => (0x0000000B, 'WGPUFeatureName_Float32Filterable'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUFeatureName_Force32'));
  WebGPU::Direct::FeatureName->_build_const_lut;
};

package WebGPU::Direct::FilterMode {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Nearest' => (0x00000000, 'WGPUFilterMode_Nearest'));
  __PACKAGE__->_add_enum('Linear' => (0x00000001, 'WGPUFilterMode_Linear'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUFilterMode_Force32'));
  WebGPU::Direct::FilterMode->_build_const_lut;
};

package WebGPU::Direct::FrontFace {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('CCW' => (0x00000000, 'WGPUFrontFace_CCW'));
  __PACKAGE__->_add_enum('CW' => (0x00000001, 'WGPUFrontFace_CW'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUFrontFace_Force32'));
  WebGPU::Direct::FrontFace->_build_const_lut;
};

package WebGPU::Direct::IndexFormat {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Undefined' => (0x00000000, 'WGPUIndexFormat_Undefined'));
  __PACKAGE__->_add_enum('Uint16' => (0x00000001, 'WGPUIndexFormat_Uint16'));
  __PACKAGE__->_add_enum('Uint32' => (0x00000002, 'WGPUIndexFormat_Uint32'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUIndexFormat_Force32'));
  WebGPU::Direct::IndexFormat->_build_const_lut;
};

package WebGPU::Direct::LoadOp {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Undefined' => (0x00000000, 'WGPULoadOp_Undefined'));
  __PACKAGE__->_add_enum('Clear' => (0x00000001, 'WGPULoadOp_Clear'));
  __PACKAGE__->_add_enum('Load' => (0x00000002, 'WGPULoadOp_Load'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPULoadOp_Force32'));
  WebGPU::Direct::LoadOp->_build_const_lut;
};

package WebGPU::Direct::MapMode {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('None' => (0x00000000, 'WGPUMapMode_None'));
  __PACKAGE__->_add_enum('Read' => (0x00000001, 'WGPUMapMode_Read'));
  __PACKAGE__->_add_enum('Write' => (0x00000002, 'WGPUMapMode_Write'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUMapMode_Force32'));
  WebGPU::Direct::MapMode->_build_const_lut;
};

package WebGPU::Direct::MipmapFilterMode {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Nearest' => (0x00000000, 'WGPUMipmapFilterMode_Nearest'));
  __PACKAGE__->_add_enum('Linear' => (0x00000001, 'WGPUMipmapFilterMode_Linear'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUMipmapFilterMode_Force32'));
  WebGPU::Direct::MipmapFilterMode->_build_const_lut;
};

package WebGPU::Direct::PowerPreference {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Undefined' => (0x00000000, 'WGPUPowerPreference_Undefined'));
  __PACKAGE__->_add_enum('LowPower' => (0x00000001, 'WGPUPowerPreference_LowPower'));
  __PACKAGE__->_add_enum('HighPerformance' => (0x00000002, 'WGPUPowerPreference_HighPerformance'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUPowerPreference_Force32'));
  WebGPU::Direct::PowerPreference->_build_const_lut;
};

package WebGPU::Direct::PresentMode {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Fifo' => (0x00000000, 'WGPUPresentMode_Fifo'));
  __PACKAGE__->_add_enum('FifoRelaxed' => (0x00000001, 'WGPUPresentMode_FifoRelaxed'));
  __PACKAGE__->_add_enum('Immediate' => (0x00000002, 'WGPUPresentMode_Immediate'));
  __PACKAGE__->_add_enum('Mailbox' => (0x00000003, 'WGPUPresentMode_Mailbox'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUPresentMode_Force32'));
  WebGPU::Direct::PresentMode->_build_const_lut;
};

package WebGPU::Direct::PrimitiveTopology {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('PointList' => (0x00000000, 'WGPUPrimitiveTopology_PointList'));
  __PACKAGE__->_add_enum('LineList' => (0x00000001, 'WGPUPrimitiveTopology_LineList'));
  __PACKAGE__->_add_enum('LineStrip' => (0x00000002, 'WGPUPrimitiveTopology_LineStrip'));
  __PACKAGE__->_add_enum('TriangleList' => (0x00000003, 'WGPUPrimitiveTopology_TriangleList'));
  __PACKAGE__->_add_enum('TriangleStrip' => (0x00000004, 'WGPUPrimitiveTopology_TriangleStrip'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUPrimitiveTopology_Force32'));
  WebGPU::Direct::PrimitiveTopology->_build_const_lut;
};

package WebGPU::Direct::QueryType {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Occlusion' => (0x00000000, 'WGPUQueryType_Occlusion'));
  __PACKAGE__->_add_enum('Timestamp' => (0x00000001, 'WGPUQueryType_Timestamp'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUQueryType_Force32'));
  WebGPU::Direct::QueryType->_build_const_lut;
};

package WebGPU::Direct::QueueWorkDoneStatus {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Success' => (0x00000000, 'WGPUQueueWorkDoneStatus_Success'));
  __PACKAGE__->_add_enum('Error' => (0x00000001, 'WGPUQueueWorkDoneStatus_Error'));
  __PACKAGE__->_add_enum('Unknown' => (0x00000002, 'WGPUQueueWorkDoneStatus_Unknown'));
  __PACKAGE__->_add_enum('DeviceLost' => (0x00000003, 'WGPUQueueWorkDoneStatus_DeviceLost'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUQueueWorkDoneStatus_Force32'));
  WebGPU::Direct::QueueWorkDoneStatus->_build_const_lut;
};

package WebGPU::Direct::RequestAdapterStatus {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Success' => (0x00000000, 'WGPURequestAdapterStatus_Success'));
  __PACKAGE__->_add_enum('Unavailable' => (0x00000001, 'WGPURequestAdapterStatus_Unavailable'));
  __PACKAGE__->_add_enum('Error' => (0x00000002, 'WGPURequestAdapterStatus_Error'));
  __PACKAGE__->_add_enum('Unknown' => (0x00000003, 'WGPURequestAdapterStatus_Unknown'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPURequestAdapterStatus_Force32'));
  WebGPU::Direct::RequestAdapterStatus->_build_const_lut;
};

package WebGPU::Direct::RequestDeviceStatus {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Success' => (0x00000000, 'WGPURequestDeviceStatus_Success'));
  __PACKAGE__->_add_enum('Error' => (0x00000001, 'WGPURequestDeviceStatus_Error'));
  __PACKAGE__->_add_enum('Unknown' => (0x00000002, 'WGPURequestDeviceStatus_Unknown'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPURequestDeviceStatus_Force32'));
  WebGPU::Direct::RequestDeviceStatus->_build_const_lut;
};

package WebGPU::Direct::SType {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Invalid' => (0x00000000, 'WGPUSType_Invalid'));
  __PACKAGE__->_add_enum('SurfaceDescriptorFromMetalLayer' => (0x00000001, 'WGPUSType_SurfaceDescriptorFromMetalLayer'));
  __PACKAGE__->_add_enum('SurfaceDescriptorFromWindowsHWND' => (0x00000002, 'WGPUSType_SurfaceDescriptorFromWindowsHWND'));
  __PACKAGE__->_add_enum('SurfaceDescriptorFromXlibWindow' => (0x00000003, 'WGPUSType_SurfaceDescriptorFromXlibWindow'));
  __PACKAGE__->_add_enum('SurfaceDescriptorFromCanvasHTMLSelector' => (0x00000004, 'WGPUSType_SurfaceDescriptorFromCanvasHTMLSelector'));
  __PACKAGE__->_add_enum('ShaderModuleSPIRVDescriptor' => (0x00000005, 'WGPUSType_ShaderModuleSPIRVDescriptor'));
  __PACKAGE__->_add_enum('ShaderModuleWGSLDescriptor' => (0x00000006, 'WGPUSType_ShaderModuleWGSLDescriptor'));
  __PACKAGE__->_add_enum('PrimitiveDepthClipControl' => (0x00000007, 'WGPUSType_PrimitiveDepthClipControl'));
  __PACKAGE__->_add_enum('SurfaceDescriptorFromWaylandSurface' => (0x00000008, 'WGPUSType_SurfaceDescriptorFromWaylandSurface'));
  __PACKAGE__->_add_enum('SurfaceDescriptorFromAndroidNativeWindow' => (0x00000009, 'WGPUSType_SurfaceDescriptorFromAndroidNativeWindow'));
  __PACKAGE__->_add_enum('SurfaceDescriptorFromXcbWindow' => (0x0000000A, 'WGPUSType_SurfaceDescriptorFromXcbWindow'));
  __PACKAGE__->_add_enum('RenderPassDescriptorMaxDrawCount' => (0x0000000F, 'WGPUSType_RenderPassDescriptorMaxDrawCount'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUSType_Force32'));
  WebGPU::Direct::SType->_build_const_lut;
};

package WebGPU::Direct::SamplerBindingType {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Undefined' => (0x00000000, 'WGPUSamplerBindingType_Undefined'));
  __PACKAGE__->_add_enum('Filtering' => (0x00000001, 'WGPUSamplerBindingType_Filtering'));
  __PACKAGE__->_add_enum('NonFiltering' => (0x00000002, 'WGPUSamplerBindingType_NonFiltering'));
  __PACKAGE__->_add_enum('Comparison' => (0x00000003, 'WGPUSamplerBindingType_Comparison'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUSamplerBindingType_Force32'));
  WebGPU::Direct::SamplerBindingType->_build_const_lut;
};

package WebGPU::Direct::ShaderStage {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('None' => (0x00000000, 'WGPUShaderStage_None'));
  __PACKAGE__->_add_enum('Vertex' => (0x00000001, 'WGPUShaderStage_Vertex'));
  __PACKAGE__->_add_enum('Fragment' => (0x00000002, 'WGPUShaderStage_Fragment'));
  __PACKAGE__->_add_enum('Compute' => (0x00000004, 'WGPUShaderStage_Compute'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUShaderStage_Force32'));
  WebGPU::Direct::ShaderStage->_build_const_lut;
};

package WebGPU::Direct::StencilOperation {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Keep' => (0x00000000, 'WGPUStencilOperation_Keep'));
  __PACKAGE__->_add_enum('Zero' => (0x00000001, 'WGPUStencilOperation_Zero'));
  __PACKAGE__->_add_enum('Replace' => (0x00000002, 'WGPUStencilOperation_Replace'));
  __PACKAGE__->_add_enum('Invert' => (0x00000003, 'WGPUStencilOperation_Invert'));
  __PACKAGE__->_add_enum('IncrementClamp' => (0x00000004, 'WGPUStencilOperation_IncrementClamp'));
  __PACKAGE__->_add_enum('DecrementClamp' => (0x00000005, 'WGPUStencilOperation_DecrementClamp'));
  __PACKAGE__->_add_enum('IncrementWrap' => (0x00000006, 'WGPUStencilOperation_IncrementWrap'));
  __PACKAGE__->_add_enum('DecrementWrap' => (0x00000007, 'WGPUStencilOperation_DecrementWrap'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUStencilOperation_Force32'));
  WebGPU::Direct::StencilOperation->_build_const_lut;
};

package WebGPU::Direct::StorageTextureAccess {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Undefined' => (0x00000000, 'WGPUStorageTextureAccess_Undefined'));
  __PACKAGE__->_add_enum('WriteOnly' => (0x00000001, 'WGPUStorageTextureAccess_WriteOnly'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUStorageTextureAccess_Force32'));
  WebGPU::Direct::StorageTextureAccess->_build_const_lut;
};

package WebGPU::Direct::StoreOp {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Undefined' => (0x00000000, 'WGPUStoreOp_Undefined'));
  __PACKAGE__->_add_enum('Store' => (0x00000001, 'WGPUStoreOp_Store'));
  __PACKAGE__->_add_enum('Discard' => (0x00000002, 'WGPUStoreOp_Discard'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUStoreOp_Force32'));
  WebGPU::Direct::StoreOp->_build_const_lut;
};

package WebGPU::Direct::SurfaceGetCurrentTextureStatus {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Success' => (0x00000000, 'WGPUSurfaceGetCurrentTextureStatus_Success'));
  __PACKAGE__->_add_enum('Timeout' => (0x00000001, 'WGPUSurfaceGetCurrentTextureStatus_Timeout'));
  __PACKAGE__->_add_enum('Outdated' => (0x00000002, 'WGPUSurfaceGetCurrentTextureStatus_Outdated'));
  __PACKAGE__->_add_enum('Lost' => (0x00000003, 'WGPUSurfaceGetCurrentTextureStatus_Lost'));
  __PACKAGE__->_add_enum('OutOfMemory' => (0x00000004, 'WGPUSurfaceGetCurrentTextureStatus_OutOfMemory'));
  __PACKAGE__->_add_enum('DeviceLost' => (0x00000005, 'WGPUSurfaceGetCurrentTextureStatus_DeviceLost'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUSurfaceGetCurrentTextureStatus_Force32'));
  WebGPU::Direct::SurfaceGetCurrentTextureStatus->_build_const_lut;
};

package WebGPU::Direct::TextureAspect {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('All' => (0x00000000, 'WGPUTextureAspect_All'));
  __PACKAGE__->_add_enum('StencilOnly' => (0x00000001, 'WGPUTextureAspect_StencilOnly'));
  __PACKAGE__->_add_enum('DepthOnly' => (0x00000002, 'WGPUTextureAspect_DepthOnly'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUTextureAspect_Force32'));
  WebGPU::Direct::TextureAspect->_build_const_lut;
};

package WebGPU::Direct::TextureDimension {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('_1D' => (0x00000000, 'WGPUTextureDimension_1D'));
  __PACKAGE__->_add_enum('_2D' => (0x00000001, 'WGPUTextureDimension_2D'));
  __PACKAGE__->_add_enum('_3D' => (0x00000002, 'WGPUTextureDimension_3D'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUTextureDimension_Force32'));
  WebGPU::Direct::TextureDimension->_build_const_lut;
};

package WebGPU::Direct::TextureFormat {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Undefined' => (0x00000000, 'WGPUTextureFormat_Undefined'));
  __PACKAGE__->_add_enum('R8Unorm' => (0x00000001, 'WGPUTextureFormat_R8Unorm'));
  __PACKAGE__->_add_enum('R8Snorm' => (0x00000002, 'WGPUTextureFormat_R8Snorm'));
  __PACKAGE__->_add_enum('R8Uint' => (0x00000003, 'WGPUTextureFormat_R8Uint'));
  __PACKAGE__->_add_enum('R8Sint' => (0x00000004, 'WGPUTextureFormat_R8Sint'));
  __PACKAGE__->_add_enum('R16Uint' => (0x00000005, 'WGPUTextureFormat_R16Uint'));
  __PACKAGE__->_add_enum('R16Sint' => (0x00000006, 'WGPUTextureFormat_R16Sint'));
  __PACKAGE__->_add_enum('R16Float' => (0x00000007, 'WGPUTextureFormat_R16Float'));
  __PACKAGE__->_add_enum('RG8Unorm' => (0x00000008, 'WGPUTextureFormat_RG8Unorm'));
  __PACKAGE__->_add_enum('RG8Snorm' => (0x00000009, 'WGPUTextureFormat_RG8Snorm'));
  __PACKAGE__->_add_enum('RG8Uint' => (0x0000000A, 'WGPUTextureFormat_RG8Uint'));
  __PACKAGE__->_add_enum('RG8Sint' => (0x0000000B, 'WGPUTextureFormat_RG8Sint'));
  __PACKAGE__->_add_enum('R32Float' => (0x0000000C, 'WGPUTextureFormat_R32Float'));
  __PACKAGE__->_add_enum('R32Uint' => (0x0000000D, 'WGPUTextureFormat_R32Uint'));
  __PACKAGE__->_add_enum('R32Sint' => (0x0000000E, 'WGPUTextureFormat_R32Sint'));
  __PACKAGE__->_add_enum('RG16Uint' => (0x0000000F, 'WGPUTextureFormat_RG16Uint'));
  __PACKAGE__->_add_enum('RG16Sint' => (0x00000010, 'WGPUTextureFormat_RG16Sint'));
  __PACKAGE__->_add_enum('RG16Float' => (0x00000011, 'WGPUTextureFormat_RG16Float'));
  __PACKAGE__->_add_enum('RGBA8Unorm' => (0x00000012, 'WGPUTextureFormat_RGBA8Unorm'));
  __PACKAGE__->_add_enum('RGBA8UnormSrgb' => (0x00000013, 'WGPUTextureFormat_RGBA8UnormSrgb'));
  __PACKAGE__->_add_enum('RGBA8Snorm' => (0x00000014, 'WGPUTextureFormat_RGBA8Snorm'));
  __PACKAGE__->_add_enum('RGBA8Uint' => (0x00000015, 'WGPUTextureFormat_RGBA8Uint'));
  __PACKAGE__->_add_enum('RGBA8Sint' => (0x00000016, 'WGPUTextureFormat_RGBA8Sint'));
  __PACKAGE__->_add_enum('BGRA8Unorm' => (0x00000017, 'WGPUTextureFormat_BGRA8Unorm'));
  __PACKAGE__->_add_enum('BGRA8UnormSrgb' => (0x00000018, 'WGPUTextureFormat_BGRA8UnormSrgb'));
  __PACKAGE__->_add_enum('RGB10A2Unorm' => (0x00000019, 'WGPUTextureFormat_RGB10A2Unorm'));
  __PACKAGE__->_add_enum('RG11B10Ufloat' => (0x0000001A, 'WGPUTextureFormat_RG11B10Ufloat'));
  __PACKAGE__->_add_enum('RGB9E5Ufloat' => (0x0000001B, 'WGPUTextureFormat_RGB9E5Ufloat'));
  __PACKAGE__->_add_enum('RG32Float' => (0x0000001C, 'WGPUTextureFormat_RG32Float'));
  __PACKAGE__->_add_enum('RG32Uint' => (0x0000001D, 'WGPUTextureFormat_RG32Uint'));
  __PACKAGE__->_add_enum('RG32Sint' => (0x0000001E, 'WGPUTextureFormat_RG32Sint'));
  __PACKAGE__->_add_enum('RGBA16Uint' => (0x0000001F, 'WGPUTextureFormat_RGBA16Uint'));
  __PACKAGE__->_add_enum('RGBA16Sint' => (0x00000020, 'WGPUTextureFormat_RGBA16Sint'));
  __PACKAGE__->_add_enum('RGBA16Float' => (0x00000021, 'WGPUTextureFormat_RGBA16Float'));
  __PACKAGE__->_add_enum('RGBA32Float' => (0x00000022, 'WGPUTextureFormat_RGBA32Float'));
  __PACKAGE__->_add_enum('RGBA32Uint' => (0x00000023, 'WGPUTextureFormat_RGBA32Uint'));
  __PACKAGE__->_add_enum('RGBA32Sint' => (0x00000024, 'WGPUTextureFormat_RGBA32Sint'));
  __PACKAGE__->_add_enum('Stencil8' => (0x00000025, 'WGPUTextureFormat_Stencil8'));
  __PACKAGE__->_add_enum('Depth16Unorm' => (0x00000026, 'WGPUTextureFormat_Depth16Unorm'));
  __PACKAGE__->_add_enum('Depth24Plus' => (0x00000027, 'WGPUTextureFormat_Depth24Plus'));
  __PACKAGE__->_add_enum('Depth24PlusStencil8' => (0x00000028, 'WGPUTextureFormat_Depth24PlusStencil8'));
  __PACKAGE__->_add_enum('Depth32Float' => (0x00000029, 'WGPUTextureFormat_Depth32Float'));
  __PACKAGE__->_add_enum('Depth32FloatStencil8' => (0x0000002A, 'WGPUTextureFormat_Depth32FloatStencil8'));
  __PACKAGE__->_add_enum('BC1RGBAUnorm' => (0x0000002B, 'WGPUTextureFormat_BC1RGBAUnorm'));
  __PACKAGE__->_add_enum('BC1RGBAUnormSrgb' => (0x0000002C, 'WGPUTextureFormat_BC1RGBAUnormSrgb'));
  __PACKAGE__->_add_enum('BC2RGBAUnorm' => (0x0000002D, 'WGPUTextureFormat_BC2RGBAUnorm'));
  __PACKAGE__->_add_enum('BC2RGBAUnormSrgb' => (0x0000002E, 'WGPUTextureFormat_BC2RGBAUnormSrgb'));
  __PACKAGE__->_add_enum('BC3RGBAUnorm' => (0x0000002F, 'WGPUTextureFormat_BC3RGBAUnorm'));
  __PACKAGE__->_add_enum('BC3RGBAUnormSrgb' => (0x00000030, 'WGPUTextureFormat_BC3RGBAUnormSrgb'));
  __PACKAGE__->_add_enum('BC4RUnorm' => (0x00000031, 'WGPUTextureFormat_BC4RUnorm'));
  __PACKAGE__->_add_enum('BC4RSnorm' => (0x00000032, 'WGPUTextureFormat_BC4RSnorm'));
  __PACKAGE__->_add_enum('BC5RGUnorm' => (0x00000033, 'WGPUTextureFormat_BC5RGUnorm'));
  __PACKAGE__->_add_enum('BC5RGSnorm' => (0x00000034, 'WGPUTextureFormat_BC5RGSnorm'));
  __PACKAGE__->_add_enum('BC6HRGBUfloat' => (0x00000035, 'WGPUTextureFormat_BC6HRGBUfloat'));
  __PACKAGE__->_add_enum('BC6HRGBFloat' => (0x00000036, 'WGPUTextureFormat_BC6HRGBFloat'));
  __PACKAGE__->_add_enum('BC7RGBAUnorm' => (0x00000037, 'WGPUTextureFormat_BC7RGBAUnorm'));
  __PACKAGE__->_add_enum('BC7RGBAUnormSrgb' => (0x00000038, 'WGPUTextureFormat_BC7RGBAUnormSrgb'));
  __PACKAGE__->_add_enum('ETC2RGB8Unorm' => (0x00000039, 'WGPUTextureFormat_ETC2RGB8Unorm'));
  __PACKAGE__->_add_enum('ETC2RGB8UnormSrgb' => (0x0000003A, 'WGPUTextureFormat_ETC2RGB8UnormSrgb'));
  __PACKAGE__->_add_enum('ETC2RGB8A1Unorm' => (0x0000003B, 'WGPUTextureFormat_ETC2RGB8A1Unorm'));
  __PACKAGE__->_add_enum('ETC2RGB8A1UnormSrgb' => (0x0000003C, 'WGPUTextureFormat_ETC2RGB8A1UnormSrgb'));
  __PACKAGE__->_add_enum('ETC2RGBA8Unorm' => (0x0000003D, 'WGPUTextureFormat_ETC2RGBA8Unorm'));
  __PACKAGE__->_add_enum('ETC2RGBA8UnormSrgb' => (0x0000003E, 'WGPUTextureFormat_ETC2RGBA8UnormSrgb'));
  __PACKAGE__->_add_enum('EACR11Unorm' => (0x0000003F, 'WGPUTextureFormat_EACR11Unorm'));
  __PACKAGE__->_add_enum('EACR11Snorm' => (0x00000040, 'WGPUTextureFormat_EACR11Snorm'));
  __PACKAGE__->_add_enum('EACRG11Unorm' => (0x00000041, 'WGPUTextureFormat_EACRG11Unorm'));
  __PACKAGE__->_add_enum('EACRG11Snorm' => (0x00000042, 'WGPUTextureFormat_EACRG11Snorm'));
  __PACKAGE__->_add_enum('ASTC4x4Unorm' => (0x00000043, 'WGPUTextureFormat_ASTC4x4Unorm'));
  __PACKAGE__->_add_enum('ASTC4x4UnormSrgb' => (0x00000044, 'WGPUTextureFormat_ASTC4x4UnormSrgb'));
  __PACKAGE__->_add_enum('ASTC5x4Unorm' => (0x00000045, 'WGPUTextureFormat_ASTC5x4Unorm'));
  __PACKAGE__->_add_enum('ASTC5x4UnormSrgb' => (0x00000046, 'WGPUTextureFormat_ASTC5x4UnormSrgb'));
  __PACKAGE__->_add_enum('ASTC5x5Unorm' => (0x00000047, 'WGPUTextureFormat_ASTC5x5Unorm'));
  __PACKAGE__->_add_enum('ASTC5x5UnormSrgb' => (0x00000048, 'WGPUTextureFormat_ASTC5x5UnormSrgb'));
  __PACKAGE__->_add_enum('ASTC6x5Unorm' => (0x00000049, 'WGPUTextureFormat_ASTC6x5Unorm'));
  __PACKAGE__->_add_enum('ASTC6x5UnormSrgb' => (0x0000004A, 'WGPUTextureFormat_ASTC6x5UnormSrgb'));
  __PACKAGE__->_add_enum('ASTC6x6Unorm' => (0x0000004B, 'WGPUTextureFormat_ASTC6x6Unorm'));
  __PACKAGE__->_add_enum('ASTC6x6UnormSrgb' => (0x0000004C, 'WGPUTextureFormat_ASTC6x6UnormSrgb'));
  __PACKAGE__->_add_enum('ASTC8x5Unorm' => (0x0000004D, 'WGPUTextureFormat_ASTC8x5Unorm'));
  __PACKAGE__->_add_enum('ASTC8x5UnormSrgb' => (0x0000004E, 'WGPUTextureFormat_ASTC8x5UnormSrgb'));
  __PACKAGE__->_add_enum('ASTC8x6Unorm' => (0x0000004F, 'WGPUTextureFormat_ASTC8x6Unorm'));
  __PACKAGE__->_add_enum('ASTC8x6UnormSrgb' => (0x00000050, 'WGPUTextureFormat_ASTC8x6UnormSrgb'));
  __PACKAGE__->_add_enum('ASTC8x8Unorm' => (0x00000051, 'WGPUTextureFormat_ASTC8x8Unorm'));
  __PACKAGE__->_add_enum('ASTC8x8UnormSrgb' => (0x00000052, 'WGPUTextureFormat_ASTC8x8UnormSrgb'));
  __PACKAGE__->_add_enum('ASTC10x5Unorm' => (0x00000053, 'WGPUTextureFormat_ASTC10x5Unorm'));
  __PACKAGE__->_add_enum('ASTC10x5UnormSrgb' => (0x00000054, 'WGPUTextureFormat_ASTC10x5UnormSrgb'));
  __PACKAGE__->_add_enum('ASTC10x6Unorm' => (0x00000055, 'WGPUTextureFormat_ASTC10x6Unorm'));
  __PACKAGE__->_add_enum('ASTC10x6UnormSrgb' => (0x00000056, 'WGPUTextureFormat_ASTC10x6UnormSrgb'));
  __PACKAGE__->_add_enum('ASTC10x8Unorm' => (0x00000057, 'WGPUTextureFormat_ASTC10x8Unorm'));
  __PACKAGE__->_add_enum('ASTC10x8UnormSrgb' => (0x00000058, 'WGPUTextureFormat_ASTC10x8UnormSrgb'));
  __PACKAGE__->_add_enum('ASTC10x10Unorm' => (0x00000059, 'WGPUTextureFormat_ASTC10x10Unorm'));
  __PACKAGE__->_add_enum('ASTC10x10UnormSrgb' => (0x0000005A, 'WGPUTextureFormat_ASTC10x10UnormSrgb'));
  __PACKAGE__->_add_enum('ASTC12x10Unorm' => (0x0000005B, 'WGPUTextureFormat_ASTC12x10Unorm'));
  __PACKAGE__->_add_enum('ASTC12x10UnormSrgb' => (0x0000005C, 'WGPUTextureFormat_ASTC12x10UnormSrgb'));
  __PACKAGE__->_add_enum('ASTC12x12Unorm' => (0x0000005D, 'WGPUTextureFormat_ASTC12x12Unorm'));
  __PACKAGE__->_add_enum('ASTC12x12UnormSrgb' => (0x0000005E, 'WGPUTextureFormat_ASTC12x12UnormSrgb'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUTextureFormat_Force32'));
  WebGPU::Direct::TextureFormat->_build_const_lut;
};

package WebGPU::Direct::TextureSampleType {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Undefined' => (0x00000000, 'WGPUTextureSampleType_Undefined'));
  __PACKAGE__->_add_enum('Float' => (0x00000001, 'WGPUTextureSampleType_Float'));
  __PACKAGE__->_add_enum('UnfilterableFloat' => (0x00000002, 'WGPUTextureSampleType_UnfilterableFloat'));
  __PACKAGE__->_add_enum('Depth' => (0x00000003, 'WGPUTextureSampleType_Depth'));
  __PACKAGE__->_add_enum('Sint' => (0x00000004, 'WGPUTextureSampleType_Sint'));
  __PACKAGE__->_add_enum('Uint' => (0x00000005, 'WGPUTextureSampleType_Uint'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUTextureSampleType_Force32'));
  WebGPU::Direct::TextureSampleType->_build_const_lut;
};

package WebGPU::Direct::TextureUsage {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('None' => (0x00000000, 'WGPUTextureUsage_None'));
  __PACKAGE__->_add_enum('CopySrc' => (0x00000001, 'WGPUTextureUsage_CopySrc'));
  __PACKAGE__->_add_enum('CopyDst' => (0x00000002, 'WGPUTextureUsage_CopyDst'));
  __PACKAGE__->_add_enum('TextureBinding' => (0x00000004, 'WGPUTextureUsage_TextureBinding'));
  __PACKAGE__->_add_enum('StorageBinding' => (0x00000008, 'WGPUTextureUsage_StorageBinding'));
  __PACKAGE__->_add_enum('RenderAttachment' => (0x00000010, 'WGPUTextureUsage_RenderAttachment'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUTextureUsage_Force32'));
  WebGPU::Direct::TextureUsage->_build_const_lut;
};

package WebGPU::Direct::TextureViewDimension {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Undefined' => (0x00000000, 'WGPUTextureViewDimension_Undefined'));
  __PACKAGE__->_add_enum('_1D' => (0x00000001, 'WGPUTextureViewDimension_1D'));
  __PACKAGE__->_add_enum('_2D' => (0x00000002, 'WGPUTextureViewDimension_2D'));
  __PACKAGE__->_add_enum('_2DArray' => (0x00000003, 'WGPUTextureViewDimension_2DArray'));
  __PACKAGE__->_add_enum('Cube' => (0x00000004, 'WGPUTextureViewDimension_Cube'));
  __PACKAGE__->_add_enum('CubeArray' => (0x00000005, 'WGPUTextureViewDimension_CubeArray'));
  __PACKAGE__->_add_enum('_3D' => (0x00000006, 'WGPUTextureViewDimension_3D'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUTextureViewDimension_Force32'));
  WebGPU::Direct::TextureViewDimension->_build_const_lut;
};

package WebGPU::Direct::VertexFormat {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Undefined' => (0x00000000, 'WGPUVertexFormat_Undefined'));
  __PACKAGE__->_add_enum('Uint8x2' => (0x00000001, 'WGPUVertexFormat_Uint8x2'));
  __PACKAGE__->_add_enum('Uint8x4' => (0x00000002, 'WGPUVertexFormat_Uint8x4'));
  __PACKAGE__->_add_enum('Sint8x2' => (0x00000003, 'WGPUVertexFormat_Sint8x2'));
  __PACKAGE__->_add_enum('Sint8x4' => (0x00000004, 'WGPUVertexFormat_Sint8x4'));
  __PACKAGE__->_add_enum('Unorm8x2' => (0x00000005, 'WGPUVertexFormat_Unorm8x2'));
  __PACKAGE__->_add_enum('Unorm8x4' => (0x00000006, 'WGPUVertexFormat_Unorm8x4'));
  __PACKAGE__->_add_enum('Snorm8x2' => (0x00000007, 'WGPUVertexFormat_Snorm8x2'));
  __PACKAGE__->_add_enum('Snorm8x4' => (0x00000008, 'WGPUVertexFormat_Snorm8x4'));
  __PACKAGE__->_add_enum('Uint16x2' => (0x00000009, 'WGPUVertexFormat_Uint16x2'));
  __PACKAGE__->_add_enum('Uint16x4' => (0x0000000A, 'WGPUVertexFormat_Uint16x4'));
  __PACKAGE__->_add_enum('Sint16x2' => (0x0000000B, 'WGPUVertexFormat_Sint16x2'));
  __PACKAGE__->_add_enum('Sint16x4' => (0x0000000C, 'WGPUVertexFormat_Sint16x4'));
  __PACKAGE__->_add_enum('Unorm16x2' => (0x0000000D, 'WGPUVertexFormat_Unorm16x2'));
  __PACKAGE__->_add_enum('Unorm16x4' => (0x0000000E, 'WGPUVertexFormat_Unorm16x4'));
  __PACKAGE__->_add_enum('Snorm16x2' => (0x0000000F, 'WGPUVertexFormat_Snorm16x2'));
  __PACKAGE__->_add_enum('Snorm16x4' => (0x00000010, 'WGPUVertexFormat_Snorm16x4'));
  __PACKAGE__->_add_enum('Float16x2' => (0x00000011, 'WGPUVertexFormat_Float16x2'));
  __PACKAGE__->_add_enum('Float16x4' => (0x00000012, 'WGPUVertexFormat_Float16x4'));
  __PACKAGE__->_add_enum('Float32' => (0x00000013, 'WGPUVertexFormat_Float32'));
  __PACKAGE__->_add_enum('Float32x2' => (0x00000014, 'WGPUVertexFormat_Float32x2'));
  __PACKAGE__->_add_enum('Float32x3' => (0x00000015, 'WGPUVertexFormat_Float32x3'));
  __PACKAGE__->_add_enum('Float32x4' => (0x00000016, 'WGPUVertexFormat_Float32x4'));
  __PACKAGE__->_add_enum('Uint32' => (0x00000017, 'WGPUVertexFormat_Uint32'));
  __PACKAGE__->_add_enum('Uint32x2' => (0x00000018, 'WGPUVertexFormat_Uint32x2'));
  __PACKAGE__->_add_enum('Uint32x3' => (0x00000019, 'WGPUVertexFormat_Uint32x3'));
  __PACKAGE__->_add_enum('Uint32x4' => (0x0000001A, 'WGPUVertexFormat_Uint32x4'));
  __PACKAGE__->_add_enum('Sint32' => (0x0000001B, 'WGPUVertexFormat_Sint32'));
  __PACKAGE__->_add_enum('Sint32x2' => (0x0000001C, 'WGPUVertexFormat_Sint32x2'));
  __PACKAGE__->_add_enum('Sint32x3' => (0x0000001D, 'WGPUVertexFormat_Sint32x3'));
  __PACKAGE__->_add_enum('Sint32x4' => (0x0000001E, 'WGPUVertexFormat_Sint32x4'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUVertexFormat_Force32'));
  WebGPU::Direct::VertexFormat->_build_const_lut;
};

package WebGPU::Direct::VertexStepMode {
  use base "WebGPU::Direct::Enum";
  __PACKAGE__->_add_enum('Vertex' => (0x00000000, 'WGPUVertexStepMode_Vertex'));
  __PACKAGE__->_add_enum('Instance' => (0x00000001, 'WGPUVertexStepMode_Instance'));
  __PACKAGE__->_add_enum('VertexBufferNotUsed' => (0x00000002, 'WGPUVertexStepMode_VertexBufferNotUsed'));
  __PACKAGE__->_add_enum('Force32' => (0x7FFFFFFF, 'WGPUVertexStepMode_Force32'));
  WebGPU::Direct::VertexStepMode->_build_const_lut;
};

package WebGPU::Direct::Adapter {
    push @WebGPU::Direct::Adapter::ISA, "WebGPU::Direct::Opaque";
    require WebGPU::Direct::Adapter;
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::BindGroup {
    push @WebGPU::Direct::BindGroup::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::BindGroupLayout {
    push @WebGPU::Direct::BindGroupLayout::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::Buffer {
    push @WebGPU::Direct::Buffer::ISA, "WebGPU::Direct::Opaque";
    require WebGPU::Direct::Buffer;
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::CommandBuffer {
    push @WebGPU::Direct::CommandBuffer::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::CommandEncoder {
    push @WebGPU::Direct::CommandEncoder::ISA, "WebGPU::Direct::Opaque";
    require WebGPU::Direct::CommandEncoder;
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::ComputePassEncoder {
    push @WebGPU::Direct::ComputePassEncoder::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::ComputePipeline {
    push @WebGPU::Direct::ComputePipeline::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::Device {
    push @WebGPU::Direct::Device::ISA, "WebGPU::Direct::Opaque";
    require WebGPU::Direct::Device;
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::Instance {
    push @WebGPU::Direct::Instance::ISA, "WebGPU::Direct::Opaque";
    require WebGPU::Direct::Instance;
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::PipelineLayout {
    push @WebGPU::Direct::PipelineLayout::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::QuerySet {
    push @WebGPU::Direct::QuerySet::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::Queue {
    push @WebGPU::Direct::Queue::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::RenderBundle {
    push @WebGPU::Direct::RenderBundle::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::RenderBundleEncoder {
    push @WebGPU::Direct::RenderBundleEncoder::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::RenderPassEncoder {
    push @WebGPU::Direct::RenderPassEncoder::ISA, "WebGPU::Direct::Opaque";
    require WebGPU::Direct::RenderPassEncoder;
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::RenderPipeline {
    push @WebGPU::Direct::RenderPipeline::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::Sampler {
    push @WebGPU::Direct::Sampler::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::ShaderModule {
    push @WebGPU::Direct::ShaderModule::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::Surface {
    push @WebGPU::Direct::Surface::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::Texture {
    push @WebGPU::Direct::Texture::ISA, "WebGPU::Direct::Opaque";
    require WebGPU::Direct::Texture;
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
    }

}

package WebGPU::Direct::TextureView {
    push @WebGPU::Direct::TextureView::ISA, "WebGPU::Direct::Opaque";
    sub new {
        my $class = __PACKAGE__;
        die "Cannot call new on abstract class $class";
    }
    sub DESTROY
    {
      $_[0]->Release;
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
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ChainedStruct\n"
          if !$class->isa("WebGPU::Direct::ChainedStruct");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::ChainedStructOut {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ChainedStructOut\n"
          if !$class->isa("WebGPU::Direct::ChainedStructOut");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::AdapterProperties {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::AdapterProperties\n"
          if !$class->isa("WebGPU::Direct::AdapterProperties");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::BindGroupEntry {
    
    require WebGPU::Direct::BindGroupEntry;
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BindGroupEntry\n"
          if !$class->isa("WebGPU::Direct::BindGroupEntry");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::BlendComponent {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BlendComponent\n"
          if !$class->isa("WebGPU::Direct::BlendComponent");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::BufferBindingLayout {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BufferBindingLayout\n"
          if !$class->isa("WebGPU::Direct::BufferBindingLayout");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::BufferDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BufferDescriptor\n"
          if !$class->isa("WebGPU::Direct::BufferDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::Color {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::Color\n"
          if !$class->isa("WebGPU::Direct::Color");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::CommandBufferDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::CommandBufferDescriptor\n"
          if !$class->isa("WebGPU::Direct::CommandBufferDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::CommandEncoderDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::CommandEncoderDescriptor\n"
          if !$class->isa("WebGPU::Direct::CommandEncoderDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::CompilationMessage {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::CompilationMessage\n"
          if !$class->isa("WebGPU::Direct::CompilationMessage");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::ComputePassTimestampWrites {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ComputePassTimestampWrites\n"
          if !$class->isa("WebGPU::Direct::ComputePassTimestampWrites");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::ConstantEntry {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ConstantEntry\n"
          if !$class->isa("WebGPU::Direct::ConstantEntry");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::Extent3D {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::Extent3D\n"
          if !$class->isa("WebGPU::Direct::Extent3D");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::InstanceDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::InstanceDescriptor\n"
          if !$class->isa("WebGPU::Direct::InstanceDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::Limits {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::Limits\n"
          if !$class->isa("WebGPU::Direct::Limits");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::MultisampleState {
    
    my $default = {
             'alphaToCoverageEnabled' => 0,
             'count' => 1,
             'mask' => 4294967295,
           };

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::MultisampleState\n"
          if !$class->isa("WebGPU::Direct::MultisampleState");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::Origin3D {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::Origin3D\n"
          if !$class->isa("WebGPU::Direct::Origin3D");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::PipelineLayoutDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::PipelineLayoutDescriptor\n"
          if !$class->isa("WebGPU::Direct::PipelineLayoutDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::PrimitiveDepthClipControl {
    push @WebGPU::Direct::PrimitiveDepthClipControl::ISA, "WebGPU::Direct::ChainedStruct";
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::PrimitiveDepthClipControl\n"
          if !$class->isa("WebGPU::Direct::PrimitiveDepthClipControl");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::PrimitiveState {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::PrimitiveState\n"
          if !$class->isa("WebGPU::Direct::PrimitiveState");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::QuerySetDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::QuerySetDescriptor\n"
          if !$class->isa("WebGPU::Direct::QuerySetDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::QueueDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::QueueDescriptor\n"
          if !$class->isa("WebGPU::Direct::QueueDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::RenderBundleDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderBundleDescriptor\n"
          if !$class->isa("WebGPU::Direct::RenderBundleDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::RenderBundleEncoderDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderBundleEncoderDescriptor\n"
          if !$class->isa("WebGPU::Direct::RenderBundleEncoderDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::RenderPassDepthStencilAttachment {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderPassDepthStencilAttachment\n"
          if !$class->isa("WebGPU::Direct::RenderPassDepthStencilAttachment");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::RenderPassDescriptorMaxDrawCount {
    push @WebGPU::Direct::RenderPassDescriptorMaxDrawCount::ISA, "WebGPU::Direct::ChainedStruct";
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderPassDescriptorMaxDrawCount\n"
          if !$class->isa("WebGPU::Direct::RenderPassDescriptorMaxDrawCount");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::RenderPassTimestampWrites {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderPassTimestampWrites\n"
          if !$class->isa("WebGPU::Direct::RenderPassTimestampWrites");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::RequestAdapterOptions {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RequestAdapterOptions\n"
          if !$class->isa("WebGPU::Direct::RequestAdapterOptions");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::SamplerBindingLayout {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SamplerBindingLayout\n"
          if !$class->isa("WebGPU::Direct::SamplerBindingLayout");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::SamplerDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SamplerDescriptor\n"
          if !$class->isa("WebGPU::Direct::SamplerDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::ShaderModuleCompilationHint {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ShaderModuleCompilationHint\n"
          if !$class->isa("WebGPU::Direct::ShaderModuleCompilationHint");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::ShaderModuleSPIRVDescriptor {
    push @WebGPU::Direct::ShaderModuleSPIRVDescriptor::ISA, "WebGPU::Direct::ChainedStruct";
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ShaderModuleSPIRVDescriptor\n"
          if !$class->isa("WebGPU::Direct::ShaderModuleSPIRVDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::ShaderModuleWGSLDescriptor {
    push @WebGPU::Direct::ShaderModuleWGSLDescriptor::ISA, "WebGPU::Direct::ChainedStruct";
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ShaderModuleWGSLDescriptor\n"
          if !$class->isa("WebGPU::Direct::ShaderModuleWGSLDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::StencilFaceState {
    
    my $default = {
             'compare' => WebGPU::Direct::CompareFunction->Always,
             'depthFailOp' => WebGPU::Direct::StencilOperation->Keep,
             'failOp' => WebGPU::Direct::StencilOperation->Keep,
             'passOp' => WebGPU::Direct::StencilOperation->Keep,
           };

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::StencilFaceState\n"
          if !$class->isa("WebGPU::Direct::StencilFaceState");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::StorageTextureBindingLayout {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::StorageTextureBindingLayout\n"
          if !$class->isa("WebGPU::Direct::StorageTextureBindingLayout");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::SurfaceCapabilities {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceCapabilities\n"
          if !$class->isa("WebGPU::Direct::SurfaceCapabilities");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::SurfaceConfiguration {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceConfiguration\n"
          if !$class->isa("WebGPU::Direct::SurfaceConfiguration");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::SurfaceDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceDescriptor\n"
          if !$class->isa("WebGPU::Direct::SurfaceDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow {
    push @WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow::ISA, "WebGPU::Direct::ChainedStruct";
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow\n"
          if !$class->isa("WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector {
    push @WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector::ISA, "WebGPU::Direct::ChainedStruct";
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector\n"
          if !$class->isa("WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::SurfaceDescriptorFromMetalLayer {
    push @WebGPU::Direct::SurfaceDescriptorFromMetalLayer::ISA, "WebGPU::Direct::ChainedStruct";
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceDescriptorFromMetalLayer\n"
          if !$class->isa("WebGPU::Direct::SurfaceDescriptorFromMetalLayer");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::SurfaceDescriptorFromWaylandSurface {
    push @WebGPU::Direct::SurfaceDescriptorFromWaylandSurface::ISA, "WebGPU::Direct::ChainedStruct";
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceDescriptorFromWaylandSurface\n"
          if !$class->isa("WebGPU::Direct::SurfaceDescriptorFromWaylandSurface");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::SurfaceDescriptorFromWindowsHWND {
    push @WebGPU::Direct::SurfaceDescriptorFromWindowsHWND::ISA, "WebGPU::Direct::ChainedStruct";
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceDescriptorFromWindowsHWND\n"
          if !$class->isa("WebGPU::Direct::SurfaceDescriptorFromWindowsHWND");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::SurfaceDescriptorFromXcbWindow {
    push @WebGPU::Direct::SurfaceDescriptorFromXcbWindow::ISA, "WebGPU::Direct::ChainedStruct";
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceDescriptorFromXcbWindow\n"
          if !$class->isa("WebGPU::Direct::SurfaceDescriptorFromXcbWindow");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::SurfaceDescriptorFromXlibWindow {
    push @WebGPU::Direct::SurfaceDescriptorFromXlibWindow::ISA, "WebGPU::Direct::ChainedStruct";
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceDescriptorFromXlibWindow\n"
          if !$class->isa("WebGPU::Direct::SurfaceDescriptorFromXlibWindow");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::SurfaceTexture {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SurfaceTexture\n"
          if !$class->isa("WebGPU::Direct::SurfaceTexture");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::TextureBindingLayout {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::TextureBindingLayout\n"
          if !$class->isa("WebGPU::Direct::TextureBindingLayout");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::TextureDataLayout {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::TextureDataLayout\n"
          if !$class->isa("WebGPU::Direct::TextureDataLayout");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::TextureViewDescriptor {
    
    my $default = {
             'aspect' => WebGPU::Direct::TextureAspect->All,
             'baseArrayLayer' => 0,
             'baseMipLevel' => 0,
           };

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::TextureViewDescriptor\n"
          if !$class->isa("WebGPU::Direct::TextureViewDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::VertexAttribute {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::VertexAttribute\n"
          if !$class->isa("WebGPU::Direct::VertexAttribute");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::BindGroupDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BindGroupDescriptor\n"
          if !$class->isa("WebGPU::Direct::BindGroupDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::BindGroupLayoutEntry {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BindGroupLayoutEntry\n"
          if !$class->isa("WebGPU::Direct::BindGroupLayoutEntry");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::BlendState {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BlendState\n"
          if !$class->isa("WebGPU::Direct::BlendState");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::CompilationInfo {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::CompilationInfo\n"
          if !$class->isa("WebGPU::Direct::CompilationInfo");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::ComputePassDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ComputePassDescriptor\n"
          if !$class->isa("WebGPU::Direct::ComputePassDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::DepthStencilState {
    
    my $default = {
             'depthBias' => 0,
             'depthBiasClamp' => 0,
             'depthBiasSlopeScale' => 0,
             'stencilReadMask' => 4294967295,
             'stencilWriteMask' => 4294967295,
           };

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::DepthStencilState\n"
          if !$class->isa("WebGPU::Direct::DepthStencilState");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::ImageCopyBuffer {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ImageCopyBuffer\n"
          if !$class->isa("WebGPU::Direct::ImageCopyBuffer");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::ImageCopyTexture {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ImageCopyTexture\n"
          if !$class->isa("WebGPU::Direct::ImageCopyTexture");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::ProgrammableStageDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ProgrammableStageDescriptor\n"
          if !$class->isa("WebGPU::Direct::ProgrammableStageDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::RenderPassColorAttachment {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderPassColorAttachment\n"
          if !$class->isa("WebGPU::Direct::RenderPassColorAttachment");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::RequiredLimits {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RequiredLimits\n"
          if !$class->isa("WebGPU::Direct::RequiredLimits");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::ShaderModuleDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ShaderModuleDescriptor\n"
          if !$class->isa("WebGPU::Direct::ShaderModuleDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::SupportedLimits {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SupportedLimits\n"
          if !$class->isa("WebGPU::Direct::SupportedLimits");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::TextureDescriptor {
    
    my $default = {
             'dimension' => WebGPU::Direct::TextureDimension->_2D,
             'mipLevelCount' => 1,
             'sampleCount' => 1,
             'size' => {
                         'depthOrArrayLayers' => 1,
                         'height' => 1,
                       },
           };

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::TextureDescriptor\n"
          if !$class->isa("WebGPU::Direct::TextureDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::VertexBufferLayout {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::VertexBufferLayout\n"
          if !$class->isa("WebGPU::Direct::VertexBufferLayout");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::BindGroupLayoutDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BindGroupLayoutDescriptor\n"
          if !$class->isa("WebGPU::Direct::BindGroupLayoutDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::ColorTargetState {
    
    my $default = {
             'blend' => undef,
             'writeMask' => WebGPU::Direct::ColorWriteMask->All,
           };

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ColorTargetState\n"
          if !$class->isa("WebGPU::Direct::ColorTargetState");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::ComputePipelineDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ComputePipelineDescriptor\n"
          if !$class->isa("WebGPU::Direct::ComputePipelineDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::DeviceDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::DeviceDescriptor\n"
          if !$class->isa("WebGPU::Direct::DeviceDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::RenderPassDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderPassDescriptor\n"
          if !$class->isa("WebGPU::Direct::RenderPassDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::VertexState {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::VertexState\n"
          if !$class->isa("WebGPU::Direct::VertexState");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::FragmentState {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::FragmentState\n"
          if !$class->isa("WebGPU::Direct::FragmentState");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::RenderPipelineDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderPipelineDescriptor\n"
          if !$class->isa("WebGPU::Direct::RenderPipelineDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
        $result = $class->BUILDARGS($result)
          if $class->can('BUILDARGS');
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

1;
