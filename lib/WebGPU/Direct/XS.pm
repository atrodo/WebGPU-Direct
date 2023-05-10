package WebGPU::Direct::XS;

use 5.030000;
use strict;
use warnings;

require Exporter;
use AutoLoader qw(AUTOLOAD);

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use WebGPU::Direct::XS ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	AdapterEnumerateFeatures
	AdapterGetLimits
	AdapterGetProperties
	AdapterHasFeature
	AdapterRequestDevice
	BindGroupLayoutSetLabel
	BindGroupSetLabel
	BufferDestroy
	BufferGetConstMappedRange
	BufferGetMapState
	BufferGetMappedRange
	BufferGetSize
	BufferGetUsage
	BufferMapAsync
	BufferSetLabel
	BufferUnmap
	CommandBufferSetLabel
	CommandEncoderBeginComputePass
	CommandEncoderBeginRenderPass
	CommandEncoderClearBuffer
	CommandEncoderCopyBufferToBuffer
	CommandEncoderCopyBufferToTexture
	CommandEncoderCopyTextureToBuffer
	CommandEncoderCopyTextureToTexture
	CommandEncoderFinish
	CommandEncoderInsertDebugMarker
	CommandEncoderPopDebugGroup
	CommandEncoderPushDebugGroup
	CommandEncoderResolveQuerySet
	CommandEncoderSetLabel
	CommandEncoderWriteTimestamp
	ComputePassEncoderBeginPipelineStatisticsQuery
	ComputePassEncoderDispatchWorkgroups
	ComputePassEncoderDispatchWorkgroupsIndirect
	ComputePassEncoderEnd
	ComputePassEncoderEndPipelineStatisticsQuery
	ComputePassEncoderInsertDebugMarker
	ComputePassEncoderPopDebugGroup
	ComputePassEncoderPushDebugGroup
	ComputePassEncoderSetBindGroup
	ComputePassEncoderSetLabel
	ComputePassEncoderSetPipeline
	ComputePipelineGetBindGroupLayout
	ComputePipelineSetLabel
	CreateInstance
	DeviceCreateBindGroup
	DeviceCreateBindGroupLayout
	DeviceCreateBuffer
	DeviceCreateCommandEncoder
	DeviceCreateComputePipeline
	DeviceCreateComputePipelineAsync
	DeviceCreatePipelineLayout
	DeviceCreateQuerySet
	DeviceCreateRenderBundleEncoder
	DeviceCreateRenderPipeline
	DeviceCreateRenderPipelineAsync
	DeviceCreateSampler
	DeviceCreateShaderModule
	DeviceCreateSwapChain
	DeviceCreateTexture
	DeviceDestroy
	DeviceEnumerateFeatures
	DeviceGetLimits
	DeviceGetQueue
	DeviceHasFeature
	DevicePopErrorScope
	DevicePushErrorScope
	DeviceSetDeviceLostCallback
	DeviceSetLabel
	DeviceSetUncapturedErrorCallback
	GetProcAddress
	InstanceCreateSurface
	InstanceProcessEvents
	InstanceRequestAdapter
	PipelineLayoutSetLabel
	QuerySetDestroy
	QuerySetGetCount
	QuerySetGetType
	QuerySetSetLabel
	QueueOnSubmittedWorkDone
	QueueSetLabel
	QueueSubmit
	QueueWriteBuffer
	QueueWriteTexture
	RenderBundleEncoderDraw
	RenderBundleEncoderDrawIndexed
	RenderBundleEncoderDrawIndexedIndirect
	RenderBundleEncoderDrawIndirect
	RenderBundleEncoderFinish
	RenderBundleEncoderInsertDebugMarker
	RenderBundleEncoderPopDebugGroup
	RenderBundleEncoderPushDebugGroup
	RenderBundleEncoderSetBindGroup
	RenderBundleEncoderSetIndexBuffer
	RenderBundleEncoderSetLabel
	RenderBundleEncoderSetPipeline
	RenderBundleEncoderSetVertexBuffer
	RenderPassEncoderBeginOcclusionQuery
	RenderPassEncoderBeginPipelineStatisticsQuery
	RenderPassEncoderDraw
	RenderPassEncoderDrawIndexed
	RenderPassEncoderDrawIndexedIndirect
	RenderPassEncoderDrawIndirect
	RenderPassEncoderEnd
	RenderPassEncoderEndOcclusionQuery
	RenderPassEncoderEndPipelineStatisticsQuery
	RenderPassEncoderExecuteBundles
	RenderPassEncoderInsertDebugMarker
	RenderPassEncoderPopDebugGroup
	RenderPassEncoderPushDebugGroup
	RenderPassEncoderSetBindGroup
	RenderPassEncoderSetBlendConstant
	RenderPassEncoderSetIndexBuffer
	RenderPassEncoderSetLabel
	RenderPassEncoderSetPipeline
	RenderPassEncoderSetScissorRect
	RenderPassEncoderSetStencilReference
	RenderPassEncoderSetVertexBuffer
	RenderPassEncoderSetViewport
	RenderPipelineGetBindGroupLayout
	RenderPipelineSetLabel
	SamplerSetLabel
	ShaderModuleGetCompilationInfo
	ShaderModuleSetLabel
	SurfaceGetPreferredFormat
	SwapChainGetCurrentTextureView
	SwapChainPresent
	TextureCreateView
	TextureDestroy
	TextureGetDepthOrArrayLayers
	TextureGetDimension
	TextureGetFormat
	TextureGetHeight
	TextureGetMipLevelCount
	TextureGetSampleCount
	TextureGetUsage
	TextureGetWidth
	TextureSetLabel
	TextureViewSetLabel
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	
);

our $VERSION = '0.01';

require XSLoader;
XSLoader::load('WebGPU::Direct', $VERSION);

# Preloaded methods go here.

# Autoload methods go after =cut, and are processed by the autosplit program.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

WebGPU::Direct::XS - Perl extension for blah blah blah

=head1 SYNOPSIS

  use WebGPU::Direct::XS;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for WebGPU::Direct::XS, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

=head2 EXPORT

None by default.

=head2 Exportable functions

  size_t wgpuAdapterEnumerateFeatures(WGPUAdapter adapter, WGPUFeatureName * features)
  int wgpuAdapterGetLimits(WGPUAdapter adapter, WGPUSupportedLimits * limits)
  void wgpuAdapterGetProperties(WGPUAdapter adapter, WGPUAdapterProperties * properties)
  int wgpuAdapterHasFeature(WGPUAdapter adapter, WGPUFeatureName feature)
  void wgpuAdapterRequestDevice(WGPUAdapter adapter, WGPUDeviceDescriptor const * descriptor , WGPURequestDeviceCallback callback, void * userdata)
  void wgpuBindGroupLayoutSetLabel(WGPUBindGroupLayout bindGroupLayout, char const * label)
  void wgpuBindGroupSetLabel(WGPUBindGroup bindGroup, char const * label)
  void wgpuBufferDestroy(WGPUBuffer buffer)
  void const * wgpuBufferGetConstMappedRange(WGPUBuffer buffer, size_t offset, size_t size)
  WGPUBufferMapState wgpuBufferGetMapState(WGPUBuffer buffer)
  void * wgpuBufferGetMappedRange(WGPUBuffer buffer, size_t offset, size_t size)
  uint64_t wgpuBufferGetSize(WGPUBuffer buffer)
  WGPUBufferUsage wgpuBufferGetUsage(WGPUBuffer buffer)
  void wgpuBufferMapAsync(WGPUBuffer buffer, WGPUMapModeFlags mode, size_t offset, size_t size, WGPUBufferMapCallback callback, void * userdata)
  void wgpuBufferSetLabel(WGPUBuffer buffer, char const * label)
  void wgpuBufferUnmap(WGPUBuffer buffer)
  void wgpuCommandBufferSetLabel(WGPUCommandBuffer commandBuffer, char const * label)
  WGPUComputePassEncoder wgpuCommandEncoderBeginComputePass(WGPUCommandEncoder commandEncoder, WGPUComputePassDescriptor const * descriptor )
  WGPURenderPassEncoder wgpuCommandEncoderBeginRenderPass(WGPUCommandEncoder commandEncoder, WGPURenderPassDescriptor const * descriptor)
  void wgpuCommandEncoderClearBuffer(WGPUCommandEncoder commandEncoder, WGPUBuffer buffer, uint64_t offset, uint64_t size)
  void wgpuCommandEncoderCopyBufferToBuffer(WGPUCommandEncoder commandEncoder, WGPUBuffer source, uint64_t sourceOffset, WGPUBuffer destination, uint64_t destinationOffset, uint64_t size)
  void wgpuCommandEncoderCopyBufferToTexture(WGPUCommandEncoder commandEncoder, WGPUImageCopyBuffer const * source, WGPUImageCopyTexture const * destination, WGPUExtent3D const * copySize)
  void wgpuCommandEncoderCopyTextureToBuffer(WGPUCommandEncoder commandEncoder, WGPUImageCopyTexture const * source, WGPUImageCopyBuffer const * destination, WGPUExtent3D const * copySize)
  void wgpuCommandEncoderCopyTextureToTexture(WGPUCommandEncoder commandEncoder, WGPUImageCopyTexture const * source, WGPUImageCopyTexture const * destination, WGPUExtent3D const * copySize)
  WGPUCommandBuffer wgpuCommandEncoderFinish(WGPUCommandEncoder commandEncoder, WGPUCommandBufferDescriptor const * descriptor )
  void wgpuCommandEncoderInsertDebugMarker(WGPUCommandEncoder commandEncoder, char const * markerLabel)
  void wgpuCommandEncoderPopDebugGroup(WGPUCommandEncoder commandEncoder)
  void wgpuCommandEncoderPushDebugGroup(WGPUCommandEncoder commandEncoder, char const * groupLabel)
  void wgpuCommandEncoderResolveQuerySet(WGPUCommandEncoder commandEncoder, WGPUQuerySet querySet, uint32_t firstQuery, uint32_t queryCount, WGPUBuffer destination, uint64_t destinationOffset)
  void wgpuCommandEncoderSetLabel(WGPUCommandEncoder commandEncoder, char const * label)
  void wgpuCommandEncoderWriteTimestamp(WGPUCommandEncoder commandEncoder, WGPUQuerySet querySet, uint32_t queryIndex)
  void wgpuComputePassEncoderBeginPipelineStatisticsQuery(WGPUComputePassEncoder computePassEncoder, WGPUQuerySet querySet, uint32_t queryIndex)
  void wgpuComputePassEncoderDispatchWorkgroups(WGPUComputePassEncoder computePassEncoder, uint32_t workgroupCountX, uint32_t workgroupCountY, uint32_t workgroupCountZ)
  void wgpuComputePassEncoderDispatchWorkgroupsIndirect(WGPUComputePassEncoder computePassEncoder, WGPUBuffer indirectBuffer, uint64_t indirectOffset)
  void wgpuComputePassEncoderEnd(WGPUComputePassEncoder computePassEncoder)
  void wgpuComputePassEncoderEndPipelineStatisticsQuery(WGPUComputePassEncoder computePassEncoder)
  void wgpuComputePassEncoderInsertDebugMarker(WGPUComputePassEncoder computePassEncoder, char const * markerLabel)
  void wgpuComputePassEncoderPopDebugGroup(WGPUComputePassEncoder computePassEncoder)
  void wgpuComputePassEncoderPushDebugGroup(WGPUComputePassEncoder computePassEncoder, char const * groupLabel)
  void wgpuComputePassEncoderSetBindGroup(WGPUComputePassEncoder computePassEncoder, uint32_t groupIndex, WGPUBindGroup group, uint32_t dynamicOffsetCount, uint32_t const * dynamicOffsets)
  void wgpuComputePassEncoderSetLabel(WGPUComputePassEncoder computePassEncoder, char const * label)
  void wgpuComputePassEncoderSetPipeline(WGPUComputePassEncoder computePassEncoder, WGPUComputePipeline pipeline)
  WGPUBindGroupLayout wgpuComputePipelineGetBindGroupLayout(WGPUComputePipeline computePipeline, uint32_t groupIndex)
  void wgpuComputePipelineSetLabel(WGPUComputePipeline computePipeline, char const * label)
  WGPUInstance wgpuCreateInstance(WGPUInstanceDescriptor const * descriptor)
  WGPUBindGroup wgpuDeviceCreateBindGroup(WGPUDevice device, WGPUBindGroupDescriptor const * descriptor)
  WGPUBindGroupLayout wgpuDeviceCreateBindGroupLayout(WGPUDevice device, WGPUBindGroupLayoutDescriptor const * descriptor)
  WGPUBuffer wgpuDeviceCreateBuffer(WGPUDevice device, WGPUBufferDescriptor const * descriptor)
  WGPUCommandEncoder wgpuDeviceCreateCommandEncoder(WGPUDevice device, WGPUCommandEncoderDescriptor const * descriptor )
  WGPUComputePipeline wgpuDeviceCreateComputePipeline(WGPUDevice device, WGPUComputePipelineDescriptor const * descriptor)
  void wgpuDeviceCreateComputePipelineAsync(WGPUDevice device, WGPUComputePipelineDescriptor const * descriptor, WGPUCreateComputePipelineAsyncCallback callback, void * userdata)
  WGPUPipelineLayout wgpuDeviceCreatePipelineLayout(WGPUDevice device, WGPUPipelineLayoutDescriptor const * descriptor)
  WGPUQuerySet wgpuDeviceCreateQuerySet(WGPUDevice device, WGPUQuerySetDescriptor const * descriptor)
  WGPURenderBundleEncoder wgpuDeviceCreateRenderBundleEncoder(WGPUDevice device, WGPURenderBundleEncoderDescriptor const * descriptor)
  WGPURenderPipeline wgpuDeviceCreateRenderPipeline(WGPUDevice device, WGPURenderPipelineDescriptor const * descriptor)
  void wgpuDeviceCreateRenderPipelineAsync(WGPUDevice device, WGPURenderPipelineDescriptor const * descriptor, WGPUCreateRenderPipelineAsyncCallback callback, void * userdata)
  WGPUSampler wgpuDeviceCreateSampler(WGPUDevice device, WGPUSamplerDescriptor const * descriptor )
  WGPUShaderModule wgpuDeviceCreateShaderModule(WGPUDevice device, WGPUShaderModuleDescriptor const * descriptor)
  WGPUSwapChain wgpuDeviceCreateSwapChain(WGPUDevice device, WGPUSurface surface, WGPUSwapChainDescriptor const * descriptor)
  WGPUTexture wgpuDeviceCreateTexture(WGPUDevice device, WGPUTextureDescriptor const * descriptor)
  void wgpuDeviceDestroy(WGPUDevice device)
  size_t wgpuDeviceEnumerateFeatures(WGPUDevice device, WGPUFeatureName * features)
  int wgpuDeviceGetLimits(WGPUDevice device, WGPUSupportedLimits * limits)
  WGPUQueue wgpuDeviceGetQueue(WGPUDevice device)
  int wgpuDeviceHasFeature(WGPUDevice device, WGPUFeatureName feature)
  int wgpuDevicePopErrorScope(WGPUDevice device, WGPUErrorCallback callback, void * userdata)
  void wgpuDevicePushErrorScope(WGPUDevice device, WGPUErrorFilter filter)
  void wgpuDeviceSetDeviceLostCallback(WGPUDevice device, WGPUDeviceLostCallback callback, void * userdata)
  void wgpuDeviceSetLabel(WGPUDevice device, char const * label)
  void wgpuDeviceSetUncapturedErrorCallback(WGPUDevice device, WGPUErrorCallback callback, void * userdata)
  WGPUProc wgpuGetProcAddress(WGPUDevice device, char const * procName)
  WGPUSurface wgpuInstanceCreateSurface(WGPUInstance instance, WGPUSurfaceDescriptor const * descriptor)
  void wgpuInstanceProcessEvents(WGPUInstance instance)
  void wgpuInstanceRequestAdapter(WGPUInstance instance, WGPURequestAdapterOptions const * options , WGPURequestAdapterCallback callback, void * userdata)
  void wgpuPipelineLayoutSetLabel(WGPUPipelineLayout pipelineLayout, char const * label)
  void wgpuQuerySetDestroy(WGPUQuerySet querySet)
  uint32_t wgpuQuerySetGetCount(WGPUQuerySet querySet)
  WGPUQueryType wgpuQuerySetGetType(WGPUQuerySet querySet)
  void wgpuQuerySetSetLabel(WGPUQuerySet querySet, char const * label)
  void wgpuQueueOnSubmittedWorkDone(WGPUQueue queue, WGPUQueueWorkDoneCallback callback, void * userdata)
  void wgpuQueueSetLabel(WGPUQueue queue, char const * label)
  void wgpuQueueSubmit(WGPUQueue queue, uint32_t commandCount, WGPUCommandBuffer const * commands)
  void wgpuQueueWriteBuffer(WGPUQueue queue, WGPUBuffer buffer, uint64_t bufferOffset, void const * data, size_t size)
  void wgpuQueueWriteTexture(WGPUQueue queue, WGPUImageCopyTexture const * destination, void const * data, size_t dataSize, WGPUTextureDataLayout const * dataLayout, WGPUExtent3D const * writeSize)
  void wgpuRenderBundleEncoderDraw(WGPURenderBundleEncoder renderBundleEncoder, uint32_t vertexCount, uint32_t instanceCount, uint32_t firstVertex, uint32_t firstInstance)
  void wgpuRenderBundleEncoderDrawIndexed(WGPURenderBundleEncoder renderBundleEncoder, uint32_t indexCount, uint32_t instanceCount, uint32_t firstIndex, int32_t baseVertex, uint32_t firstInstance)
  void wgpuRenderBundleEncoderDrawIndexedIndirect(WGPURenderBundleEncoder renderBundleEncoder, WGPUBuffer indirectBuffer, uint64_t indirectOffset)
  void wgpuRenderBundleEncoderDrawIndirect(WGPURenderBundleEncoder renderBundleEncoder, WGPUBuffer indirectBuffer, uint64_t indirectOffset)
  WGPURenderBundle wgpuRenderBundleEncoderFinish(WGPURenderBundleEncoder renderBundleEncoder, WGPURenderBundleDescriptor const * descriptor )
  void wgpuRenderBundleEncoderInsertDebugMarker(WGPURenderBundleEncoder renderBundleEncoder, char const * markerLabel)
  void wgpuRenderBundleEncoderPopDebugGroup(WGPURenderBundleEncoder renderBundleEncoder)
  void wgpuRenderBundleEncoderPushDebugGroup(WGPURenderBundleEncoder renderBundleEncoder, char const * groupLabel)
  void wgpuRenderBundleEncoderSetBindGroup(WGPURenderBundleEncoder renderBundleEncoder, uint32_t groupIndex, WGPUBindGroup group, uint32_t dynamicOffsetCount, uint32_t const * dynamicOffsets)
  void wgpuRenderBundleEncoderSetIndexBuffer(WGPURenderBundleEncoder renderBundleEncoder, WGPUBuffer buffer, WGPUIndexFormat format, uint64_t offset, uint64_t size)
  void wgpuRenderBundleEncoderSetLabel(WGPURenderBundleEncoder renderBundleEncoder, char const * label)
  void wgpuRenderBundleEncoderSetPipeline(WGPURenderBundleEncoder renderBundleEncoder, WGPURenderPipeline pipeline)
  void wgpuRenderBundleEncoderSetVertexBuffer(WGPURenderBundleEncoder renderBundleEncoder, uint32_t slot, WGPUBuffer buffer, uint64_t offset, uint64_t size)
  void wgpuRenderPassEncoderBeginOcclusionQuery(WGPURenderPassEncoder renderPassEncoder, uint32_t queryIndex)
  void wgpuRenderPassEncoderBeginPipelineStatisticsQuery(WGPURenderPassEncoder renderPassEncoder, WGPUQuerySet querySet, uint32_t queryIndex)
  void wgpuRenderPassEncoderDraw(WGPURenderPassEncoder renderPassEncoder, uint32_t vertexCount, uint32_t instanceCount, uint32_t firstVertex, uint32_t firstInstance)
  void wgpuRenderPassEncoderDrawIndexed(WGPURenderPassEncoder renderPassEncoder, uint32_t indexCount, uint32_t instanceCount, uint32_t firstIndex, int32_t baseVertex, uint32_t firstInstance)
  void wgpuRenderPassEncoderDrawIndexedIndirect(WGPURenderPassEncoder renderPassEncoder, WGPUBuffer indirectBuffer, uint64_t indirectOffset)
  void wgpuRenderPassEncoderDrawIndirect(WGPURenderPassEncoder renderPassEncoder, WGPUBuffer indirectBuffer, uint64_t indirectOffset)
  void wgpuRenderPassEncoderEnd(WGPURenderPassEncoder renderPassEncoder)
  void wgpuRenderPassEncoderEndOcclusionQuery(WGPURenderPassEncoder renderPassEncoder)
  void wgpuRenderPassEncoderEndPipelineStatisticsQuery(WGPURenderPassEncoder renderPassEncoder)
  void wgpuRenderPassEncoderExecuteBundles(WGPURenderPassEncoder renderPassEncoder, uint32_t bundleCount, WGPURenderBundle const * bundles)
  void wgpuRenderPassEncoderInsertDebugMarker(WGPURenderPassEncoder renderPassEncoder, char const * markerLabel)
  void wgpuRenderPassEncoderPopDebugGroup(WGPURenderPassEncoder renderPassEncoder)
  void wgpuRenderPassEncoderPushDebugGroup(WGPURenderPassEncoder renderPassEncoder, char const * groupLabel)
  void wgpuRenderPassEncoderSetBindGroup(WGPURenderPassEncoder renderPassEncoder, uint32_t groupIndex, WGPUBindGroup group, uint32_t dynamicOffsetCount, uint32_t const * dynamicOffsets)
  void wgpuRenderPassEncoderSetBlendConstant(WGPURenderPassEncoder renderPassEncoder, WGPUColor const * color)
  void wgpuRenderPassEncoderSetIndexBuffer(WGPURenderPassEncoder renderPassEncoder, WGPUBuffer buffer, WGPUIndexFormat format, uint64_t offset, uint64_t size)
  void wgpuRenderPassEncoderSetLabel(WGPURenderPassEncoder renderPassEncoder, char const * label)
  void wgpuRenderPassEncoderSetPipeline(WGPURenderPassEncoder renderPassEncoder, WGPURenderPipeline pipeline)
  void wgpuRenderPassEncoderSetScissorRect(WGPURenderPassEncoder renderPassEncoder, uint32_t x, uint32_t y, uint32_t width, uint32_t height)
  void wgpuRenderPassEncoderSetStencilReference(WGPURenderPassEncoder renderPassEncoder, uint32_t reference)
  void wgpuRenderPassEncoderSetVertexBuffer(WGPURenderPassEncoder renderPassEncoder, uint32_t slot, WGPUBuffer buffer, uint64_t offset, uint64_t size)
  void wgpuRenderPassEncoderSetViewport(WGPURenderPassEncoder renderPassEncoder, float x, float y, float width, float height, float minDepth, float maxDepth)
  WGPUBindGroupLayout wgpuRenderPipelineGetBindGroupLayout(WGPURenderPipeline renderPipeline, uint32_t groupIndex)
  void wgpuRenderPipelineSetLabel(WGPURenderPipeline renderPipeline, char const * label)
  void wgpuSamplerSetLabel(WGPUSampler sampler, char const * label)
  void wgpuShaderModuleGetCompilationInfo(WGPUShaderModule shaderModule, WGPUCompilationInfoCallback callback, void * userdata)
  void wgpuShaderModuleSetLabel(WGPUShaderModule shaderModule, char const * label)
  WGPUTextureFormat wgpuSurfaceGetPreferredFormat(WGPUSurface surface, WGPUAdapter adapter)
  WGPUTextureView wgpuSwapChainGetCurrentTextureView(WGPUSwapChain swapChain)
  void wgpuSwapChainPresent(WGPUSwapChain swapChain)
  WGPUTextureView wgpuTextureCreateView(WGPUTexture texture, WGPUTextureViewDescriptor const * descriptor )
  void wgpuTextureDestroy(WGPUTexture texture)
  uint32_t wgpuTextureGetDepthOrArrayLayers(WGPUTexture texture)
  WGPUTextureDimension wgpuTextureGetDimension(WGPUTexture texture)
  WGPUTextureFormat wgpuTextureGetFormat(WGPUTexture texture)
  uint32_t wgpuTextureGetHeight(WGPUTexture texture)
  uint32_t wgpuTextureGetMipLevelCount(WGPUTexture texture)
  uint32_t wgpuTextureGetSampleCount(WGPUTexture texture)
  WGPUTextureUsage wgpuTextureGetUsage(WGPUTexture texture)
  uint32_t wgpuTextureGetWidth(WGPUTexture texture)
  void wgpuTextureSetLabel(WGPUTexture texture, char const * label)
  void wgpuTextureViewSetLabel(WGPUTextureView textureView, char const * label)


=head2 Object and class methods for C<WGPUBindGroupDescriptor>/C<WGPUBindGroupDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUBindGroupDescriptor> is an
object of class C<WGPUBindGroupDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUBindGroupDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUBindGroupDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUBindGroupDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUBindGroupDescriptor> to an object of type C<WGPUBindGroupDescriptorPtr>.

=item C<WGPUBindGroupDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUBindGroupDescriptor>.  The corresponding packed
string is zeroed out.

=item C<layout(...)>, C<entryCount(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUBindGroupDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUVertexState>/C<WGPUVertexStatePtr>

The principal Perl representation of a C object of type C<WGPUVertexState> is an
object of class C<WGPUVertexStatePtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUVertexState->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUVertexState>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUVertexState-E<gt>_to_ptr()>

Converts an object of type C<WGPUVertexState> to an object of type C<WGPUVertexStatePtr>.

=item C<WGPUVertexState-E<gt>new()>

Creates an empty object of type C<WGPUVertexState>.  The corresponding packed
string is zeroed out.

=item C<module(...)>, C<constantCount(...)>, C<bufferCount(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUVertexStatePtr>.

=back


=head2 Object and class methods for C<WGPURenderPassColorAttachment>/C<WGPURenderPassColorAttachmentPtr>

The principal Perl representation of a C object of type C<WGPURenderPassColorAttachment> is an
object of class C<WGPURenderPassColorAttachmentPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPURenderPassColorAttachment->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPURenderPassColorAttachment>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPURenderPassColorAttachment-E<gt>_to_ptr()>

Converts an object of type C<WGPURenderPassColorAttachment> to an object of type C<WGPURenderPassColorAttachmentPtr>.

=item C<WGPURenderPassColorAttachment-E<gt>new()>

Creates an empty object of type C<WGPURenderPassColorAttachment>.  The corresponding packed
string is zeroed out.

=item C<view(...)>, C<resolveTarget(...)>, C<loadOp(...)>, C<storeOp(...)>, C<clearValue(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPURenderPassColorAttachmentPtr>.

=back


=head2 Object and class methods for C<WGPUVertexAttribute>/C<WGPUVertexAttributePtr>

The principal Perl representation of a C object of type C<WGPUVertexAttribute> is an
object of class C<WGPUVertexAttributePtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUVertexAttribute->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUVertexAttribute>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUVertexAttribute-E<gt>_to_ptr()>

Converts an object of type C<WGPUVertexAttribute> to an object of type C<WGPUVertexAttributePtr>.

=item C<WGPUVertexAttribute-E<gt>new()>

Creates an empty object of type C<WGPUVertexAttribute>.  The corresponding packed
string is zeroed out.

=item C<format(...)>, C<offset(...)>, C<shaderLocation(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUVertexAttributePtr>.

=back


=head2 Object and class methods for C<WGPUBufferDescriptor>/C<WGPUBufferDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUBufferDescriptor> is an
object of class C<WGPUBufferDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUBufferDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUBufferDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUBufferDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUBufferDescriptor> to an object of type C<WGPUBufferDescriptorPtr>.

=item C<WGPUBufferDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUBufferDescriptor>.  The corresponding packed
string is zeroed out.

=item C<usage(...)>, C<size(...)>, C<mappedAtCreation(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUBufferDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUQueueDescriptor>/C<WGPUQueueDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUQueueDescriptor> is an
object of class C<WGPUQueueDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUQueueDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUQueueDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUQueueDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUQueueDescriptor> to an object of type C<WGPUQueueDescriptorPtr>.

=item C<WGPUQueueDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUQueueDescriptor>.  The corresponding packed
string is zeroed out.

=item C<(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUQueueDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUFragmentState>/C<WGPUFragmentStatePtr>

The principal Perl representation of a C object of type C<WGPUFragmentState> is an
object of class C<WGPUFragmentStatePtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUFragmentState->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUFragmentState>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUFragmentState-E<gt>_to_ptr()>

Converts an object of type C<WGPUFragmentState> to an object of type C<WGPUFragmentStatePtr>.

=item C<WGPUFragmentState-E<gt>new()>

Creates an empty object of type C<WGPUFragmentState>.  The corresponding packed
string is zeroed out.

=item C<module(...)>, C<constantCount(...)>, C<targetCount(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUFragmentStatePtr>.

=back


=head2 Object and class methods for C<__fsid_t>/C<__fsid_tPtr>

The principal Perl representation of a C object of type C<__fsid_t> is an
object of class C<__fsid_tPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = __fsid_t->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<__fsid_t>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type___fsid_t-E<gt>_to_ptr()>

Converts an object of type C<__fsid_t> to an object of type C<__fsid_tPtr>.

=item C<__fsid_t-E<gt>new()>

Creates an empty object of type C<__fsid_t>.  The corresponding packed
string is zeroed out.

=item C<__val(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<__fsid_tPtr>.

=back


=head2 Object and class methods for C<WGPUBindGroupLayoutDescriptor>/C<WGPUBindGroupLayoutDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUBindGroupLayoutDescriptor> is an
object of class C<WGPUBindGroupLayoutDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUBindGroupLayoutDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUBindGroupLayoutDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUBindGroupLayoutDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUBindGroupLayoutDescriptor> to an object of type C<WGPUBindGroupLayoutDescriptorPtr>.

=item C<WGPUBindGroupLayoutDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUBindGroupLayoutDescriptor>.  The corresponding packed
string is zeroed out.

=item C<entryCount(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUBindGroupLayoutDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUOrigin3D>/C<WGPUOrigin3DPtr>

The principal Perl representation of a C object of type C<WGPUOrigin3D> is an
object of class C<WGPUOrigin3DPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUOrigin3D->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUOrigin3D>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUOrigin3D-E<gt>_to_ptr()>

Converts an object of type C<WGPUOrigin3D> to an object of type C<WGPUOrigin3DPtr>.

=item C<WGPUOrigin3D-E<gt>new()>

Creates an empty object of type C<WGPUOrigin3D>.  The corresponding packed
string is zeroed out.

=item C<x(...)>, C<y(...)>, C<z(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUOrigin3DPtr>.

=back


=head2 Object and class methods for C<WGPURenderPassDescriptorMaxDrawCount>/C<WGPURenderPassDescriptorMaxDrawCountPtr>

The principal Perl representation of a C object of type C<WGPURenderPassDescriptorMaxDrawCount> is an
object of class C<WGPURenderPassDescriptorMaxDrawCountPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPURenderPassDescriptorMaxDrawCount->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPURenderPassDescriptorMaxDrawCount>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPURenderPassDescriptorMaxDrawCount-E<gt>_to_ptr()>

Converts an object of type C<WGPURenderPassDescriptorMaxDrawCount> to an object of type C<WGPURenderPassDescriptorMaxDrawCountPtr>.

=item C<WGPURenderPassDescriptorMaxDrawCount-E<gt>new()>

Creates an empty object of type C<WGPURenderPassDescriptorMaxDrawCount>.  The corresponding packed
string is zeroed out.

=item C<chain(...)>, C<maxDrawCount(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPURenderPassDescriptorMaxDrawCountPtr>.

=back


=head2 Object and class methods for C<WGPURenderPipelineDescriptor>/C<WGPURenderPipelineDescriptorPtr>

The principal Perl representation of a C object of type C<WGPURenderPipelineDescriptor> is an
object of class C<WGPURenderPipelineDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPURenderPipelineDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPURenderPipelineDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPURenderPipelineDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPURenderPipelineDescriptor> to an object of type C<WGPURenderPipelineDescriptorPtr>.

=item C<WGPURenderPipelineDescriptor-E<gt>new()>

Creates an empty object of type C<WGPURenderPipelineDescriptor>.  The corresponding packed
string is zeroed out.

=item C<layout(...)>, C<vertex(...)>, C<primitive(...)>, C<multisample(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPURenderPipelineDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUComputePassDescriptor>/C<WGPUComputePassDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUComputePassDescriptor> is an
object of class C<WGPUComputePassDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUComputePassDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUComputePassDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUComputePassDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUComputePassDescriptor> to an object of type C<WGPUComputePassDescriptorPtr>.

=item C<WGPUComputePassDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUComputePassDescriptor>.  The corresponding packed
string is zeroed out.

=item C<timestampWriteCount(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUComputePassDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPULimits>/C<WGPULimitsPtr>

The principal Perl representation of a C object of type C<WGPULimits> is an
object of class C<WGPULimitsPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPULimits->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPULimits>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPULimits-E<gt>_to_ptr()>

Converts an object of type C<WGPULimits> to an object of type C<WGPULimitsPtr>.

=item C<WGPULimits-E<gt>new()>

Creates an empty object of type C<WGPULimits>.  The corresponding packed
string is zeroed out.

=item C<maxTextureDimension1D(...)>, C<maxTextureDimension2D(...)>, C<maxTextureDimension3D(...)>, C<maxTextureArrayLayers(...)>, C<maxBindGroups(...)>, C<maxBindingsPerBindGroup(...)>, C<maxDynamicUniformBuffersPerPipelineLayout(...)>, C<maxDynamicStorageBuffersPerPipelineLayout(...)>, C<maxSampledTexturesPerShaderStage(...)>, C<maxSamplersPerShaderStage(...)>, C<maxStorageBuffersPerShaderStage(...)>, C<maxStorageTexturesPerShaderStage(...)>, C<maxUniformBuffersPerShaderStage(...)>, C<maxUniformBufferBindingSize(...)>, C<maxStorageBufferBindingSize(...)>, C<minUniformBufferOffsetAlignment(...)>, C<minStorageBufferOffsetAlignment(...)>, C<maxVertexBuffers(...)>, C<maxBufferSize(...)>, C<maxVertexAttributes(...)>, C<maxVertexBufferArrayStride(...)>, C<maxInterStageShaderComponents(...)>, C<maxInterStageShaderVariables(...)>, C<maxColorAttachments(...)>, C<maxColorAttachmentBytesPerSample(...)>, C<maxComputeWorkgroupStorageSize(...)>, C<maxComputeInvocationsPerWorkgroup(...)>, C<maxComputeWorkgroupSizeX(...)>, C<maxComputeWorkgroupSizeY(...)>, C<maxComputeWorkgroupSizeZ(...)>, C<maxComputeWorkgroupsPerDimension(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPULimitsPtr>.

=back


=head2 Object and class methods for C<WGPUPrimitiveDepthClipControl>/C<WGPUPrimitiveDepthClipControlPtr>

The principal Perl representation of a C object of type C<WGPUPrimitiveDepthClipControl> is an
object of class C<WGPUPrimitiveDepthClipControlPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUPrimitiveDepthClipControl->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUPrimitiveDepthClipControl>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUPrimitiveDepthClipControl-E<gt>_to_ptr()>

Converts an object of type C<WGPUPrimitiveDepthClipControl> to an object of type C<WGPUPrimitiveDepthClipControlPtr>.

=item C<WGPUPrimitiveDepthClipControl-E<gt>new()>

Creates an empty object of type C<WGPUPrimitiveDepthClipControl>.  The corresponding packed
string is zeroed out.

=item C<chain(...)>, C<unclippedDepth(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUPrimitiveDepthClipControlPtr>.

=back


=head2 Object and class methods for C<WGPUBufferBindingLayout>/C<WGPUBufferBindingLayoutPtr>

The principal Perl representation of a C object of type C<WGPUBufferBindingLayout> is an
object of class C<WGPUBufferBindingLayoutPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUBufferBindingLayout->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUBufferBindingLayout>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUBufferBindingLayout-E<gt>_to_ptr()>

Converts an object of type C<WGPUBufferBindingLayout> to an object of type C<WGPUBufferBindingLayoutPtr>.

=item C<WGPUBufferBindingLayout-E<gt>new()>

Creates an empty object of type C<WGPUBufferBindingLayout>.  The corresponding packed
string is zeroed out.

=item C<type(...)>, C<hasDynamicOffset(...)>, C<minBindingSize(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUBufferBindingLayoutPtr>.

=back


=head2 Object and class methods for C<WGPUSurfaceDescriptorFromXlibWindow>/C<WGPUSurfaceDescriptorFromXlibWindowPtr>

The principal Perl representation of a C object of type C<WGPUSurfaceDescriptorFromXlibWindow> is an
object of class C<WGPUSurfaceDescriptorFromXlibWindowPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUSurfaceDescriptorFromXlibWindow->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUSurfaceDescriptorFromXlibWindow>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUSurfaceDescriptorFromXlibWindow-E<gt>_to_ptr()>

Converts an object of type C<WGPUSurfaceDescriptorFromXlibWindow> to an object of type C<WGPUSurfaceDescriptorFromXlibWindowPtr>.

=item C<WGPUSurfaceDescriptorFromXlibWindow-E<gt>new()>

Creates an empty object of type C<WGPUSurfaceDescriptorFromXlibWindow>.  The corresponding packed
string is zeroed out.

=item C<chain(...)>, C<window(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUSurfaceDescriptorFromXlibWindowPtr>.

=back


=head2 Object and class methods for C<WGPURenderPassTimestampWrite>/C<WGPURenderPassTimestampWritePtr>

The principal Perl representation of a C object of type C<WGPURenderPassTimestampWrite> is an
object of class C<WGPURenderPassTimestampWritePtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPURenderPassTimestampWrite->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPURenderPassTimestampWrite>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPURenderPassTimestampWrite-E<gt>_to_ptr()>

Converts an object of type C<WGPURenderPassTimestampWrite> to an object of type C<WGPURenderPassTimestampWritePtr>.

=item C<WGPURenderPassTimestampWrite-E<gt>new()>

Creates an empty object of type C<WGPURenderPassTimestampWrite>.  The corresponding packed
string is zeroed out.

=item C<querySet(...)>, C<queryIndex(...)>, C<location(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPURenderPassTimestampWritePtr>.

=back


=head2 Object and class methods for C<WGPUChainedStruct>/C<WGPUChainedStructPtr>

The principal Perl representation of a C object of type C<WGPUChainedStruct> is an
object of class C<WGPUChainedStructPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUChainedStruct->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUChainedStruct>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUChainedStruct-E<gt>_to_ptr()>

Converts an object of type C<WGPUChainedStruct> to an object of type C<WGPUChainedStructPtr>.

=item C<WGPUChainedStruct-E<gt>new()>

Creates an empty object of type C<WGPUChainedStruct>.  The corresponding packed
string is zeroed out.

=item C<sType(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUChainedStructPtr>.

=back


=head2 Object and class methods for C<WGPUSurfaceDescriptorFromAndroidNativeWindow>/C<WGPUSurfaceDescriptorFromAndroidNativeWindowPtr>

The principal Perl representation of a C object of type C<WGPUSurfaceDescriptorFromAndroidNativeWindow> is an
object of class C<WGPUSurfaceDescriptorFromAndroidNativeWindowPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUSurfaceDescriptorFromAndroidNativeWindow->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUSurfaceDescriptorFromAndroidNativeWindow>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUSurfaceDescriptorFromAndroidNativeWindow-E<gt>_to_ptr()>

Converts an object of type C<WGPUSurfaceDescriptorFromAndroidNativeWindow> to an object of type C<WGPUSurfaceDescriptorFromAndroidNativeWindowPtr>.

=item C<WGPUSurfaceDescriptorFromAndroidNativeWindow-E<gt>new()>

Creates an empty object of type C<WGPUSurfaceDescriptorFromAndroidNativeWindow>.  The corresponding packed
string is zeroed out.

=item C<chain(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUSurfaceDescriptorFromAndroidNativeWindowPtr>.

=back


=head2 Object and class methods for C<WGPUAdapterProperties>/C<WGPUAdapterPropertiesPtr>

The principal Perl representation of a C object of type C<WGPUAdapterProperties> is an
object of class C<WGPUAdapterPropertiesPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUAdapterProperties->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUAdapterProperties>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUAdapterProperties-E<gt>_to_ptr()>

Converts an object of type C<WGPUAdapterProperties> to an object of type C<WGPUAdapterPropertiesPtr>.

=item C<WGPUAdapterProperties-E<gt>new()>

Creates an empty object of type C<WGPUAdapterProperties>.  The corresponding packed
string is zeroed out.

=item C<vendorID(...)>, C<deviceID(...)>, C<adapterType(...)>, C<backendType(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUAdapterPropertiesPtr>.

=back


=head2 Object and class methods for C<WGPUSamplerBindingLayout>/C<WGPUSamplerBindingLayoutPtr>

The principal Perl representation of a C object of type C<WGPUSamplerBindingLayout> is an
object of class C<WGPUSamplerBindingLayoutPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUSamplerBindingLayout->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUSamplerBindingLayout>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUSamplerBindingLayout-E<gt>_to_ptr()>

Converts an object of type C<WGPUSamplerBindingLayout> to an object of type C<WGPUSamplerBindingLayoutPtr>.

=item C<WGPUSamplerBindingLayout-E<gt>new()>

Creates an empty object of type C<WGPUSamplerBindingLayout>.  The corresponding packed
string is zeroed out.

=item C<type(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUSamplerBindingLayoutPtr>.

=back


=head2 Object and class methods for C<WGPUTextureViewDescriptor>/C<WGPUTextureViewDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUTextureViewDescriptor> is an
object of class C<WGPUTextureViewDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUTextureViewDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUTextureViewDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUTextureViewDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUTextureViewDescriptor> to an object of type C<WGPUTextureViewDescriptorPtr>.

=item C<WGPUTextureViewDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUTextureViewDescriptor>.  The corresponding packed
string is zeroed out.

=item C<format(...)>, C<dimension(...)>, C<baseMipLevel(...)>, C<mipLevelCount(...)>, C<baseArrayLayer(...)>, C<arrayLayerCount(...)>, C<aspect(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUTextureViewDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPURenderPassDepthStencilAttachment>/C<WGPURenderPassDepthStencilAttachmentPtr>

The principal Perl representation of a C object of type C<WGPURenderPassDepthStencilAttachment> is an
object of class C<WGPURenderPassDepthStencilAttachmentPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPURenderPassDepthStencilAttachment->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPURenderPassDepthStencilAttachment>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPURenderPassDepthStencilAttachment-E<gt>_to_ptr()>

Converts an object of type C<WGPURenderPassDepthStencilAttachment> to an object of type C<WGPURenderPassDepthStencilAttachmentPtr>.

=item C<WGPURenderPassDepthStencilAttachment-E<gt>new()>

Creates an empty object of type C<WGPURenderPassDepthStencilAttachment>.  The corresponding packed
string is zeroed out.

=item C<view(...)>, C<depthLoadOp(...)>, C<depthStoreOp(...)>, C<depthClearValue(...)>, C<depthReadOnly(...)>, C<stencilLoadOp(...)>, C<stencilStoreOp(...)>, C<stencilClearValue(...)>, C<stencilReadOnly(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPURenderPassDepthStencilAttachmentPtr>.

=back


=head2 Object and class methods for C<WGPUSurfaceDescriptorFromWaylandSurface>/C<WGPUSurfaceDescriptorFromWaylandSurfacePtr>

The principal Perl representation of a C object of type C<WGPUSurfaceDescriptorFromWaylandSurface> is an
object of class C<WGPUSurfaceDescriptorFromWaylandSurfacePtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUSurfaceDescriptorFromWaylandSurface->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUSurfaceDescriptorFromWaylandSurface>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUSurfaceDescriptorFromWaylandSurface-E<gt>_to_ptr()>

Converts an object of type C<WGPUSurfaceDescriptorFromWaylandSurface> to an object of type C<WGPUSurfaceDescriptorFromWaylandSurfacePtr>.

=item C<WGPUSurfaceDescriptorFromWaylandSurface-E<gt>new()>

Creates an empty object of type C<WGPUSurfaceDescriptorFromWaylandSurface>.  The corresponding packed
string is zeroed out.

=item C<chain(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUSurfaceDescriptorFromWaylandSurfacePtr>.

=back


=head2 Object and class methods for C<max_align_t>/C<max_align_tPtr>

The principal Perl representation of a C object of type C<max_align_t> is an
object of class C<max_align_tPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = max_align_t->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<max_align_t>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_max_align_t-E<gt>_to_ptr()>

Converts an object of type C<max_align_t> to an object of type C<max_align_tPtr>.

=item C<max_align_t-E<gt>new()>

Creates an empty object of type C<max_align_t>.  The corresponding packed
string is zeroed out.

=item C<(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<max_align_tPtr>.

=back


=head2 Object and class methods for C<WGPUBindGroupLayoutEntry>/C<WGPUBindGroupLayoutEntryPtr>

The principal Perl representation of a C object of type C<WGPUBindGroupLayoutEntry> is an
object of class C<WGPUBindGroupLayoutEntryPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUBindGroupLayoutEntry->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUBindGroupLayoutEntry>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUBindGroupLayoutEntry-E<gt>_to_ptr()>

Converts an object of type C<WGPUBindGroupLayoutEntry> to an object of type C<WGPUBindGroupLayoutEntryPtr>.

=item C<WGPUBindGroupLayoutEntry-E<gt>new()>

Creates an empty object of type C<WGPUBindGroupLayoutEntry>.  The corresponding packed
string is zeroed out.

=item C<binding(...)>, C<visibility(...)>, C<buffer(...)>, C<sampler(...)>, C<texture(...)>, C<storageTexture(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUBindGroupLayoutEntryPtr>.

=back


=head2 Object and class methods for C<WGPUTextureDescriptor>/C<WGPUTextureDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUTextureDescriptor> is an
object of class C<WGPUTextureDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUTextureDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUTextureDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUTextureDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUTextureDescriptor> to an object of type C<WGPUTextureDescriptorPtr>.

=item C<WGPUTextureDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUTextureDescriptor>.  The corresponding packed
string is zeroed out.

=item C<usage(...)>, C<dimension(...)>, C<size(...)>, C<format(...)>, C<mipLevelCount(...)>, C<sampleCount(...)>, C<viewFormatCount(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUTextureDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUSwapChainDescriptor>/C<WGPUSwapChainDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUSwapChainDescriptor> is an
object of class C<WGPUSwapChainDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUSwapChainDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUSwapChainDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUSwapChainDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUSwapChainDescriptor> to an object of type C<WGPUSwapChainDescriptorPtr>.

=item C<WGPUSwapChainDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUSwapChainDescriptor>.  The corresponding packed
string is zeroed out.

=item C<usage(...)>, C<format(...)>, C<width(...)>, C<height(...)>, C<presentMode(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUSwapChainDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUVertexBufferLayout>/C<WGPUVertexBufferLayoutPtr>

The principal Perl representation of a C object of type C<WGPUVertexBufferLayout> is an
object of class C<WGPUVertexBufferLayoutPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUVertexBufferLayout->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUVertexBufferLayout>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUVertexBufferLayout-E<gt>_to_ptr()>

Converts an object of type C<WGPUVertexBufferLayout> to an object of type C<WGPUVertexBufferLayoutPtr>.

=item C<WGPUVertexBufferLayout-E<gt>new()>

Creates an empty object of type C<WGPUVertexBufferLayout>.  The corresponding packed
string is zeroed out.

=item C<arrayStride(...)>, C<stepMode(...)>, C<attributeCount(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUVertexBufferLayoutPtr>.

=back


=head2 Object and class methods for C<WGPURequestAdapterOptions>/C<WGPURequestAdapterOptionsPtr>

The principal Perl representation of a C object of type C<WGPURequestAdapterOptions> is an
object of class C<WGPURequestAdapterOptionsPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPURequestAdapterOptions->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPURequestAdapterOptions>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPURequestAdapterOptions-E<gt>_to_ptr()>

Converts an object of type C<WGPURequestAdapterOptions> to an object of type C<WGPURequestAdapterOptionsPtr>.

=item C<WGPURequestAdapterOptions-E<gt>new()>

Creates an empty object of type C<WGPURequestAdapterOptions>.  The corresponding packed
string is zeroed out.

=item C<compatibleSurface(...)>, C<powerPreference(...)>, C<forceFallbackAdapter(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPURequestAdapterOptionsPtr>.

=back


=head2 Object and class methods for C<WGPUCompilationInfo>/C<WGPUCompilationInfoPtr>

The principal Perl representation of a C object of type C<WGPUCompilationInfo> is an
object of class C<WGPUCompilationInfoPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUCompilationInfo->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUCompilationInfo>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUCompilationInfo-E<gt>_to_ptr()>

Converts an object of type C<WGPUCompilationInfo> to an object of type C<WGPUCompilationInfoPtr>.

=item C<WGPUCompilationInfo-E<gt>new()>

Creates an empty object of type C<WGPUCompilationInfo>.  The corresponding packed
string is zeroed out.

=item C<messageCount(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUCompilationInfoPtr>.

=back


=head2 Object and class methods for C<WGPUSurfaceDescriptorFromWindowsHWND>/C<WGPUSurfaceDescriptorFromWindowsHWNDPtr>

The principal Perl representation of a C object of type C<WGPUSurfaceDescriptorFromWindowsHWND> is an
object of class C<WGPUSurfaceDescriptorFromWindowsHWNDPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUSurfaceDescriptorFromWindowsHWND->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUSurfaceDescriptorFromWindowsHWND>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUSurfaceDescriptorFromWindowsHWND-E<gt>_to_ptr()>

Converts an object of type C<WGPUSurfaceDescriptorFromWindowsHWND> to an object of type C<WGPUSurfaceDescriptorFromWindowsHWNDPtr>.

=item C<WGPUSurfaceDescriptorFromWindowsHWND-E<gt>new()>

Creates an empty object of type C<WGPUSurfaceDescriptorFromWindowsHWND>.  The corresponding packed
string is zeroed out.

=item C<chain(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUSurfaceDescriptorFromWindowsHWNDPtr>.

=back


=head2 Object and class methods for C<WGPUMultisampleState>/C<WGPUMultisampleStatePtr>

The principal Perl representation of a C object of type C<WGPUMultisampleState> is an
object of class C<WGPUMultisampleStatePtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUMultisampleState->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUMultisampleState>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUMultisampleState-E<gt>_to_ptr()>

Converts an object of type C<WGPUMultisampleState> to an object of type C<WGPUMultisampleStatePtr>.

=item C<WGPUMultisampleState-E<gt>new()>

Creates an empty object of type C<WGPUMultisampleState>.  The corresponding packed
string is zeroed out.

=item C<count(...)>, C<mask(...)>, C<alphaToCoverageEnabled(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUMultisampleStatePtr>.

=back


=head2 Object and class methods for C<WGPUShaderModuleSPIRVDescriptor>/C<WGPUShaderModuleSPIRVDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUShaderModuleSPIRVDescriptor> is an
object of class C<WGPUShaderModuleSPIRVDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUShaderModuleSPIRVDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUShaderModuleSPIRVDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUShaderModuleSPIRVDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUShaderModuleSPIRVDescriptor> to an object of type C<WGPUShaderModuleSPIRVDescriptorPtr>.

=item C<WGPUShaderModuleSPIRVDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUShaderModuleSPIRVDescriptor>.  The corresponding packed
string is zeroed out.

=item C<chain(...)>, C<codeSize(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUShaderModuleSPIRVDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUColor>/C<WGPUColorPtr>

The principal Perl representation of a C object of type C<WGPUColor> is an
object of class C<WGPUColorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUColor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUColor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUColor-E<gt>_to_ptr()>

Converts an object of type C<WGPUColor> to an object of type C<WGPUColorPtr>.

=item C<WGPUColor-E<gt>new()>

Creates an empty object of type C<WGPUColor>.  The corresponding packed
string is zeroed out.

=item C<r(...)>, C<g(...)>, C<b(...)>, C<a(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUColorPtr>.

=back


=head2 Object and class methods for C<WGPUSurfaceDescriptorFromMetalLayer>/C<WGPUSurfaceDescriptorFromMetalLayerPtr>

The principal Perl representation of a C object of type C<WGPUSurfaceDescriptorFromMetalLayer> is an
object of class C<WGPUSurfaceDescriptorFromMetalLayerPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUSurfaceDescriptorFromMetalLayer->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUSurfaceDescriptorFromMetalLayer>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUSurfaceDescriptorFromMetalLayer-E<gt>_to_ptr()>

Converts an object of type C<WGPUSurfaceDescriptorFromMetalLayer> to an object of type C<WGPUSurfaceDescriptorFromMetalLayerPtr>.

=item C<WGPUSurfaceDescriptorFromMetalLayer-E<gt>new()>

Creates an empty object of type C<WGPUSurfaceDescriptorFromMetalLayer>.  The corresponding packed
string is zeroed out.

=item C<chain(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUSurfaceDescriptorFromMetalLayerPtr>.

=back


=head2 Object and class methods for C<WGPUColorTargetState>/C<WGPUColorTargetStatePtr>

The principal Perl representation of a C object of type C<WGPUColorTargetState> is an
object of class C<WGPUColorTargetStatePtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUColorTargetState->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUColorTargetState>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUColorTargetState-E<gt>_to_ptr()>

Converts an object of type C<WGPUColorTargetState> to an object of type C<WGPUColorTargetStatePtr>.

=item C<WGPUColorTargetState-E<gt>new()>

Creates an empty object of type C<WGPUColorTargetState>.  The corresponding packed
string is zeroed out.

=item C<format(...)>, C<writeMask(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUColorTargetStatePtr>.

=back


=head2 Object and class methods for C<WGPUStencilFaceState>/C<WGPUStencilFaceStatePtr>

The principal Perl representation of a C object of type C<WGPUStencilFaceState> is an
object of class C<WGPUStencilFaceStatePtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUStencilFaceState->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUStencilFaceState>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUStencilFaceState-E<gt>_to_ptr()>

Converts an object of type C<WGPUStencilFaceState> to an object of type C<WGPUStencilFaceStatePtr>.

=item C<WGPUStencilFaceState-E<gt>new()>

Creates an empty object of type C<WGPUStencilFaceState>.  The corresponding packed
string is zeroed out.

=item C<compare(...)>, C<failOp(...)>, C<depthFailOp(...)>, C<passOp(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUStencilFaceStatePtr>.

=back


=head2 Object and class methods for C<WGPUDepthStencilState>/C<WGPUDepthStencilStatePtr>

The principal Perl representation of a C object of type C<WGPUDepthStencilState> is an
object of class C<WGPUDepthStencilStatePtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUDepthStencilState->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUDepthStencilState>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUDepthStencilState-E<gt>_to_ptr()>

Converts an object of type C<WGPUDepthStencilState> to an object of type C<WGPUDepthStencilStatePtr>.

=item C<WGPUDepthStencilState-E<gt>new()>

Creates an empty object of type C<WGPUDepthStencilState>.  The corresponding packed
string is zeroed out.

=item C<format(...)>, C<depthWriteEnabled(...)>, C<depthCompare(...)>, C<stencilFront(...)>, C<stencilBack(...)>, C<stencilReadMask(...)>, C<stencilWriteMask(...)>, C<depthBias(...)>, C<depthBiasSlopeScale(...)>, C<depthBiasClamp(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUDepthStencilStatePtr>.

=back


=head2 Object and class methods for C<WGPUShaderModuleDescriptor>/C<WGPUShaderModuleDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUShaderModuleDescriptor> is an
object of class C<WGPUShaderModuleDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUShaderModuleDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUShaderModuleDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUShaderModuleDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUShaderModuleDescriptor> to an object of type C<WGPUShaderModuleDescriptorPtr>.

=item C<WGPUShaderModuleDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUShaderModuleDescriptor>.  The corresponding packed
string is zeroed out.

=item C<hintCount(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUShaderModuleDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUProgrammableStageDescriptor>/C<WGPUProgrammableStageDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUProgrammableStageDescriptor> is an
object of class C<WGPUProgrammableStageDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUProgrammableStageDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUProgrammableStageDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUProgrammableStageDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUProgrammableStageDescriptor> to an object of type C<WGPUProgrammableStageDescriptorPtr>.

=item C<WGPUProgrammableStageDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUProgrammableStageDescriptor>.  The corresponding packed
string is zeroed out.

=item C<module(...)>, C<constantCount(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUProgrammableStageDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUDeviceDescriptor>/C<WGPUDeviceDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUDeviceDescriptor> is an
object of class C<WGPUDeviceDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUDeviceDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUDeviceDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUDeviceDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUDeviceDescriptor> to an object of type C<WGPUDeviceDescriptorPtr>.

=item C<WGPUDeviceDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUDeviceDescriptor>.  The corresponding packed
string is zeroed out.

=item C<requiredFeaturesCount(...)>, C<defaultQueue(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUDeviceDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUConstantEntry>/C<WGPUConstantEntryPtr>

The principal Perl representation of a C object of type C<WGPUConstantEntry> is an
object of class C<WGPUConstantEntryPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUConstantEntry->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUConstantEntry>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUConstantEntry-E<gt>_to_ptr()>

Converts an object of type C<WGPUConstantEntry> to an object of type C<WGPUConstantEntryPtr>.

=item C<WGPUConstantEntry-E<gt>new()>

Creates an empty object of type C<WGPUConstantEntry>.  The corresponding packed
string is zeroed out.

=item C<value(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUConstantEntryPtr>.

=back


=head2 Object and class methods for C<WGPURenderBundleEncoderDescriptor>/C<WGPURenderBundleEncoderDescriptorPtr>

The principal Perl representation of a C object of type C<WGPURenderBundleEncoderDescriptor> is an
object of class C<WGPURenderBundleEncoderDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPURenderBundleEncoderDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPURenderBundleEncoderDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPURenderBundleEncoderDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPURenderBundleEncoderDescriptor> to an object of type C<WGPURenderBundleEncoderDescriptorPtr>.

=item C<WGPURenderBundleEncoderDescriptor-E<gt>new()>

Creates an empty object of type C<WGPURenderBundleEncoderDescriptor>.  The corresponding packed
string is zeroed out.

=item C<colorFormatsCount(...)>, C<depthStencilFormat(...)>, C<sampleCount(...)>, C<depthReadOnly(...)>, C<stencilReadOnly(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPURenderBundleEncoderDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUCommandBufferDescriptor>/C<WGPUCommandBufferDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUCommandBufferDescriptor> is an
object of class C<WGPUCommandBufferDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUCommandBufferDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUCommandBufferDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUCommandBufferDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUCommandBufferDescriptor> to an object of type C<WGPUCommandBufferDescriptorPtr>.

=item C<WGPUCommandBufferDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUCommandBufferDescriptor>.  The corresponding packed
string is zeroed out.

=item C<(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUCommandBufferDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUBindGroupEntry>/C<WGPUBindGroupEntryPtr>

The principal Perl representation of a C object of type C<WGPUBindGroupEntry> is an
object of class C<WGPUBindGroupEntryPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUBindGroupEntry->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUBindGroupEntry>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUBindGroupEntry-E<gt>_to_ptr()>

Converts an object of type C<WGPUBindGroupEntry> to an object of type C<WGPUBindGroupEntryPtr>.

=item C<WGPUBindGroupEntry-E<gt>new()>

Creates an empty object of type C<WGPUBindGroupEntry>.  The corresponding packed
string is zeroed out.

=item C<binding(...)>, C<buffer(...)>, C<offset(...)>, C<size(...)>, C<sampler(...)>, C<textureView(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUBindGroupEntryPtr>.

=back


=head2 Object and class methods for C<WGPUSurfaceDescriptor>/C<WGPUSurfaceDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUSurfaceDescriptor> is an
object of class C<WGPUSurfaceDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUSurfaceDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUSurfaceDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUSurfaceDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUSurfaceDescriptor> to an object of type C<WGPUSurfaceDescriptorPtr>.

=item C<WGPUSurfaceDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUSurfaceDescriptor>.  The corresponding packed
string is zeroed out.

=item C<(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUSurfaceDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUImageCopyTexture>/C<WGPUImageCopyTexturePtr>

The principal Perl representation of a C object of type C<WGPUImageCopyTexture> is an
object of class C<WGPUImageCopyTexturePtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUImageCopyTexture->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUImageCopyTexture>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUImageCopyTexture-E<gt>_to_ptr()>

Converts an object of type C<WGPUImageCopyTexture> to an object of type C<WGPUImageCopyTexturePtr>.

=item C<WGPUImageCopyTexture-E<gt>new()>

Creates an empty object of type C<WGPUImageCopyTexture>.  The corresponding packed
string is zeroed out.

=item C<texture(...)>, C<mipLevel(...)>, C<origin(...)>, C<aspect(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUImageCopyTexturePtr>.

=back


=head2 Object and class methods for C<WGPUPrimitiveState>/C<WGPUPrimitiveStatePtr>

The principal Perl representation of a C object of type C<WGPUPrimitiveState> is an
object of class C<WGPUPrimitiveStatePtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUPrimitiveState->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUPrimitiveState>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUPrimitiveState-E<gt>_to_ptr()>

Converts an object of type C<WGPUPrimitiveState> to an object of type C<WGPUPrimitiveStatePtr>.

=item C<WGPUPrimitiveState-E<gt>new()>

Creates an empty object of type C<WGPUPrimitiveState>.  The corresponding packed
string is zeroed out.

=item C<topology(...)>, C<stripIndexFormat(...)>, C<frontFace(...)>, C<cullMode(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUPrimitiveStatePtr>.

=back


=head2 Object and class methods for C<WGPUSurfaceDescriptorFromCanvasHTMLSelector>/C<WGPUSurfaceDescriptorFromCanvasHTMLSelectorPtr>

The principal Perl representation of a C object of type C<WGPUSurfaceDescriptorFromCanvasHTMLSelector> is an
object of class C<WGPUSurfaceDescriptorFromCanvasHTMLSelectorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUSurfaceDescriptorFromCanvasHTMLSelector->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUSurfaceDescriptorFromCanvasHTMLSelector>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUSurfaceDescriptorFromCanvasHTMLSelector-E<gt>_to_ptr()>

Converts an object of type C<WGPUSurfaceDescriptorFromCanvasHTMLSelector> to an object of type C<WGPUSurfaceDescriptorFromCanvasHTMLSelectorPtr>.

=item C<WGPUSurfaceDescriptorFromCanvasHTMLSelector-E<gt>new()>

Creates an empty object of type C<WGPUSurfaceDescriptorFromCanvasHTMLSelector>.  The corresponding packed
string is zeroed out.

=item C<chain(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUSurfaceDescriptorFromCanvasHTMLSelectorPtr>.

=back


=head2 Object and class methods for C<WGPUShaderModuleCompilationHint>/C<WGPUShaderModuleCompilationHintPtr>

The principal Perl representation of a C object of type C<WGPUShaderModuleCompilationHint> is an
object of class C<WGPUShaderModuleCompilationHintPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUShaderModuleCompilationHint->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUShaderModuleCompilationHint>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUShaderModuleCompilationHint-E<gt>_to_ptr()>

Converts an object of type C<WGPUShaderModuleCompilationHint> to an object of type C<WGPUShaderModuleCompilationHintPtr>.

=item C<WGPUShaderModuleCompilationHint-E<gt>new()>

Creates an empty object of type C<WGPUShaderModuleCompilationHint>.  The corresponding packed
string is zeroed out.

=item C<layout(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUShaderModuleCompilationHintPtr>.

=back


=head2 Object and class methods for C<WGPUExtent3D>/C<WGPUExtent3DPtr>

The principal Perl representation of a C object of type C<WGPUExtent3D> is an
object of class C<WGPUExtent3DPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUExtent3D->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUExtent3D>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUExtent3D-E<gt>_to_ptr()>

Converts an object of type C<WGPUExtent3D> to an object of type C<WGPUExtent3DPtr>.

=item C<WGPUExtent3D-E<gt>new()>

Creates an empty object of type C<WGPUExtent3D>.  The corresponding packed
string is zeroed out.

=item C<width(...)>, C<height(...)>, C<depthOrArrayLayers(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUExtent3DPtr>.

=back


=head2 Object and class methods for C<WGPUSupportedLimits>/C<WGPUSupportedLimitsPtr>

The principal Perl representation of a C object of type C<WGPUSupportedLimits> is an
object of class C<WGPUSupportedLimitsPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUSupportedLimits->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUSupportedLimits>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUSupportedLimits-E<gt>_to_ptr()>

Converts an object of type C<WGPUSupportedLimits> to an object of type C<WGPUSupportedLimitsPtr>.

=item C<WGPUSupportedLimits-E<gt>new()>

Creates an empty object of type C<WGPUSupportedLimits>.  The corresponding packed
string is zeroed out.

=item C<limits(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUSupportedLimitsPtr>.

=back


=head2 Object and class methods for C<WGPUComputePipelineDescriptor>/C<WGPUComputePipelineDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUComputePipelineDescriptor> is an
object of class C<WGPUComputePipelineDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUComputePipelineDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUComputePipelineDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUComputePipelineDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUComputePipelineDescriptor> to an object of type C<WGPUComputePipelineDescriptorPtr>.

=item C<WGPUComputePipelineDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUComputePipelineDescriptor>.  The corresponding packed
string is zeroed out.

=item C<layout(...)>, C<compute(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUComputePipelineDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPURenderBundleDescriptor>/C<WGPURenderBundleDescriptorPtr>

The principal Perl representation of a C object of type C<WGPURenderBundleDescriptor> is an
object of class C<WGPURenderBundleDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPURenderBundleDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPURenderBundleDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPURenderBundleDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPURenderBundleDescriptor> to an object of type C<WGPURenderBundleDescriptorPtr>.

=item C<WGPURenderBundleDescriptor-E<gt>new()>

Creates an empty object of type C<WGPURenderBundleDescriptor>.  The corresponding packed
string is zeroed out.

=item C<(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPURenderBundleDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUBlendComponent>/C<WGPUBlendComponentPtr>

The principal Perl representation of a C object of type C<WGPUBlendComponent> is an
object of class C<WGPUBlendComponentPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUBlendComponent->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUBlendComponent>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUBlendComponent-E<gt>_to_ptr()>

Converts an object of type C<WGPUBlendComponent> to an object of type C<WGPUBlendComponentPtr>.

=item C<WGPUBlendComponent-E<gt>new()>

Creates an empty object of type C<WGPUBlendComponent>.  The corresponding packed
string is zeroed out.

=item C<operation(...)>, C<srcFactor(...)>, C<dstFactor(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUBlendComponentPtr>.

=back


=head2 Object and class methods for C<WGPUPipelineLayoutDescriptor>/C<WGPUPipelineLayoutDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUPipelineLayoutDescriptor> is an
object of class C<WGPUPipelineLayoutDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUPipelineLayoutDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUPipelineLayoutDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUPipelineLayoutDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUPipelineLayoutDescriptor> to an object of type C<WGPUPipelineLayoutDescriptorPtr>.

=item C<WGPUPipelineLayoutDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUPipelineLayoutDescriptor>.  The corresponding packed
string is zeroed out.

=item C<bindGroupLayoutCount(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUPipelineLayoutDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUTextureDataLayout>/C<WGPUTextureDataLayoutPtr>

The principal Perl representation of a C object of type C<WGPUTextureDataLayout> is an
object of class C<WGPUTextureDataLayoutPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUTextureDataLayout->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUTextureDataLayout>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUTextureDataLayout-E<gt>_to_ptr()>

Converts an object of type C<WGPUTextureDataLayout> to an object of type C<WGPUTextureDataLayoutPtr>.

=item C<WGPUTextureDataLayout-E<gt>new()>

Creates an empty object of type C<WGPUTextureDataLayout>.  The corresponding packed
string is zeroed out.

=item C<offset(...)>, C<bytesPerRow(...)>, C<rowsPerImage(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUTextureDataLayoutPtr>.

=back


=head2 Object and class methods for C<WGPUSurfaceDescriptorFromXcbWindow>/C<WGPUSurfaceDescriptorFromXcbWindowPtr>

The principal Perl representation of a C object of type C<WGPUSurfaceDescriptorFromXcbWindow> is an
object of class C<WGPUSurfaceDescriptorFromXcbWindowPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUSurfaceDescriptorFromXcbWindow->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUSurfaceDescriptorFromXcbWindow>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUSurfaceDescriptorFromXcbWindow-E<gt>_to_ptr()>

Converts an object of type C<WGPUSurfaceDescriptorFromXcbWindow> to an object of type C<WGPUSurfaceDescriptorFromXcbWindowPtr>.

=item C<WGPUSurfaceDescriptorFromXcbWindow-E<gt>new()>

Creates an empty object of type C<WGPUSurfaceDescriptorFromXcbWindow>.  The corresponding packed
string is zeroed out.

=item C<chain(...)>, C<window(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUSurfaceDescriptorFromXcbWindowPtr>.

=back


=head2 Object and class methods for C<WGPUImageCopyBuffer>/C<WGPUImageCopyBufferPtr>

The principal Perl representation of a C object of type C<WGPUImageCopyBuffer> is an
object of class C<WGPUImageCopyBufferPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUImageCopyBuffer->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUImageCopyBuffer>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUImageCopyBuffer-E<gt>_to_ptr()>

Converts an object of type C<WGPUImageCopyBuffer> to an object of type C<WGPUImageCopyBufferPtr>.

=item C<WGPUImageCopyBuffer-E<gt>new()>

Creates an empty object of type C<WGPUImageCopyBuffer>.  The corresponding packed
string is zeroed out.

=item C<layout(...)>, C<buffer(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUImageCopyBufferPtr>.

=back


=head2 Object and class methods for C<WGPURequiredLimits>/C<WGPURequiredLimitsPtr>

The principal Perl representation of a C object of type C<WGPURequiredLimits> is an
object of class C<WGPURequiredLimitsPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPURequiredLimits->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPURequiredLimits>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPURequiredLimits-E<gt>_to_ptr()>

Converts an object of type C<WGPURequiredLimits> to an object of type C<WGPURequiredLimitsPtr>.

=item C<WGPURequiredLimits-E<gt>new()>

Creates an empty object of type C<WGPURequiredLimits>.  The corresponding packed
string is zeroed out.

=item C<limits(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPURequiredLimitsPtr>.

=back


=head2 Object and class methods for C<WGPUStorageTextureBindingLayout>/C<WGPUStorageTextureBindingLayoutPtr>

The principal Perl representation of a C object of type C<WGPUStorageTextureBindingLayout> is an
object of class C<WGPUStorageTextureBindingLayoutPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUStorageTextureBindingLayout->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUStorageTextureBindingLayout>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUStorageTextureBindingLayout-E<gt>_to_ptr()>

Converts an object of type C<WGPUStorageTextureBindingLayout> to an object of type C<WGPUStorageTextureBindingLayoutPtr>.

=item C<WGPUStorageTextureBindingLayout-E<gt>new()>

Creates an empty object of type C<WGPUStorageTextureBindingLayout>.  The corresponding packed
string is zeroed out.

=item C<access(...)>, C<format(...)>, C<viewDimension(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUStorageTextureBindingLayoutPtr>.

=back


=head2 Object and class methods for C<WGPUQuerySetDescriptor>/C<WGPUQuerySetDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUQuerySetDescriptor> is an
object of class C<WGPUQuerySetDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUQuerySetDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUQuerySetDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUQuerySetDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUQuerySetDescriptor> to an object of type C<WGPUQuerySetDescriptorPtr>.

=item C<WGPUQuerySetDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUQuerySetDescriptor>.  The corresponding packed
string is zeroed out.

=item C<type(...)>, C<count(...)>, C<pipelineStatisticsCount(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUQuerySetDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUChainedStructOut>/C<WGPUChainedStructOutPtr>

The principal Perl representation of a C object of type C<WGPUChainedStructOut> is an
object of class C<WGPUChainedStructOutPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUChainedStructOut->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUChainedStructOut>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUChainedStructOut-E<gt>_to_ptr()>

Converts an object of type C<WGPUChainedStructOut> to an object of type C<WGPUChainedStructOutPtr>.

=item C<WGPUChainedStructOut-E<gt>new()>

Creates an empty object of type C<WGPUChainedStructOut>.  The corresponding packed
string is zeroed out.

=item C<sType(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUChainedStructOutPtr>.

=back


=head2 Object and class methods for C<WGPUBlendState>/C<WGPUBlendStatePtr>

The principal Perl representation of a C object of type C<WGPUBlendState> is an
object of class C<WGPUBlendStatePtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUBlendState->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUBlendState>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUBlendState-E<gt>_to_ptr()>

Converts an object of type C<WGPUBlendState> to an object of type C<WGPUBlendStatePtr>.

=item C<WGPUBlendState-E<gt>new()>

Creates an empty object of type C<WGPUBlendState>.  The corresponding packed
string is zeroed out.

=item C<color(...)>, C<alpha(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUBlendStatePtr>.

=back


=head2 Object and class methods for C<WGPUCommandEncoderDescriptor>/C<WGPUCommandEncoderDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUCommandEncoderDescriptor> is an
object of class C<WGPUCommandEncoderDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUCommandEncoderDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUCommandEncoderDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUCommandEncoderDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUCommandEncoderDescriptor> to an object of type C<WGPUCommandEncoderDescriptorPtr>.

=item C<WGPUCommandEncoderDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUCommandEncoderDescriptor>.  The corresponding packed
string is zeroed out.

=item C<(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUCommandEncoderDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUCompilationMessage>/C<WGPUCompilationMessagePtr>

The principal Perl representation of a C object of type C<WGPUCompilationMessage> is an
object of class C<WGPUCompilationMessagePtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUCompilationMessage->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUCompilationMessage>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUCompilationMessage-E<gt>_to_ptr()>

Converts an object of type C<WGPUCompilationMessage> to an object of type C<WGPUCompilationMessagePtr>.

=item C<WGPUCompilationMessage-E<gt>new()>

Creates an empty object of type C<WGPUCompilationMessage>.  The corresponding packed
string is zeroed out.

=item C<type(...)>, C<lineNum(...)>, C<linePos(...)>, C<offset(...)>, C<length(...)>, C<utf16LinePos(...)>, C<utf16Offset(...)>, C<utf16Length(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUCompilationMessagePtr>.

=back


=head2 Object and class methods for C<WGPURenderPassDescriptor>/C<WGPURenderPassDescriptorPtr>

The principal Perl representation of a C object of type C<WGPURenderPassDescriptor> is an
object of class C<WGPURenderPassDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPURenderPassDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPURenderPassDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPURenderPassDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPURenderPassDescriptor> to an object of type C<WGPURenderPassDescriptorPtr>.

=item C<WGPURenderPassDescriptor-E<gt>new()>

Creates an empty object of type C<WGPURenderPassDescriptor>.  The corresponding packed
string is zeroed out.

=item C<colorAttachmentCount(...)>, C<occlusionQuerySet(...)>, C<timestampWriteCount(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPURenderPassDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUTextureBindingLayout>/C<WGPUTextureBindingLayoutPtr>

The principal Perl representation of a C object of type C<WGPUTextureBindingLayout> is an
object of class C<WGPUTextureBindingLayoutPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUTextureBindingLayout->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUTextureBindingLayout>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUTextureBindingLayout-E<gt>_to_ptr()>

Converts an object of type C<WGPUTextureBindingLayout> to an object of type C<WGPUTextureBindingLayoutPtr>.

=item C<WGPUTextureBindingLayout-E<gt>new()>

Creates an empty object of type C<WGPUTextureBindingLayout>.  The corresponding packed
string is zeroed out.

=item C<sampleType(...)>, C<viewDimension(...)>, C<multisampled(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUTextureBindingLayoutPtr>.

=back


=head2 Object and class methods for C<WGPUComputePassTimestampWrite>/C<WGPUComputePassTimestampWritePtr>

The principal Perl representation of a C object of type C<WGPUComputePassTimestampWrite> is an
object of class C<WGPUComputePassTimestampWritePtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUComputePassTimestampWrite->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUComputePassTimestampWrite>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUComputePassTimestampWrite-E<gt>_to_ptr()>

Converts an object of type C<WGPUComputePassTimestampWrite> to an object of type C<WGPUComputePassTimestampWritePtr>.

=item C<WGPUComputePassTimestampWrite-E<gt>new()>

Creates an empty object of type C<WGPUComputePassTimestampWrite>.  The corresponding packed
string is zeroed out.

=item C<querySet(...)>, C<queryIndex(...)>, C<location(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUComputePassTimestampWritePtr>.

=back


=head2 Object and class methods for C<WGPUInstanceDescriptor>/C<WGPUInstanceDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUInstanceDescriptor> is an
object of class C<WGPUInstanceDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUInstanceDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUInstanceDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUInstanceDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUInstanceDescriptor> to an object of type C<WGPUInstanceDescriptorPtr>.

=item C<WGPUInstanceDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUInstanceDescriptor>.  The corresponding packed
string is zeroed out.

=item C<(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUInstanceDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUSamplerDescriptor>/C<WGPUSamplerDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUSamplerDescriptor> is an
object of class C<WGPUSamplerDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUSamplerDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUSamplerDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUSamplerDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUSamplerDescriptor> to an object of type C<WGPUSamplerDescriptorPtr>.

=item C<WGPUSamplerDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUSamplerDescriptor>.  The corresponding packed
string is zeroed out.

=item C<addressModeU(...)>, C<addressModeV(...)>, C<addressModeW(...)>, C<magFilter(...)>, C<minFilter(...)>, C<mipmapFilter(...)>, C<lodMinClamp(...)>, C<lodMaxClamp(...)>, C<compare(...)>, C<maxAnisotropy(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUSamplerDescriptorPtr>.

=back


=head2 Object and class methods for C<WGPUShaderModuleWGSLDescriptor>/C<WGPUShaderModuleWGSLDescriptorPtr>

The principal Perl representation of a C object of type C<WGPUShaderModuleWGSLDescriptor> is an
object of class C<WGPUShaderModuleWGSLDescriptorPtr> which is a reference to an integer
representation of a C pointer.  To create such an object, one may use
a combination

  my $buffer = WGPUShaderModuleWGSLDescriptor->new();
  my $obj = $buffer->_to_ptr();

This exercises the following two methods, and an additional class
C<WGPUShaderModuleWGSLDescriptor>, the internal representation of which is a reference to a
packed string with the C structure.  Keep in mind that $buffer should
better survive longer than $obj.

=over

=item C<$object_of_type_WGPUShaderModuleWGSLDescriptor-E<gt>_to_ptr()>

Converts an object of type C<WGPUShaderModuleWGSLDescriptor> to an object of type C<WGPUShaderModuleWGSLDescriptorPtr>.

=item C<WGPUShaderModuleWGSLDescriptor-E<gt>new()>

Creates an empty object of type C<WGPUShaderModuleWGSLDescriptor>.  The corresponding packed
string is zeroed out.

=item C<chain(...)>

return the current value of the corresponding element if called
without additional arguments.  Set the element to the supplied value
(and return the new value) if called with an additional argument.

Applicable to objects of type C<WGPUShaderModuleWGSLDescriptorPtr>.

=back



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

A. U. Thor, E<lt>atrodo@(none)E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2023 by A. U. Thor

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.30.3 or,
at your option, any later version of Perl 5 you may have available.


=cut
