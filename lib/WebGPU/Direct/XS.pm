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
  sub ComputePassTimestampLocation () { 'WebGPU::Direct::ComputePassTimestampLocation' }; push @export_all, 'ComputePassTimestampLocation';
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
  sub PipelineStatisticName () { 'WebGPU::Direct::PipelineStatisticName' }; push @export_all, 'PipelineStatisticName';
  sub PowerPreference () { 'WebGPU::Direct::PowerPreference' }; push @export_all, 'PowerPreference';
  sub PresentMode () { 'WebGPU::Direct::PresentMode' }; push @export_all, 'PresentMode';
  sub PrimitiveTopology () { 'WebGPU::Direct::PrimitiveTopology' }; push @export_all, 'PrimitiveTopology';
  sub QueryType () { 'WebGPU::Direct::QueryType' }; push @export_all, 'QueryType';
  sub QueueWorkDoneStatus () { 'WebGPU::Direct::QueueWorkDoneStatus' }; push @export_all, 'QueueWorkDoneStatus';
  sub RenderPassTimestampLocation () { 'WebGPU::Direct::RenderPassTimestampLocation' }; push @export_all, 'RenderPassTimestampLocation';
  sub RequestAdapterStatus () { 'WebGPU::Direct::RequestAdapterStatus' }; push @export_all, 'RequestAdapterStatus';
  sub RequestDeviceStatus () { 'WebGPU::Direct::RequestDeviceStatus' }; push @export_all, 'RequestDeviceStatus';
  sub SType () { 'WebGPU::Direct::SType' }; push @export_all, 'SType';
  sub SamplerBindingType () { 'WebGPU::Direct::SamplerBindingType' }; push @export_all, 'SamplerBindingType';
  sub ShaderStage () { 'WebGPU::Direct::ShaderStage' }; push @export_all, 'ShaderStage';
  sub StencilOperation () { 'WebGPU::Direct::StencilOperation' }; push @export_all, 'StencilOperation';
  sub StorageTextureAccess () { 'WebGPU::Direct::StorageTextureAccess' }; push @export_all, 'StorageTextureAccess';
  sub StoreOp () { 'WebGPU::Direct::StoreOp' }; push @export_all, 'StoreOp';
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
  sub ComputePassTimestampWrite () { Carp::croak if @_>1; 'WebGPU::Direct::ComputePassTimestampWrite' }
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
  sub RenderPassTimestampWrite () { Carp::croak if @_>1; 'WebGPU::Direct::RenderPassTimestampWrite' }
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
  sub SurfaceDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::SurfaceDescriptor' }
  sub SurfaceDescriptorFromAndroidNativeWindow () { Carp::croak if @_>1; 'WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow' }
  sub SurfaceDescriptorFromCanvasHTMLSelector () { Carp::croak if @_>1; 'WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector' }
  sub SurfaceDescriptorFromMetalLayer () { Carp::croak if @_>1; 'WebGPU::Direct::SurfaceDescriptorFromMetalLayer' }
  sub SurfaceDescriptorFromWaylandSurface () { Carp::croak if @_>1; 'WebGPU::Direct::SurfaceDescriptorFromWaylandSurface' }
  sub SurfaceDescriptorFromWindowsHWND () { Carp::croak if @_>1; 'WebGPU::Direct::SurfaceDescriptorFromWindowsHWND' }
  sub SurfaceDescriptorFromXcbWindow () { Carp::croak if @_>1; 'WebGPU::Direct::SurfaceDescriptorFromXcbWindow' }
  sub SurfaceDescriptorFromXlibWindow () { Carp::croak if @_>1; 'WebGPU::Direct::SurfaceDescriptorFromXlibWindow' }
  sub SwapChain () { Carp::croak if @_>1; 'WebGPU::Direct::SwapChain' }
  sub SwapChainDescriptor () { Carp::croak if @_>1; 'WebGPU::Direct::SwapChainDescriptor' }
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
  sub newComputePassTimestampWrite { my $class = shift; return WebGPU::Direct::ComputePassTimestampWrite->new(@_); }
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
  sub newRenderPassTimestampWrite { my $class = shift; return WebGPU::Direct::RenderPassTimestampWrite->new(@_); }
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
  sub newSurfaceDescriptor { my $class = shift; return WebGPU::Direct::SurfaceDescriptor->new(@_); }
  sub newSurfaceDescriptorFromAndroidNativeWindow { my $class = shift; return WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow->new(@_); }
  sub newSurfaceDescriptorFromCanvasHTMLSelector { my $class = shift; return WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector->new(@_); }
  sub newSurfaceDescriptorFromMetalLayer { my $class = shift; return WebGPU::Direct::SurfaceDescriptorFromMetalLayer->new(@_); }
  sub newSurfaceDescriptorFromWaylandSurface { my $class = shift; return WebGPU::Direct::SurfaceDescriptorFromWaylandSurface->new(@_); }
  sub newSurfaceDescriptorFromWindowsHWND { my $class = shift; return WebGPU::Direct::SurfaceDescriptorFromWindowsHWND->new(@_); }
  sub newSurfaceDescriptorFromXcbWindow { my $class = shift; return WebGPU::Direct::SurfaceDescriptorFromXcbWindow->new(@_); }
  sub newSurfaceDescriptorFromXlibWindow { my $class = shift; return WebGPU::Direct::SurfaceDescriptorFromXlibWindow->new(@_); }
  sub newSwapChain { my $class = shift; return WebGPU::Direct::SwapChain->new(@_); }
  sub newSwapChainDescriptor { my $class = shift; return WebGPU::Direct::SwapChainDescriptor->new(@_); }
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
  use Scalar::Util qw/dualvar/;
  use constant 'DiscreteGPU' => dualvar(0x00000000, 'WGPUAdapterType_DiscreteGPU');
  use constant 'IntegratedGPU' => dualvar(0x00000001, 'WGPUAdapterType_IntegratedGPU');
  use constant 'CPU' => dualvar(0x00000002, 'WGPUAdapterType_CPU');
  use constant 'Unknown' => dualvar(0x00000003, 'WGPUAdapterType_Unknown');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUAdapterType_Force32');
};

package WebGPU::Direct::AddressMode {
  use Scalar::Util qw/dualvar/;
  use constant 'Repeat' => dualvar(0x00000000, 'WGPUAddressMode_Repeat');
  use constant 'MirrorRepeat' => dualvar(0x00000001, 'WGPUAddressMode_MirrorRepeat');
  use constant 'ClampToEdge' => dualvar(0x00000002, 'WGPUAddressMode_ClampToEdge');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUAddressMode_Force32');
};

package WebGPU::Direct::BackendType {
  use Scalar::Util qw/dualvar/;
  use constant 'Undefined' => dualvar(0x00000000, 'WGPUBackendType_Undefined');
  use constant 'Null' => dualvar(0x00000001, 'WGPUBackendType_Null');
  use constant 'WebGPU' => dualvar(0x00000002, 'WGPUBackendType_WebGPU');
  use constant 'D3D11' => dualvar(0x00000003, 'WGPUBackendType_D3D11');
  use constant 'D3D12' => dualvar(0x00000004, 'WGPUBackendType_D3D12');
  use constant 'Metal' => dualvar(0x00000005, 'WGPUBackendType_Metal');
  use constant 'Vulkan' => dualvar(0x00000006, 'WGPUBackendType_Vulkan');
  use constant 'OpenGL' => dualvar(0x00000007, 'WGPUBackendType_OpenGL');
  use constant 'OpenGLES' => dualvar(0x00000008, 'WGPUBackendType_OpenGLES');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUBackendType_Force32');
};

package WebGPU::Direct::BlendFactor {
  use Scalar::Util qw/dualvar/;
  use constant 'Zero' => dualvar(0x00000000, 'WGPUBlendFactor_Zero');
  use constant 'One' => dualvar(0x00000001, 'WGPUBlendFactor_One');
  use constant 'Src' => dualvar(0x00000002, 'WGPUBlendFactor_Src');
  use constant 'OneMinusSrc' => dualvar(0x00000003, 'WGPUBlendFactor_OneMinusSrc');
  use constant 'SrcAlpha' => dualvar(0x00000004, 'WGPUBlendFactor_SrcAlpha');
  use constant 'OneMinusSrcAlpha' => dualvar(0x00000005, 'WGPUBlendFactor_OneMinusSrcAlpha');
  use constant 'Dst' => dualvar(0x00000006, 'WGPUBlendFactor_Dst');
  use constant 'OneMinusDst' => dualvar(0x00000007, 'WGPUBlendFactor_OneMinusDst');
  use constant 'DstAlpha' => dualvar(0x00000008, 'WGPUBlendFactor_DstAlpha');
  use constant 'OneMinusDstAlpha' => dualvar(0x00000009, 'WGPUBlendFactor_OneMinusDstAlpha');
  use constant 'SrcAlphaSaturated' => dualvar(0x0000000A, 'WGPUBlendFactor_SrcAlphaSaturated');
  use constant 'Constant' => dualvar(0x0000000B, 'WGPUBlendFactor_Constant');
  use constant 'OneMinusConstant' => dualvar(0x0000000C, 'WGPUBlendFactor_OneMinusConstant');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUBlendFactor_Force32');
};

package WebGPU::Direct::BlendOperation {
  use Scalar::Util qw/dualvar/;
  use constant 'Add' => dualvar(0x00000000, 'WGPUBlendOperation_Add');
  use constant 'Subtract' => dualvar(0x00000001, 'WGPUBlendOperation_Subtract');
  use constant 'ReverseSubtract' => dualvar(0x00000002, 'WGPUBlendOperation_ReverseSubtract');
  use constant 'Min' => dualvar(0x00000003, 'WGPUBlendOperation_Min');
  use constant 'Max' => dualvar(0x00000004, 'WGPUBlendOperation_Max');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUBlendOperation_Force32');
};

package WebGPU::Direct::BufferBindingType {
  use Scalar::Util qw/dualvar/;
  use constant 'Undefined' => dualvar(0x00000000, 'WGPUBufferBindingType_Undefined');
  use constant 'Uniform' => dualvar(0x00000001, 'WGPUBufferBindingType_Uniform');
  use constant 'Storage' => dualvar(0x00000002, 'WGPUBufferBindingType_Storage');
  use constant 'ReadOnlyStorage' => dualvar(0x00000003, 'WGPUBufferBindingType_ReadOnlyStorage');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUBufferBindingType_Force32');
};

package WebGPU::Direct::BufferMapAsyncStatus {
  use Scalar::Util qw/dualvar/;
  use constant 'Success' => dualvar(0x00000000, 'WGPUBufferMapAsyncStatus_Success');
  use constant 'ValidationError' => dualvar(0x00000001, 'WGPUBufferMapAsyncStatus_ValidationError');
  use constant 'Unknown' => dualvar(0x00000002, 'WGPUBufferMapAsyncStatus_Unknown');
  use constant 'DeviceLost' => dualvar(0x00000003, 'WGPUBufferMapAsyncStatus_DeviceLost');
  use constant 'DestroyedBeforeCallback' => dualvar(0x00000004, 'WGPUBufferMapAsyncStatus_DestroyedBeforeCallback');
  use constant 'UnmappedBeforeCallback' => dualvar(0x00000005, 'WGPUBufferMapAsyncStatus_UnmappedBeforeCallback');
  use constant 'MappingAlreadyPending' => dualvar(0x00000006, 'WGPUBufferMapAsyncStatus_MappingAlreadyPending');
  use constant 'OffsetOutOfRange' => dualvar(0x00000007, 'WGPUBufferMapAsyncStatus_OffsetOutOfRange');
  use constant 'SizeOutOfRange' => dualvar(0x00000008, 'WGPUBufferMapAsyncStatus_SizeOutOfRange');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUBufferMapAsyncStatus_Force32');
};

package WebGPU::Direct::BufferMapState {
  use Scalar::Util qw/dualvar/;
  use constant 'Unmapped' => dualvar(0x00000000, 'WGPUBufferMapState_Unmapped');
  use constant 'Pending' => dualvar(0x00000001, 'WGPUBufferMapState_Pending');
  use constant 'Mapped' => dualvar(0x00000002, 'WGPUBufferMapState_Mapped');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUBufferMapState_Force32');
};

package WebGPU::Direct::BufferUsage {
  use Scalar::Util qw/dualvar/;
  use constant 'None' => dualvar(0x00000000, 'WGPUBufferUsage_None');
  use constant 'MapRead' => dualvar(0x00000001, 'WGPUBufferUsage_MapRead');
  use constant 'MapWrite' => dualvar(0x00000002, 'WGPUBufferUsage_MapWrite');
  use constant 'CopySrc' => dualvar(0x00000004, 'WGPUBufferUsage_CopySrc');
  use constant 'CopyDst' => dualvar(0x00000008, 'WGPUBufferUsage_CopyDst');
  use constant 'Index' => dualvar(0x00000010, 'WGPUBufferUsage_Index');
  use constant 'Vertex' => dualvar(0x00000020, 'WGPUBufferUsage_Vertex');
  use constant 'Uniform' => dualvar(0x00000040, 'WGPUBufferUsage_Uniform');
  use constant 'Storage' => dualvar(0x00000080, 'WGPUBufferUsage_Storage');
  use constant 'Indirect' => dualvar(0x00000100, 'WGPUBufferUsage_Indirect');
  use constant 'QueryResolve' => dualvar(0x00000200, 'WGPUBufferUsage_QueryResolve');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUBufferUsage_Force32');
};

package WebGPU::Direct::ColorWriteMask {
  use Scalar::Util qw/dualvar/;
  use constant 'None' => dualvar(0x00000000, 'WGPUColorWriteMask_None');
  use constant 'Red' => dualvar(0x00000001, 'WGPUColorWriteMask_Red');
  use constant 'Green' => dualvar(0x00000002, 'WGPUColorWriteMask_Green');
  use constant 'Blue' => dualvar(0x00000004, 'WGPUColorWriteMask_Blue');
  use constant 'Alpha' => dualvar(0x00000008, 'WGPUColorWriteMask_Alpha');
  use constant 'All' => dualvar(0x0000000F, 'WGPUColorWriteMask_All');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUColorWriteMask_Force32');
};

package WebGPU::Direct::CompareFunction {
  use Scalar::Util qw/dualvar/;
  use constant 'Undefined' => dualvar(0x00000000, 'WGPUCompareFunction_Undefined');
  use constant 'Never' => dualvar(0x00000001, 'WGPUCompareFunction_Never');
  use constant 'Less' => dualvar(0x00000002, 'WGPUCompareFunction_Less');
  use constant 'LessEqual' => dualvar(0x00000003, 'WGPUCompareFunction_LessEqual');
  use constant 'Greater' => dualvar(0x00000004, 'WGPUCompareFunction_Greater');
  use constant 'GreaterEqual' => dualvar(0x00000005, 'WGPUCompareFunction_GreaterEqual');
  use constant 'Equal' => dualvar(0x00000006, 'WGPUCompareFunction_Equal');
  use constant 'NotEqual' => dualvar(0x00000007, 'WGPUCompareFunction_NotEqual');
  use constant 'Always' => dualvar(0x00000008, 'WGPUCompareFunction_Always');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUCompareFunction_Force32');
};

package WebGPU::Direct::CompilationInfoRequestStatus {
  use Scalar::Util qw/dualvar/;
  use constant 'Success' => dualvar(0x00000000, 'WGPUCompilationInfoRequestStatus_Success');
  use constant 'Error' => dualvar(0x00000001, 'WGPUCompilationInfoRequestStatus_Error');
  use constant 'DeviceLost' => dualvar(0x00000002, 'WGPUCompilationInfoRequestStatus_DeviceLost');
  use constant 'Unknown' => dualvar(0x00000003, 'WGPUCompilationInfoRequestStatus_Unknown');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUCompilationInfoRequestStatus_Force32');
};

package WebGPU::Direct::CompilationMessageType {
  use Scalar::Util qw/dualvar/;
  use constant 'Error' => dualvar(0x00000000, 'WGPUCompilationMessageType_Error');
  use constant 'Warning' => dualvar(0x00000001, 'WGPUCompilationMessageType_Warning');
  use constant 'Info' => dualvar(0x00000002, 'WGPUCompilationMessageType_Info');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUCompilationMessageType_Force32');
};

package WebGPU::Direct::ComputePassTimestampLocation {
  use Scalar::Util qw/dualvar/;
  use constant 'Beginning' => dualvar(0x00000000, 'WGPUComputePassTimestampLocation_Beginning');
  use constant 'End' => dualvar(0x00000001, 'WGPUComputePassTimestampLocation_End');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUComputePassTimestampLocation_Force32');
};

package WebGPU::Direct::CreatePipelineAsyncStatus {
  use Scalar::Util qw/dualvar/;
  use constant 'Success' => dualvar(0x00000000, 'WGPUCreatePipelineAsyncStatus_Success');
  use constant 'ValidationError' => dualvar(0x00000001, 'WGPUCreatePipelineAsyncStatus_ValidationError');
  use constant 'InternalError' => dualvar(0x00000002, 'WGPUCreatePipelineAsyncStatus_InternalError');
  use constant 'DeviceLost' => dualvar(0x00000003, 'WGPUCreatePipelineAsyncStatus_DeviceLost');
  use constant 'DeviceDestroyed' => dualvar(0x00000004, 'WGPUCreatePipelineAsyncStatus_DeviceDestroyed');
  use constant 'Unknown' => dualvar(0x00000005, 'WGPUCreatePipelineAsyncStatus_Unknown');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUCreatePipelineAsyncStatus_Force32');
};

package WebGPU::Direct::CullMode {
  use Scalar::Util qw/dualvar/;
  use constant 'None' => dualvar(0x00000000, 'WGPUCullMode_None');
  use constant 'Front' => dualvar(0x00000001, 'WGPUCullMode_Front');
  use constant 'Back' => dualvar(0x00000002, 'WGPUCullMode_Back');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUCullMode_Force32');
};

package WebGPU::Direct::DeviceLostReason {
  use Scalar::Util qw/dualvar/;
  use constant 'Undefined' => dualvar(0x00000000, 'WGPUDeviceLostReason_Undefined');
  use constant 'Destroyed' => dualvar(0x00000001, 'WGPUDeviceLostReason_Destroyed');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUDeviceLostReason_Force32');
};

package WebGPU::Direct::ErrorFilter {
  use Scalar::Util qw/dualvar/;
  use constant 'Validation' => dualvar(0x00000000, 'WGPUErrorFilter_Validation');
  use constant 'OutOfMemory' => dualvar(0x00000001, 'WGPUErrorFilter_OutOfMemory');
  use constant 'Internal' => dualvar(0x00000002, 'WGPUErrorFilter_Internal');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUErrorFilter_Force32');
};

package WebGPU::Direct::ErrorType {
  use Scalar::Util qw/dualvar/;
  use constant 'NoError' => dualvar(0x00000000, 'WGPUErrorType_NoError');
  use constant 'Validation' => dualvar(0x00000001, 'WGPUErrorType_Validation');
  use constant 'OutOfMemory' => dualvar(0x00000002, 'WGPUErrorType_OutOfMemory');
  use constant 'Internal' => dualvar(0x00000003, 'WGPUErrorType_Internal');
  use constant 'Unknown' => dualvar(0x00000004, 'WGPUErrorType_Unknown');
  use constant 'DeviceLost' => dualvar(0x00000005, 'WGPUErrorType_DeviceLost');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUErrorType_Force32');
};

package WebGPU::Direct::FeatureName {
  use Scalar::Util qw/dualvar/;
  use constant 'Undefined' => dualvar(0x00000000, 'WGPUFeatureName_Undefined');
  use constant 'DepthClipControl' => dualvar(0x00000001, 'WGPUFeatureName_DepthClipControl');
  use constant 'Depth32FloatStencil8' => dualvar(0x00000002, 'WGPUFeatureName_Depth32FloatStencil8');
  use constant 'TimestampQuery' => dualvar(0x00000003, 'WGPUFeatureName_TimestampQuery');
  use constant 'PipelineStatisticsQuery' => dualvar(0x00000004, 'WGPUFeatureName_PipelineStatisticsQuery');
  use constant 'TextureCompressionBC' => dualvar(0x00000005, 'WGPUFeatureName_TextureCompressionBC');
  use constant 'TextureCompressionETC2' => dualvar(0x00000006, 'WGPUFeatureName_TextureCompressionETC2');
  use constant 'TextureCompressionASTC' => dualvar(0x00000007, 'WGPUFeatureName_TextureCompressionASTC');
  use constant 'IndirectFirstInstance' => dualvar(0x00000008, 'WGPUFeatureName_IndirectFirstInstance');
  use constant 'ShaderF16' => dualvar(0x00000009, 'WGPUFeatureName_ShaderF16');
  use constant 'RG11B10UfloatRenderable' => dualvar(0x0000000A, 'WGPUFeatureName_RG11B10UfloatRenderable');
  use constant 'BGRA8UnormStorage' => dualvar(0x0000000B, 'WGPUFeatureName_BGRA8UnormStorage');
  use constant 'Float32Filterable' => dualvar(0x0000000C, 'WGPUFeatureName_Float32Filterable');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUFeatureName_Force32');
};

package WebGPU::Direct::FilterMode {
  use Scalar::Util qw/dualvar/;
  use constant 'Nearest' => dualvar(0x00000000, 'WGPUFilterMode_Nearest');
  use constant 'Linear' => dualvar(0x00000001, 'WGPUFilterMode_Linear');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUFilterMode_Force32');
};

package WebGPU::Direct::FrontFace {
  use Scalar::Util qw/dualvar/;
  use constant 'CCW' => dualvar(0x00000000, 'WGPUFrontFace_CCW');
  use constant 'CW' => dualvar(0x00000001, 'WGPUFrontFace_CW');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUFrontFace_Force32');
};

package WebGPU::Direct::IndexFormat {
  use Scalar::Util qw/dualvar/;
  use constant 'Undefined' => dualvar(0x00000000, 'WGPUIndexFormat_Undefined');
  use constant 'Uint16' => dualvar(0x00000001, 'WGPUIndexFormat_Uint16');
  use constant 'Uint32' => dualvar(0x00000002, 'WGPUIndexFormat_Uint32');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUIndexFormat_Force32');
};

package WebGPU::Direct::LoadOp {
  use Scalar::Util qw/dualvar/;
  use constant 'Undefined' => dualvar(0x00000000, 'WGPULoadOp_Undefined');
  use constant 'Clear' => dualvar(0x00000001, 'WGPULoadOp_Clear');
  use constant 'Load' => dualvar(0x00000002, 'WGPULoadOp_Load');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPULoadOp_Force32');
};

package WebGPU::Direct::MapMode {
  use Scalar::Util qw/dualvar/;
  use constant 'None' => dualvar(0x00000000, 'WGPUMapMode_None');
  use constant 'Read' => dualvar(0x00000001, 'WGPUMapMode_Read');
  use constant 'Write' => dualvar(0x00000002, 'WGPUMapMode_Write');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUMapMode_Force32');
};

package WebGPU::Direct::MipmapFilterMode {
  use Scalar::Util qw/dualvar/;
  use constant 'Nearest' => dualvar(0x00000000, 'WGPUMipmapFilterMode_Nearest');
  use constant 'Linear' => dualvar(0x00000001, 'WGPUMipmapFilterMode_Linear');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUMipmapFilterMode_Force32');
};

package WebGPU::Direct::PipelineStatisticName {
  use Scalar::Util qw/dualvar/;
  use constant 'VertexShaderInvocations' => dualvar(0x00000000, 'WGPUPipelineStatisticName_VertexShaderInvocations');
  use constant 'ClipperInvocations' => dualvar(0x00000001, 'WGPUPipelineStatisticName_ClipperInvocations');
  use constant 'ClipperPrimitivesOut' => dualvar(0x00000002, 'WGPUPipelineStatisticName_ClipperPrimitivesOut');
  use constant 'FragmentShaderInvocations' => dualvar(0x00000003, 'WGPUPipelineStatisticName_FragmentShaderInvocations');
  use constant 'ComputeShaderInvocations' => dualvar(0x00000004, 'WGPUPipelineStatisticName_ComputeShaderInvocations');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUPipelineStatisticName_Force32');
};

package WebGPU::Direct::PowerPreference {
  use Scalar::Util qw/dualvar/;
  use constant 'Undefined' => dualvar(0x00000000, 'WGPUPowerPreference_Undefined');
  use constant 'LowPower' => dualvar(0x00000001, 'WGPUPowerPreference_LowPower');
  use constant 'HighPerformance' => dualvar(0x00000002, 'WGPUPowerPreference_HighPerformance');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUPowerPreference_Force32');
};

package WebGPU::Direct::PresentMode {
  use Scalar::Util qw/dualvar/;
  use constant 'Immediate' => dualvar(0x00000000, 'WGPUPresentMode_Immediate');
  use constant 'Mailbox' => dualvar(0x00000001, 'WGPUPresentMode_Mailbox');
  use constant 'Fifo' => dualvar(0x00000002, 'WGPUPresentMode_Fifo');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUPresentMode_Force32');
};

package WebGPU::Direct::PrimitiveTopology {
  use Scalar::Util qw/dualvar/;
  use constant 'PointList' => dualvar(0x00000000, 'WGPUPrimitiveTopology_PointList');
  use constant 'LineList' => dualvar(0x00000001, 'WGPUPrimitiveTopology_LineList');
  use constant 'LineStrip' => dualvar(0x00000002, 'WGPUPrimitiveTopology_LineStrip');
  use constant 'TriangleList' => dualvar(0x00000003, 'WGPUPrimitiveTopology_TriangleList');
  use constant 'TriangleStrip' => dualvar(0x00000004, 'WGPUPrimitiveTopology_TriangleStrip');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUPrimitiveTopology_Force32');
};

package WebGPU::Direct::QueryType {
  use Scalar::Util qw/dualvar/;
  use constant 'Occlusion' => dualvar(0x00000000, 'WGPUQueryType_Occlusion');
  use constant 'PipelineStatistics' => dualvar(0x00000001, 'WGPUQueryType_PipelineStatistics');
  use constant 'Timestamp' => dualvar(0x00000002, 'WGPUQueryType_Timestamp');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUQueryType_Force32');
};

package WebGPU::Direct::QueueWorkDoneStatus {
  use Scalar::Util qw/dualvar/;
  use constant 'Success' => dualvar(0x00000000, 'WGPUQueueWorkDoneStatus_Success');
  use constant 'Error' => dualvar(0x00000001, 'WGPUQueueWorkDoneStatus_Error');
  use constant 'Unknown' => dualvar(0x00000002, 'WGPUQueueWorkDoneStatus_Unknown');
  use constant 'DeviceLost' => dualvar(0x00000003, 'WGPUQueueWorkDoneStatus_DeviceLost');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUQueueWorkDoneStatus_Force32');
};

package WebGPU::Direct::RenderPassTimestampLocation {
  use Scalar::Util qw/dualvar/;
  use constant 'Beginning' => dualvar(0x00000000, 'WGPURenderPassTimestampLocation_Beginning');
  use constant 'End' => dualvar(0x00000001, 'WGPURenderPassTimestampLocation_End');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPURenderPassTimestampLocation_Force32');
};

package WebGPU::Direct::RequestAdapterStatus {
  use Scalar::Util qw/dualvar/;
  use constant 'Success' => dualvar(0x00000000, 'WGPURequestAdapterStatus_Success');
  use constant 'Unavailable' => dualvar(0x00000001, 'WGPURequestAdapterStatus_Unavailable');
  use constant 'Error' => dualvar(0x00000002, 'WGPURequestAdapterStatus_Error');
  use constant 'Unknown' => dualvar(0x00000003, 'WGPURequestAdapterStatus_Unknown');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPURequestAdapterStatus_Force32');
};

package WebGPU::Direct::RequestDeviceStatus {
  use Scalar::Util qw/dualvar/;
  use constant 'Success' => dualvar(0x00000000, 'WGPURequestDeviceStatus_Success');
  use constant 'Error' => dualvar(0x00000001, 'WGPURequestDeviceStatus_Error');
  use constant 'Unknown' => dualvar(0x00000002, 'WGPURequestDeviceStatus_Unknown');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPURequestDeviceStatus_Force32');
};

package WebGPU::Direct::SType {
  use Scalar::Util qw/dualvar/;
  use constant 'Invalid' => dualvar(0x00000000, 'WGPUSType_Invalid');
  use constant 'SurfaceDescriptorFromMetalLayer' => dualvar(0x00000001, 'WGPUSType_SurfaceDescriptorFromMetalLayer');
  use constant 'SurfaceDescriptorFromWindowsHWND' => dualvar(0x00000002, 'WGPUSType_SurfaceDescriptorFromWindowsHWND');
  use constant 'SurfaceDescriptorFromXlibWindow' => dualvar(0x00000003, 'WGPUSType_SurfaceDescriptorFromXlibWindow');
  use constant 'SurfaceDescriptorFromCanvasHTMLSelector' => dualvar(0x00000004, 'WGPUSType_SurfaceDescriptorFromCanvasHTMLSelector');
  use constant 'ShaderModuleSPIRVDescriptor' => dualvar(0x00000005, 'WGPUSType_ShaderModuleSPIRVDescriptor');
  use constant 'ShaderModuleWGSLDescriptor' => dualvar(0x00000006, 'WGPUSType_ShaderModuleWGSLDescriptor');
  use constant 'PrimitiveDepthClipControl' => dualvar(0x00000007, 'WGPUSType_PrimitiveDepthClipControl');
  use constant 'SurfaceDescriptorFromWaylandSurface' => dualvar(0x00000008, 'WGPUSType_SurfaceDescriptorFromWaylandSurface');
  use constant 'SurfaceDescriptorFromAndroidNativeWindow' => dualvar(0x00000009, 'WGPUSType_SurfaceDescriptorFromAndroidNativeWindow');
  use constant 'SurfaceDescriptorFromXcbWindow' => dualvar(0x0000000A, 'WGPUSType_SurfaceDescriptorFromXcbWindow');
  use constant 'RenderPassDescriptorMaxDrawCount' => dualvar(0x0000000F, 'WGPUSType_RenderPassDescriptorMaxDrawCount');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUSType_Force32');
};

package WebGPU::Direct::SamplerBindingType {
  use Scalar::Util qw/dualvar/;
  use constant 'Undefined' => dualvar(0x00000000, 'WGPUSamplerBindingType_Undefined');
  use constant 'Filtering' => dualvar(0x00000001, 'WGPUSamplerBindingType_Filtering');
  use constant 'NonFiltering' => dualvar(0x00000002, 'WGPUSamplerBindingType_NonFiltering');
  use constant 'Comparison' => dualvar(0x00000003, 'WGPUSamplerBindingType_Comparison');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUSamplerBindingType_Force32');
};

package WebGPU::Direct::ShaderStage {
  use Scalar::Util qw/dualvar/;
  use constant 'None' => dualvar(0x00000000, 'WGPUShaderStage_None');
  use constant 'Vertex' => dualvar(0x00000001, 'WGPUShaderStage_Vertex');
  use constant 'Fragment' => dualvar(0x00000002, 'WGPUShaderStage_Fragment');
  use constant 'Compute' => dualvar(0x00000004, 'WGPUShaderStage_Compute');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUShaderStage_Force32');
};

package WebGPU::Direct::StencilOperation {
  use Scalar::Util qw/dualvar/;
  use constant 'Keep' => dualvar(0x00000000, 'WGPUStencilOperation_Keep');
  use constant 'Zero' => dualvar(0x00000001, 'WGPUStencilOperation_Zero');
  use constant 'Replace' => dualvar(0x00000002, 'WGPUStencilOperation_Replace');
  use constant 'Invert' => dualvar(0x00000003, 'WGPUStencilOperation_Invert');
  use constant 'IncrementClamp' => dualvar(0x00000004, 'WGPUStencilOperation_IncrementClamp');
  use constant 'DecrementClamp' => dualvar(0x00000005, 'WGPUStencilOperation_DecrementClamp');
  use constant 'IncrementWrap' => dualvar(0x00000006, 'WGPUStencilOperation_IncrementWrap');
  use constant 'DecrementWrap' => dualvar(0x00000007, 'WGPUStencilOperation_DecrementWrap');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUStencilOperation_Force32');
};

package WebGPU::Direct::StorageTextureAccess {
  use Scalar::Util qw/dualvar/;
  use constant 'Undefined' => dualvar(0x00000000, 'WGPUStorageTextureAccess_Undefined');
  use constant 'WriteOnly' => dualvar(0x00000001, 'WGPUStorageTextureAccess_WriteOnly');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUStorageTextureAccess_Force32');
};

package WebGPU::Direct::StoreOp {
  use Scalar::Util qw/dualvar/;
  use constant 'Undefined' => dualvar(0x00000000, 'WGPUStoreOp_Undefined');
  use constant 'Store' => dualvar(0x00000001, 'WGPUStoreOp_Store');
  use constant 'Discard' => dualvar(0x00000002, 'WGPUStoreOp_Discard');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUStoreOp_Force32');
};

package WebGPU::Direct::TextureAspect {
  use Scalar::Util qw/dualvar/;
  use constant 'All' => dualvar(0x00000000, 'WGPUTextureAspect_All');
  use constant 'StencilOnly' => dualvar(0x00000001, 'WGPUTextureAspect_StencilOnly');
  use constant 'DepthOnly' => dualvar(0x00000002, 'WGPUTextureAspect_DepthOnly');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUTextureAspect_Force32');
};

package WebGPU::Direct::TextureDimension {
  use Scalar::Util qw/dualvar/;
  use constant '_1D' => dualvar(0x00000000, 'WGPUTextureDimension_1D');
  use constant '_2D' => dualvar(0x00000001, 'WGPUTextureDimension_2D');
  use constant '_3D' => dualvar(0x00000002, 'WGPUTextureDimension_3D');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUTextureDimension_Force32');
};

package WebGPU::Direct::TextureFormat {
  use Scalar::Util qw/dualvar/;
  use constant 'Undefined' => dualvar(0x00000000, 'WGPUTextureFormat_Undefined');
  use constant 'R8Unorm' => dualvar(0x00000001, 'WGPUTextureFormat_R8Unorm');
  use constant 'R8Snorm' => dualvar(0x00000002, 'WGPUTextureFormat_R8Snorm');
  use constant 'R8Uint' => dualvar(0x00000003, 'WGPUTextureFormat_R8Uint');
  use constant 'R8Sint' => dualvar(0x00000004, 'WGPUTextureFormat_R8Sint');
  use constant 'R16Uint' => dualvar(0x00000005, 'WGPUTextureFormat_R16Uint');
  use constant 'R16Sint' => dualvar(0x00000006, 'WGPUTextureFormat_R16Sint');
  use constant 'R16Float' => dualvar(0x00000007, 'WGPUTextureFormat_R16Float');
  use constant 'RG8Unorm' => dualvar(0x00000008, 'WGPUTextureFormat_RG8Unorm');
  use constant 'RG8Snorm' => dualvar(0x00000009, 'WGPUTextureFormat_RG8Snorm');
  use constant 'RG8Uint' => dualvar(0x0000000A, 'WGPUTextureFormat_RG8Uint');
  use constant 'RG8Sint' => dualvar(0x0000000B, 'WGPUTextureFormat_RG8Sint');
  use constant 'R32Float' => dualvar(0x0000000C, 'WGPUTextureFormat_R32Float');
  use constant 'R32Uint' => dualvar(0x0000000D, 'WGPUTextureFormat_R32Uint');
  use constant 'R32Sint' => dualvar(0x0000000E, 'WGPUTextureFormat_R32Sint');
  use constant 'RG16Uint' => dualvar(0x0000000F, 'WGPUTextureFormat_RG16Uint');
  use constant 'RG16Sint' => dualvar(0x00000010, 'WGPUTextureFormat_RG16Sint');
  use constant 'RG16Float' => dualvar(0x00000011, 'WGPUTextureFormat_RG16Float');
  use constant 'RGBA8Unorm' => dualvar(0x00000012, 'WGPUTextureFormat_RGBA8Unorm');
  use constant 'RGBA8UnormSrgb' => dualvar(0x00000013, 'WGPUTextureFormat_RGBA8UnormSrgb');
  use constant 'RGBA8Snorm' => dualvar(0x00000014, 'WGPUTextureFormat_RGBA8Snorm');
  use constant 'RGBA8Uint' => dualvar(0x00000015, 'WGPUTextureFormat_RGBA8Uint');
  use constant 'RGBA8Sint' => dualvar(0x00000016, 'WGPUTextureFormat_RGBA8Sint');
  use constant 'BGRA8Unorm' => dualvar(0x00000017, 'WGPUTextureFormat_BGRA8Unorm');
  use constant 'BGRA8UnormSrgb' => dualvar(0x00000018, 'WGPUTextureFormat_BGRA8UnormSrgb');
  use constant 'RGB10A2Unorm' => dualvar(0x00000019, 'WGPUTextureFormat_RGB10A2Unorm');
  use constant 'RG11B10Ufloat' => dualvar(0x0000001A, 'WGPUTextureFormat_RG11B10Ufloat');
  use constant 'RGB9E5Ufloat' => dualvar(0x0000001B, 'WGPUTextureFormat_RGB9E5Ufloat');
  use constant 'RG32Float' => dualvar(0x0000001C, 'WGPUTextureFormat_RG32Float');
  use constant 'RG32Uint' => dualvar(0x0000001D, 'WGPUTextureFormat_RG32Uint');
  use constant 'RG32Sint' => dualvar(0x0000001E, 'WGPUTextureFormat_RG32Sint');
  use constant 'RGBA16Uint' => dualvar(0x0000001F, 'WGPUTextureFormat_RGBA16Uint');
  use constant 'RGBA16Sint' => dualvar(0x00000020, 'WGPUTextureFormat_RGBA16Sint');
  use constant 'RGBA16Float' => dualvar(0x00000021, 'WGPUTextureFormat_RGBA16Float');
  use constant 'RGBA32Float' => dualvar(0x00000022, 'WGPUTextureFormat_RGBA32Float');
  use constant 'RGBA32Uint' => dualvar(0x00000023, 'WGPUTextureFormat_RGBA32Uint');
  use constant 'RGBA32Sint' => dualvar(0x00000024, 'WGPUTextureFormat_RGBA32Sint');
  use constant 'Stencil8' => dualvar(0x00000025, 'WGPUTextureFormat_Stencil8');
  use constant 'Depth16Unorm' => dualvar(0x00000026, 'WGPUTextureFormat_Depth16Unorm');
  use constant 'Depth24Plus' => dualvar(0x00000027, 'WGPUTextureFormat_Depth24Plus');
  use constant 'Depth24PlusStencil8' => dualvar(0x00000028, 'WGPUTextureFormat_Depth24PlusStencil8');
  use constant 'Depth32Float' => dualvar(0x00000029, 'WGPUTextureFormat_Depth32Float');
  use constant 'Depth32FloatStencil8' => dualvar(0x0000002A, 'WGPUTextureFormat_Depth32FloatStencil8');
  use constant 'BC1RGBAUnorm' => dualvar(0x0000002B, 'WGPUTextureFormat_BC1RGBAUnorm');
  use constant 'BC1RGBAUnormSrgb' => dualvar(0x0000002C, 'WGPUTextureFormat_BC1RGBAUnormSrgb');
  use constant 'BC2RGBAUnorm' => dualvar(0x0000002D, 'WGPUTextureFormat_BC2RGBAUnorm');
  use constant 'BC2RGBAUnormSrgb' => dualvar(0x0000002E, 'WGPUTextureFormat_BC2RGBAUnormSrgb');
  use constant 'BC3RGBAUnorm' => dualvar(0x0000002F, 'WGPUTextureFormat_BC3RGBAUnorm');
  use constant 'BC3RGBAUnormSrgb' => dualvar(0x00000030, 'WGPUTextureFormat_BC3RGBAUnormSrgb');
  use constant 'BC4RUnorm' => dualvar(0x00000031, 'WGPUTextureFormat_BC4RUnorm');
  use constant 'BC4RSnorm' => dualvar(0x00000032, 'WGPUTextureFormat_BC4RSnorm');
  use constant 'BC5RGUnorm' => dualvar(0x00000033, 'WGPUTextureFormat_BC5RGUnorm');
  use constant 'BC5RGSnorm' => dualvar(0x00000034, 'WGPUTextureFormat_BC5RGSnorm');
  use constant 'BC6HRGBUfloat' => dualvar(0x00000035, 'WGPUTextureFormat_BC6HRGBUfloat');
  use constant 'BC6HRGBFloat' => dualvar(0x00000036, 'WGPUTextureFormat_BC6HRGBFloat');
  use constant 'BC7RGBAUnorm' => dualvar(0x00000037, 'WGPUTextureFormat_BC7RGBAUnorm');
  use constant 'BC7RGBAUnormSrgb' => dualvar(0x00000038, 'WGPUTextureFormat_BC7RGBAUnormSrgb');
  use constant 'ETC2RGB8Unorm' => dualvar(0x00000039, 'WGPUTextureFormat_ETC2RGB8Unorm');
  use constant 'ETC2RGB8UnormSrgb' => dualvar(0x0000003A, 'WGPUTextureFormat_ETC2RGB8UnormSrgb');
  use constant 'ETC2RGB8A1Unorm' => dualvar(0x0000003B, 'WGPUTextureFormat_ETC2RGB8A1Unorm');
  use constant 'ETC2RGB8A1UnormSrgb' => dualvar(0x0000003C, 'WGPUTextureFormat_ETC2RGB8A1UnormSrgb');
  use constant 'ETC2RGBA8Unorm' => dualvar(0x0000003D, 'WGPUTextureFormat_ETC2RGBA8Unorm');
  use constant 'ETC2RGBA8UnormSrgb' => dualvar(0x0000003E, 'WGPUTextureFormat_ETC2RGBA8UnormSrgb');
  use constant 'EACR11Unorm' => dualvar(0x0000003F, 'WGPUTextureFormat_EACR11Unorm');
  use constant 'EACR11Snorm' => dualvar(0x00000040, 'WGPUTextureFormat_EACR11Snorm');
  use constant 'EACRG11Unorm' => dualvar(0x00000041, 'WGPUTextureFormat_EACRG11Unorm');
  use constant 'EACRG11Snorm' => dualvar(0x00000042, 'WGPUTextureFormat_EACRG11Snorm');
  use constant 'ASTC4x4Unorm' => dualvar(0x00000043, 'WGPUTextureFormat_ASTC4x4Unorm');
  use constant 'ASTC4x4UnormSrgb' => dualvar(0x00000044, 'WGPUTextureFormat_ASTC4x4UnormSrgb');
  use constant 'ASTC5x4Unorm' => dualvar(0x00000045, 'WGPUTextureFormat_ASTC5x4Unorm');
  use constant 'ASTC5x4UnormSrgb' => dualvar(0x00000046, 'WGPUTextureFormat_ASTC5x4UnormSrgb');
  use constant 'ASTC5x5Unorm' => dualvar(0x00000047, 'WGPUTextureFormat_ASTC5x5Unorm');
  use constant 'ASTC5x5UnormSrgb' => dualvar(0x00000048, 'WGPUTextureFormat_ASTC5x5UnormSrgb');
  use constant 'ASTC6x5Unorm' => dualvar(0x00000049, 'WGPUTextureFormat_ASTC6x5Unorm');
  use constant 'ASTC6x5UnormSrgb' => dualvar(0x0000004A, 'WGPUTextureFormat_ASTC6x5UnormSrgb');
  use constant 'ASTC6x6Unorm' => dualvar(0x0000004B, 'WGPUTextureFormat_ASTC6x6Unorm');
  use constant 'ASTC6x6UnormSrgb' => dualvar(0x0000004C, 'WGPUTextureFormat_ASTC6x6UnormSrgb');
  use constant 'ASTC8x5Unorm' => dualvar(0x0000004D, 'WGPUTextureFormat_ASTC8x5Unorm');
  use constant 'ASTC8x5UnormSrgb' => dualvar(0x0000004E, 'WGPUTextureFormat_ASTC8x5UnormSrgb');
  use constant 'ASTC8x6Unorm' => dualvar(0x0000004F, 'WGPUTextureFormat_ASTC8x6Unorm');
  use constant 'ASTC8x6UnormSrgb' => dualvar(0x00000050, 'WGPUTextureFormat_ASTC8x6UnormSrgb');
  use constant 'ASTC8x8Unorm' => dualvar(0x00000051, 'WGPUTextureFormat_ASTC8x8Unorm');
  use constant 'ASTC8x8UnormSrgb' => dualvar(0x00000052, 'WGPUTextureFormat_ASTC8x8UnormSrgb');
  use constant 'ASTC10x5Unorm' => dualvar(0x00000053, 'WGPUTextureFormat_ASTC10x5Unorm');
  use constant 'ASTC10x5UnormSrgb' => dualvar(0x00000054, 'WGPUTextureFormat_ASTC10x5UnormSrgb');
  use constant 'ASTC10x6Unorm' => dualvar(0x00000055, 'WGPUTextureFormat_ASTC10x6Unorm');
  use constant 'ASTC10x6UnormSrgb' => dualvar(0x00000056, 'WGPUTextureFormat_ASTC10x6UnormSrgb');
  use constant 'ASTC10x8Unorm' => dualvar(0x00000057, 'WGPUTextureFormat_ASTC10x8Unorm');
  use constant 'ASTC10x8UnormSrgb' => dualvar(0x00000058, 'WGPUTextureFormat_ASTC10x8UnormSrgb');
  use constant 'ASTC10x10Unorm' => dualvar(0x00000059, 'WGPUTextureFormat_ASTC10x10Unorm');
  use constant 'ASTC10x10UnormSrgb' => dualvar(0x0000005A, 'WGPUTextureFormat_ASTC10x10UnormSrgb');
  use constant 'ASTC12x10Unorm' => dualvar(0x0000005B, 'WGPUTextureFormat_ASTC12x10Unorm');
  use constant 'ASTC12x10UnormSrgb' => dualvar(0x0000005C, 'WGPUTextureFormat_ASTC12x10UnormSrgb');
  use constant 'ASTC12x12Unorm' => dualvar(0x0000005D, 'WGPUTextureFormat_ASTC12x12Unorm');
  use constant 'ASTC12x12UnormSrgb' => dualvar(0x0000005E, 'WGPUTextureFormat_ASTC12x12UnormSrgb');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUTextureFormat_Force32');
};

package WebGPU::Direct::TextureSampleType {
  use Scalar::Util qw/dualvar/;
  use constant 'Undefined' => dualvar(0x00000000, 'WGPUTextureSampleType_Undefined');
  use constant 'Float' => dualvar(0x00000001, 'WGPUTextureSampleType_Float');
  use constant 'UnfilterableFloat' => dualvar(0x00000002, 'WGPUTextureSampleType_UnfilterableFloat');
  use constant 'Depth' => dualvar(0x00000003, 'WGPUTextureSampleType_Depth');
  use constant 'Sint' => dualvar(0x00000004, 'WGPUTextureSampleType_Sint');
  use constant 'Uint' => dualvar(0x00000005, 'WGPUTextureSampleType_Uint');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUTextureSampleType_Force32');
};

package WebGPU::Direct::TextureUsage {
  use Scalar::Util qw/dualvar/;
  use constant 'None' => dualvar(0x00000000, 'WGPUTextureUsage_None');
  use constant 'CopySrc' => dualvar(0x00000001, 'WGPUTextureUsage_CopySrc');
  use constant 'CopyDst' => dualvar(0x00000002, 'WGPUTextureUsage_CopyDst');
  use constant 'TextureBinding' => dualvar(0x00000004, 'WGPUTextureUsage_TextureBinding');
  use constant 'StorageBinding' => dualvar(0x00000008, 'WGPUTextureUsage_StorageBinding');
  use constant 'RenderAttachment' => dualvar(0x00000010, 'WGPUTextureUsage_RenderAttachment');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUTextureUsage_Force32');
};

package WebGPU::Direct::TextureViewDimension {
  use Scalar::Util qw/dualvar/;
  use constant 'Undefined' => dualvar(0x00000000, 'WGPUTextureViewDimension_Undefined');
  use constant '_1D' => dualvar(0x00000001, 'WGPUTextureViewDimension_1D');
  use constant '_2D' => dualvar(0x00000002, 'WGPUTextureViewDimension_2D');
  use constant '_2DArray' => dualvar(0x00000003, 'WGPUTextureViewDimension_2DArray');
  use constant 'Cube' => dualvar(0x00000004, 'WGPUTextureViewDimension_Cube');
  use constant 'CubeArray' => dualvar(0x00000005, 'WGPUTextureViewDimension_CubeArray');
  use constant '_3D' => dualvar(0x00000006, 'WGPUTextureViewDimension_3D');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUTextureViewDimension_Force32');
};

package WebGPU::Direct::VertexFormat {
  use Scalar::Util qw/dualvar/;
  use constant 'Undefined' => dualvar(0x00000000, 'WGPUVertexFormat_Undefined');
  use constant 'Uint8x2' => dualvar(0x00000001, 'WGPUVertexFormat_Uint8x2');
  use constant 'Uint8x4' => dualvar(0x00000002, 'WGPUVertexFormat_Uint8x4');
  use constant 'Sint8x2' => dualvar(0x00000003, 'WGPUVertexFormat_Sint8x2');
  use constant 'Sint8x4' => dualvar(0x00000004, 'WGPUVertexFormat_Sint8x4');
  use constant 'Unorm8x2' => dualvar(0x00000005, 'WGPUVertexFormat_Unorm8x2');
  use constant 'Unorm8x4' => dualvar(0x00000006, 'WGPUVertexFormat_Unorm8x4');
  use constant 'Snorm8x2' => dualvar(0x00000007, 'WGPUVertexFormat_Snorm8x2');
  use constant 'Snorm8x4' => dualvar(0x00000008, 'WGPUVertexFormat_Snorm8x4');
  use constant 'Uint16x2' => dualvar(0x00000009, 'WGPUVertexFormat_Uint16x2');
  use constant 'Uint16x4' => dualvar(0x0000000A, 'WGPUVertexFormat_Uint16x4');
  use constant 'Sint16x2' => dualvar(0x0000000B, 'WGPUVertexFormat_Sint16x2');
  use constant 'Sint16x4' => dualvar(0x0000000C, 'WGPUVertexFormat_Sint16x4');
  use constant 'Unorm16x2' => dualvar(0x0000000D, 'WGPUVertexFormat_Unorm16x2');
  use constant 'Unorm16x4' => dualvar(0x0000000E, 'WGPUVertexFormat_Unorm16x4');
  use constant 'Snorm16x2' => dualvar(0x0000000F, 'WGPUVertexFormat_Snorm16x2');
  use constant 'Snorm16x4' => dualvar(0x00000010, 'WGPUVertexFormat_Snorm16x4');
  use constant 'Float16x2' => dualvar(0x00000011, 'WGPUVertexFormat_Float16x2');
  use constant 'Float16x4' => dualvar(0x00000012, 'WGPUVertexFormat_Float16x4');
  use constant 'Float32' => dualvar(0x00000013, 'WGPUVertexFormat_Float32');
  use constant 'Float32x2' => dualvar(0x00000014, 'WGPUVertexFormat_Float32x2');
  use constant 'Float32x3' => dualvar(0x00000015, 'WGPUVertexFormat_Float32x3');
  use constant 'Float32x4' => dualvar(0x00000016, 'WGPUVertexFormat_Float32x4');
  use constant 'Uint32' => dualvar(0x00000017, 'WGPUVertexFormat_Uint32');
  use constant 'Uint32x2' => dualvar(0x00000018, 'WGPUVertexFormat_Uint32x2');
  use constant 'Uint32x3' => dualvar(0x00000019, 'WGPUVertexFormat_Uint32x3');
  use constant 'Uint32x4' => dualvar(0x0000001A, 'WGPUVertexFormat_Uint32x4');
  use constant 'Sint32' => dualvar(0x0000001B, 'WGPUVertexFormat_Sint32');
  use constant 'Sint32x2' => dualvar(0x0000001C, 'WGPUVertexFormat_Sint32x2');
  use constant 'Sint32x3' => dualvar(0x0000001D, 'WGPUVertexFormat_Sint32x3');
  use constant 'Sint32x4' => dualvar(0x0000001E, 'WGPUVertexFormat_Sint32x4');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUVertexFormat_Force32');
};

package WebGPU::Direct::VertexStepMode {
  use Scalar::Util qw/dualvar/;
  use constant 'Vertex' => dualvar(0x00000000, 'WGPUVertexStepMode_Vertex');
  use constant 'Instance' => dualvar(0x00000001, 'WGPUVertexStepMode_Instance');
  use constant 'VertexBufferNotUsed' => dualvar(0x00000002, 'WGPUVertexStepMode_VertexBufferNotUsed');
  use constant 'Force32' => dualvar(0x7FFFFFFF, 'WGPUVertexStepMode_Force32');
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

package WebGPU::Direct::SwapChain {
    push @WebGPU::Direct::SwapChain::ISA, "WebGPU::Direct::Opaque";
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
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::BindGroupEntry {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::BindGroupEntry\n"
          if !$class->isa("WebGPU::Direct::BindGroupEntry");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
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
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::ComputePassTimestampWrite {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::ComputePassTimestampWrite\n"
          if !$class->isa("WebGPU::Direct::ComputePassTimestampWrite");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
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
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::RenderPassTimestampWrite {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::RenderPassTimestampWrite\n"
          if !$class->isa("WebGPU::Direct::RenderPassTimestampWrite");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
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
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::StencilFaceState {
    
    my $default = {
             'compare' => WebGPU::Direct::CompareFunction->Always,
             'depthFailOp' => \'StencilOperation->Keep',
             'failOp' => \'StencilOperation->Keep',
             'passOp' => \'StencilOperation->Keep',
           };

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::StencilFaceState\n"
          if !$class->isa("WebGPU::Direct::StencilFaceState");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
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
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

package WebGPU::Direct::SwapChainDescriptor {
    
    my $default = {};

    sub new {
        my $class = shift;
        die "$class does not inherit from WebGPU::Direct::SwapChainDescriptor\n"
          if !$class->isa("WebGPU::Direct::SwapChainDescriptor");
        $class = ref($class) ? ref($class) : $class;
        my $result = { %$default, ref( $_[0] ) eq ref {} ? %{$_[0]} : @_ };
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
        $result = bless( $result, $class );
        $result->pack;
        return $result;
    }
    
}

1;
