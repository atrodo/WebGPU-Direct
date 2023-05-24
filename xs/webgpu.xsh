#pragma GCC diagnostic ignored "-Wint-to-pointer-cast"
#pragma GCC diagnostic ignored "-Wformat"

MODULE = WebGPU::Direct		PACKAGE = WebGPU::Direct::XS

WebGPU::Direct::Instance 
wgpuCreateInstance(descriptor)
        WebGPU::Direct::InstanceDescriptor const * descriptor


WebGPU::Direct::Proc 
wgpuGetProcAddress(device, procName)
        WebGPU::Direct::Device device
        char const * procName


size_t 
wgpuAdapterEnumerateFeatures(adapter, features)
        WebGPU::Direct::Adapter adapter
        WGPUFeatureName * features


bool 
wgpuAdapterGetLimits(adapter, limits)
        WebGPU::Direct::Adapter adapter
        WebGPU::Direct::SupportedLimits * limits


void 
wgpuAdapterGetProperties(adapter, properties)
        WebGPU::Direct::Adapter adapter
        WebGPU::Direct::AdapterProperties * properties


bool 
wgpuAdapterHasFeature(adapter, feature)
        WebGPU::Direct::Adapter adapter
        WGPUFeatureName feature


void 
wgpuAdapterRequestDevice(adapter, callback, userdata)
        WebGPU::Direct::Adapter adapter
        WebGPU::Direct::RequestDeviceCallback callback
        void * userdata


void 
wgpuBindGroupSetLabel(bindGroup, label)
        WebGPU::Direct::BindGroup bindGroup
        char const * label


void 
wgpuBindGroupLayoutSetLabel(bindGroupLayout, label)
        WebGPU::Direct::BindGroupLayout bindGroupLayout
        char const * label


void 
wgpuBufferDestroy(buffer)
        WebGPU::Direct::Buffer buffer


void const * 
wgpuBufferGetConstMappedRange(buffer, offset, size)
        WebGPU::Direct::Buffer buffer
        size_t offset
        size_t size


WGPUBufferMapState 
wgpuBufferGetMapState(buffer)
        WebGPU::Direct::Buffer buffer


void * 
wgpuBufferGetMappedRange(buffer, offset, size)
        WebGPU::Direct::Buffer buffer
        size_t offset
        size_t size


uint64_t 
wgpuBufferGetSize(buffer)
        WebGPU::Direct::Buffer buffer


WGPUBufferUsage 
wgpuBufferGetUsage(buffer)
        WebGPU::Direct::Buffer buffer


void 
wgpuBufferMapAsync(buffer, mode, offset, size, callback, userdata)
        WebGPU::Direct::Buffer buffer
        WGPUMapModeFlags mode
        size_t offset
        size_t size
        WebGPU::Direct::BufferMapCallback callback
        void * userdata


void 
wgpuBufferSetLabel(buffer, label)
        WebGPU::Direct::Buffer buffer
        char const * label


void 
wgpuBufferUnmap(buffer)
        WebGPU::Direct::Buffer buffer


void 
wgpuCommandBufferSetLabel(commandBuffer, label)
        WebGPU::Direct::CommandBuffer commandBuffer
        char const * label


WebGPU::Direct::ComputePassEncoder 
wgpuCommandEncoderBeginComputePass(commandEncoder)
        WebGPU::Direct::CommandEncoder commandEncoder


WebGPU::Direct::RenderPassEncoder 
wgpuCommandEncoderBeginRenderPass(commandEncoder, descriptor)
        WebGPU::Direct::CommandEncoder commandEncoder
        WebGPU::Direct::RenderPassDescriptor const * descriptor


void 
wgpuCommandEncoderClearBuffer(commandEncoder, buffer, offset, size)
        WebGPU::Direct::CommandEncoder commandEncoder
        WebGPU::Direct::Buffer buffer
        uint64_t offset
        uint64_t size


void 
wgpuCommandEncoderCopyBufferToBuffer(commandEncoder, source, sourceOffset, destination, destinationOffset, size)
        WebGPU::Direct::CommandEncoder commandEncoder
        WebGPU::Direct::Buffer source
        uint64_t sourceOffset
        WebGPU::Direct::Buffer destination
        uint64_t destinationOffset
        uint64_t size


void 
wgpuCommandEncoderCopyBufferToTexture(commandEncoder, source, destination, copySize)
        WebGPU::Direct::CommandEncoder commandEncoder
        WebGPU::Direct::ImageCopyBuffer const * source
        WebGPU::Direct::ImageCopyTexture const * destination
        WebGPU::Direct::Extent3D const * copySize


void 
wgpuCommandEncoderCopyTextureToBuffer(commandEncoder, source, destination, copySize)
        WebGPU::Direct::CommandEncoder commandEncoder
        WebGPU::Direct::ImageCopyTexture const * source
        WebGPU::Direct::ImageCopyBuffer const * destination
        WebGPU::Direct::Extent3D const * copySize


void 
wgpuCommandEncoderCopyTextureToTexture(commandEncoder, source, destination, copySize)
        WebGPU::Direct::CommandEncoder commandEncoder
        WebGPU::Direct::ImageCopyTexture const * source
        WebGPU::Direct::ImageCopyTexture const * destination
        WebGPU::Direct::Extent3D const * copySize


WebGPU::Direct::CommandBuffer 
wgpuCommandEncoderFinish(commandEncoder)
        WebGPU::Direct::CommandEncoder commandEncoder


void 
wgpuCommandEncoderInsertDebugMarker(commandEncoder, markerLabel)
        WebGPU::Direct::CommandEncoder commandEncoder
        char const * markerLabel


void 
wgpuCommandEncoderPopDebugGroup(commandEncoder)
        WebGPU::Direct::CommandEncoder commandEncoder


void 
wgpuCommandEncoderPushDebugGroup(commandEncoder, groupLabel)
        WebGPU::Direct::CommandEncoder commandEncoder
        char const * groupLabel


void 
wgpuCommandEncoderResolveQuerySet(commandEncoder, querySet, firstQuery, queryCount, destination, destinationOffset)
        WebGPU::Direct::CommandEncoder commandEncoder
        WebGPU::Direct::QuerySet querySet
        uint32_t firstQuery
        uint32_t queryCount
        WebGPU::Direct::Buffer destination
        uint64_t destinationOffset


void 
wgpuCommandEncoderSetLabel(commandEncoder, label)
        WebGPU::Direct::CommandEncoder commandEncoder
        char const * label


void 
wgpuCommandEncoderWriteTimestamp(commandEncoder, querySet, queryIndex)
        WebGPU::Direct::CommandEncoder commandEncoder
        WebGPU::Direct::QuerySet querySet
        uint32_t queryIndex


void 
wgpuComputePassEncoderBeginPipelineStatisticsQuery(computePassEncoder, querySet, queryIndex)
        WebGPU::Direct::ComputePassEncoder computePassEncoder
        WebGPU::Direct::QuerySet querySet
        uint32_t queryIndex


void 
wgpuComputePassEncoderDispatchWorkgroups(computePassEncoder, workgroupCountX, workgroupCountY, workgroupCountZ)
        WebGPU::Direct::ComputePassEncoder computePassEncoder
        uint32_t workgroupCountX
        uint32_t workgroupCountY
        uint32_t workgroupCountZ


void 
wgpuComputePassEncoderDispatchWorkgroupsIndirect(computePassEncoder, indirectBuffer, indirectOffset)
        WebGPU::Direct::ComputePassEncoder computePassEncoder
        WebGPU::Direct::Buffer indirectBuffer
        uint64_t indirectOffset


void 
wgpuComputePassEncoderEnd(computePassEncoder)
        WebGPU::Direct::ComputePassEncoder computePassEncoder


void 
wgpuComputePassEncoderEndPipelineStatisticsQuery(computePassEncoder)
        WebGPU::Direct::ComputePassEncoder computePassEncoder


void 
wgpuComputePassEncoderInsertDebugMarker(computePassEncoder, markerLabel)
        WebGPU::Direct::ComputePassEncoder computePassEncoder
        char const * markerLabel


void 
wgpuComputePassEncoderPopDebugGroup(computePassEncoder)
        WebGPU::Direct::ComputePassEncoder computePassEncoder


void 
wgpuComputePassEncoderPushDebugGroup(computePassEncoder, groupLabel)
        WebGPU::Direct::ComputePassEncoder computePassEncoder
        char const * groupLabel


void 
wgpuComputePassEncoderSetBindGroup(computePassEncoder, groupIndex, group, dynamicOffsetCount, dynamicOffsets)
        WebGPU::Direct::ComputePassEncoder computePassEncoder
        uint32_t groupIndex
        WebGPU::Direct::BindGroup group
        uint32_t dynamicOffsetCount
        uint32_t const * dynamicOffsets


void 
wgpuComputePassEncoderSetLabel(computePassEncoder, label)
        WebGPU::Direct::ComputePassEncoder computePassEncoder
        char const * label


void 
wgpuComputePassEncoderSetPipeline(computePassEncoder, pipeline)
        WebGPU::Direct::ComputePassEncoder computePassEncoder
        WebGPU::Direct::ComputePipeline pipeline


WebGPU::Direct::BindGroupLayout 
wgpuComputePipelineGetBindGroupLayout(computePipeline, groupIndex)
        WebGPU::Direct::ComputePipeline computePipeline
        uint32_t groupIndex


void 
wgpuComputePipelineSetLabel(computePipeline, label)
        WebGPU::Direct::ComputePipeline computePipeline
        char const * label


WebGPU::Direct::BindGroup 
wgpuDeviceCreateBindGroup(device, descriptor)
        WebGPU::Direct::Device device
        WebGPU::Direct::BindGroupDescriptor const * descriptor


WebGPU::Direct::BindGroupLayout 
wgpuDeviceCreateBindGroupLayout(device, descriptor)
        WebGPU::Direct::Device device
        WebGPU::Direct::BindGroupLayoutDescriptor const * descriptor


WebGPU::Direct::Buffer 
wgpuDeviceCreateBuffer(device, descriptor)
        WebGPU::Direct::Device device
        WebGPU::Direct::BufferDescriptor const * descriptor


WebGPU::Direct::CommandEncoder 
wgpuDeviceCreateCommandEncoder(device)
        WebGPU::Direct::Device device


WebGPU::Direct::ComputePipeline 
wgpuDeviceCreateComputePipeline(device, descriptor)
        WebGPU::Direct::Device device
        WebGPU::Direct::ComputePipelineDescriptor const * descriptor


void 
wgpuDeviceCreateComputePipelineAsync(device, descriptor, callback, userdata)
        WebGPU::Direct::Device device
        WebGPU::Direct::ComputePipelineDescriptor const * descriptor
        WebGPU::Direct::CreateComputePipelineAsyncCallback callback
        void * userdata


WebGPU::Direct::PipelineLayout 
wgpuDeviceCreatePipelineLayout(device, descriptor)
        WebGPU::Direct::Device device
        WebGPU::Direct::PipelineLayoutDescriptor const * descriptor


WebGPU::Direct::QuerySet 
wgpuDeviceCreateQuerySet(device, descriptor)
        WebGPU::Direct::Device device
        WebGPU::Direct::QuerySetDescriptor const * descriptor


WebGPU::Direct::RenderBundleEncoder 
wgpuDeviceCreateRenderBundleEncoder(device, descriptor)
        WebGPU::Direct::Device device
        WebGPU::Direct::RenderBundleEncoderDescriptor const * descriptor


WebGPU::Direct::RenderPipeline 
wgpuDeviceCreateRenderPipeline(device, descriptor)
        WebGPU::Direct::Device device
        WebGPU::Direct::RenderPipelineDescriptor const * descriptor


void 
wgpuDeviceCreateRenderPipelineAsync(device, descriptor, callback, userdata)
        WebGPU::Direct::Device device
        WebGPU::Direct::RenderPipelineDescriptor const * descriptor
        WebGPU::Direct::CreateRenderPipelineAsyncCallback callback
        void * userdata


WebGPU::Direct::Sampler 
wgpuDeviceCreateSampler(device)
        WebGPU::Direct::Device device


WebGPU::Direct::ShaderModule 
wgpuDeviceCreateShaderModule(device, descriptor)
        WebGPU::Direct::Device device
        WebGPU::Direct::ShaderModuleDescriptor const * descriptor


WebGPU::Direct::SwapChain 
wgpuDeviceCreateSwapChain(device, surface, descriptor)
        WebGPU::Direct::Device device
        WebGPU::Direct::Surface surface
        WebGPU::Direct::SwapChainDescriptor const * descriptor


WebGPU::Direct::Texture 
wgpuDeviceCreateTexture(device, descriptor)
        WebGPU::Direct::Device device
        WebGPU::Direct::TextureDescriptor const * descriptor


void 
wgpuDeviceDestroy(device)
        WebGPU::Direct::Device device


size_t 
wgpuDeviceEnumerateFeatures(device, features)
        WebGPU::Direct::Device device
        WGPUFeatureName * features


bool 
wgpuDeviceGetLimits(device, limits)
        WebGPU::Direct::Device device
        WebGPU::Direct::SupportedLimits * limits


WebGPU::Direct::Queue 
wgpuDeviceGetQueue(device)
        WebGPU::Direct::Device device


bool 
wgpuDeviceHasFeature(device, feature)
        WebGPU::Direct::Device device
        WGPUFeatureName feature


bool 
wgpuDevicePopErrorScope(device, callback, userdata)
        WebGPU::Direct::Device device
        WebGPU::Direct::ErrorCallback callback
        void * userdata


void 
wgpuDevicePushErrorScope(device, filter)
        WebGPU::Direct::Device device
        WGPUErrorFilter filter


void 
wgpuDeviceSetDeviceLostCallback(device, callback, userdata)
        WebGPU::Direct::Device device
        WebGPU::Direct::DeviceLostCallback callback
        void * userdata


void 
wgpuDeviceSetLabel(device, label)
        WebGPU::Direct::Device device
        char const * label


void 
wgpuDeviceSetUncapturedErrorCallback(device, callback, userdata)
        WebGPU::Direct::Device device
        WebGPU::Direct::ErrorCallback callback
        void * userdata


WebGPU::Direct::Surface 
wgpuInstanceCreateSurface(instance, descriptor)
        WebGPU::Direct::Instance instance
        WebGPU::Direct::SurfaceDescriptor const * descriptor


void 
wgpuInstanceProcessEvents(instance)
        WebGPU::Direct::Instance instance


void 
wgpuInstanceRequestAdapter(instance, callback, userdata)
        WebGPU::Direct::Instance instance
        WebGPU::Direct::RequestAdapterCallback callback
        void * userdata


void 
wgpuPipelineLayoutSetLabel(pipelineLayout, label)
        WebGPU::Direct::PipelineLayout pipelineLayout
        char const * label


void 
wgpuQuerySetDestroy(querySet)
        WebGPU::Direct::QuerySet querySet


uint32_t 
wgpuQuerySetGetCount(querySet)
        WebGPU::Direct::QuerySet querySet


WGPUQueryType 
wgpuQuerySetGetType(querySet)
        WebGPU::Direct::QuerySet querySet


void 
wgpuQuerySetSetLabel(querySet, label)
        WebGPU::Direct::QuerySet querySet
        char const * label


void 
wgpuQueueOnSubmittedWorkDone(queue, callback, userdata)
        WebGPU::Direct::Queue queue
        WebGPU::Direct::QueueWorkDoneCallback callback
        void * userdata


void 
wgpuQueueSetLabel(queue, label)
        WebGPU::Direct::Queue queue
        char const * label


void 
wgpuQueueSubmit(queue, commandCount, commands)
        WebGPU::Direct::Queue queue
        uint32_t commandCount
        WebGPU::Direct::CommandBuffer const * commands


void 
wgpuQueueWriteBuffer(queue, buffer, bufferOffset, data, size)
        WebGPU::Direct::Queue queue
        WebGPU::Direct::Buffer buffer
        uint64_t bufferOffset
        void const * data
        size_t size


void 
wgpuQueueWriteTexture(queue, destination, data, dataSize, dataLayout, writeSize)
        WebGPU::Direct::Queue queue
        WebGPU::Direct::ImageCopyTexture const * destination
        void const * data
        size_t dataSize
        WebGPU::Direct::TextureDataLayout const * dataLayout
        WebGPU::Direct::Extent3D const * writeSize


void 
wgpuRenderBundleEncoderDraw(renderBundleEncoder, vertexCount, instanceCount, firstVertex, firstInstance)
        WebGPU::Direct::RenderBundleEncoder renderBundleEncoder
        uint32_t vertexCount
        uint32_t instanceCount
        uint32_t firstVertex
        uint32_t firstInstance


void 
wgpuRenderBundleEncoderDrawIndexed(renderBundleEncoder, indexCount, instanceCount, firstIndex, baseVertex, firstInstance)
        WebGPU::Direct::RenderBundleEncoder renderBundleEncoder
        uint32_t indexCount
        uint32_t instanceCount
        uint32_t firstIndex
        int32_t baseVertex
        uint32_t firstInstance


void 
wgpuRenderBundleEncoderDrawIndexedIndirect(renderBundleEncoder, indirectBuffer, indirectOffset)
        WebGPU::Direct::RenderBundleEncoder renderBundleEncoder
        WebGPU::Direct::Buffer indirectBuffer
        uint64_t indirectOffset


void 
wgpuRenderBundleEncoderDrawIndirect(renderBundleEncoder, indirectBuffer, indirectOffset)
        WebGPU::Direct::RenderBundleEncoder renderBundleEncoder
        WebGPU::Direct::Buffer indirectBuffer
        uint64_t indirectOffset


WebGPU::Direct::RenderBundle 
wgpuRenderBundleEncoderFinish(renderBundleEncoder)
        WebGPU::Direct::RenderBundleEncoder renderBundleEncoder


void 
wgpuRenderBundleEncoderInsertDebugMarker(renderBundleEncoder, markerLabel)
        WebGPU::Direct::RenderBundleEncoder renderBundleEncoder
        char const * markerLabel


void 
wgpuRenderBundleEncoderPopDebugGroup(renderBundleEncoder)
        WebGPU::Direct::RenderBundleEncoder renderBundleEncoder


void 
wgpuRenderBundleEncoderPushDebugGroup(renderBundleEncoder, groupLabel)
        WebGPU::Direct::RenderBundleEncoder renderBundleEncoder
        char const * groupLabel


void 
wgpuRenderBundleEncoderSetBindGroup(renderBundleEncoder, groupIndex, group, dynamicOffsetCount, dynamicOffsets)
        WebGPU::Direct::RenderBundleEncoder renderBundleEncoder
        uint32_t groupIndex
        WebGPU::Direct::BindGroup group
        uint32_t dynamicOffsetCount
        uint32_t const * dynamicOffsets


void 
wgpuRenderBundleEncoderSetIndexBuffer(renderBundleEncoder, buffer, format, offset, size)
        WebGPU::Direct::RenderBundleEncoder renderBundleEncoder
        WebGPU::Direct::Buffer buffer
        WGPUIndexFormat format
        uint64_t offset
        uint64_t size


void 
wgpuRenderBundleEncoderSetLabel(renderBundleEncoder, label)
        WebGPU::Direct::RenderBundleEncoder renderBundleEncoder
        char const * label


void 
wgpuRenderBundleEncoderSetPipeline(renderBundleEncoder, pipeline)
        WebGPU::Direct::RenderBundleEncoder renderBundleEncoder
        WebGPU::Direct::RenderPipeline pipeline


void 
wgpuRenderBundleEncoderSetVertexBuffer(renderBundleEncoder, slot, buffer, offset, size)
        WebGPU::Direct::RenderBundleEncoder renderBundleEncoder
        uint32_t slot
        WebGPU::Direct::Buffer buffer
        uint64_t offset
        uint64_t size


void 
wgpuRenderPassEncoderBeginOcclusionQuery(renderPassEncoder, queryIndex)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder
        uint32_t queryIndex


void 
wgpuRenderPassEncoderBeginPipelineStatisticsQuery(renderPassEncoder, querySet, queryIndex)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder
        WebGPU::Direct::QuerySet querySet
        uint32_t queryIndex


void 
wgpuRenderPassEncoderDraw(renderPassEncoder, vertexCount, instanceCount, firstVertex, firstInstance)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder
        uint32_t vertexCount
        uint32_t instanceCount
        uint32_t firstVertex
        uint32_t firstInstance


void 
wgpuRenderPassEncoderDrawIndexed(renderPassEncoder, indexCount, instanceCount, firstIndex, baseVertex, firstInstance)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder
        uint32_t indexCount
        uint32_t instanceCount
        uint32_t firstIndex
        int32_t baseVertex
        uint32_t firstInstance


void 
wgpuRenderPassEncoderDrawIndexedIndirect(renderPassEncoder, indirectBuffer, indirectOffset)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder
        WebGPU::Direct::Buffer indirectBuffer
        uint64_t indirectOffset


void 
wgpuRenderPassEncoderDrawIndirect(renderPassEncoder, indirectBuffer, indirectOffset)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder
        WebGPU::Direct::Buffer indirectBuffer
        uint64_t indirectOffset


void 
wgpuRenderPassEncoderEnd(renderPassEncoder)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder


void 
wgpuRenderPassEncoderEndOcclusionQuery(renderPassEncoder)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder


void 
wgpuRenderPassEncoderEndPipelineStatisticsQuery(renderPassEncoder)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder


void 
wgpuRenderPassEncoderExecuteBundles(renderPassEncoder, bundleCount, bundles)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder
        uint32_t bundleCount
        WebGPU::Direct::RenderBundle const * bundles


void 
wgpuRenderPassEncoderInsertDebugMarker(renderPassEncoder, markerLabel)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder
        char const * markerLabel


void 
wgpuRenderPassEncoderPopDebugGroup(renderPassEncoder)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder


void 
wgpuRenderPassEncoderPushDebugGroup(renderPassEncoder, groupLabel)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder
        char const * groupLabel


void 
wgpuRenderPassEncoderSetBindGroup(renderPassEncoder, groupIndex, group, dynamicOffsetCount, dynamicOffsets)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder
        uint32_t groupIndex
        WebGPU::Direct::BindGroup group
        uint32_t dynamicOffsetCount
        uint32_t const * dynamicOffsets


void 
wgpuRenderPassEncoderSetBlendConstant(renderPassEncoder, color)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder
        WebGPU::Direct::Color const * color


void 
wgpuRenderPassEncoderSetIndexBuffer(renderPassEncoder, buffer, format, offset, size)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder
        WebGPU::Direct::Buffer buffer
        WGPUIndexFormat format
        uint64_t offset
        uint64_t size


void 
wgpuRenderPassEncoderSetLabel(renderPassEncoder, label)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder
        char const * label


void 
wgpuRenderPassEncoderSetPipeline(renderPassEncoder, pipeline)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder
        WebGPU::Direct::RenderPipeline pipeline


void 
wgpuRenderPassEncoderSetScissorRect(renderPassEncoder, x, y, width, height)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder
        uint32_t x
        uint32_t y
        uint32_t width
        uint32_t height


void 
wgpuRenderPassEncoderSetStencilReference(renderPassEncoder, reference)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder
        uint32_t reference


void 
wgpuRenderPassEncoderSetVertexBuffer(renderPassEncoder, slot, buffer, offset, size)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder
        uint32_t slot
        WebGPU::Direct::Buffer buffer
        uint64_t offset
        uint64_t size


void 
wgpuRenderPassEncoderSetViewport(renderPassEncoder, x, y, width, height, minDepth, maxDepth)
        WebGPU::Direct::RenderPassEncoder renderPassEncoder
        float x
        float y
        float width
        float height
        float minDepth
        float maxDepth


WebGPU::Direct::BindGroupLayout 
wgpuRenderPipelineGetBindGroupLayout(renderPipeline, groupIndex)
        WebGPU::Direct::RenderPipeline renderPipeline
        uint32_t groupIndex


void 
wgpuRenderPipelineSetLabel(renderPipeline, label)
        WebGPU::Direct::RenderPipeline renderPipeline
        char const * label


void 
wgpuSamplerSetLabel(sampler, label)
        WebGPU::Direct::Sampler sampler
        char const * label


void 
wgpuShaderModuleGetCompilationInfo(shaderModule, callback, userdata)
        WebGPU::Direct::ShaderModule shaderModule
        WebGPU::Direct::CompilationInfoCallback callback
        void * userdata


void 
wgpuShaderModuleSetLabel(shaderModule, label)
        WebGPU::Direct::ShaderModule shaderModule
        char const * label


WGPUTextureFormat 
wgpuSurfaceGetPreferredFormat(surface, adapter)
        WebGPU::Direct::Surface surface
        WebGPU::Direct::Adapter adapter


WebGPU::Direct::TextureView 
wgpuSwapChainGetCurrentTextureView(swapChain)
        WebGPU::Direct::SwapChain swapChain


void 
wgpuSwapChainPresent(swapChain)
        WebGPU::Direct::SwapChain swapChain


WebGPU::Direct::TextureView 
wgpuTextureCreateView(texture)
        WebGPU::Direct::Texture texture


void 
wgpuTextureDestroy(texture)
        WebGPU::Direct::Texture texture


uint32_t 
wgpuTextureGetDepthOrArrayLayers(texture)
        WebGPU::Direct::Texture texture


WGPUTextureDimension 
wgpuTextureGetDimension(texture)
        WebGPU::Direct::Texture texture


WGPUTextureFormat 
wgpuTextureGetFormat(texture)
        WebGPU::Direct::Texture texture


uint32_t 
wgpuTextureGetHeight(texture)
        WebGPU::Direct::Texture texture


uint32_t 
wgpuTextureGetMipLevelCount(texture)
        WebGPU::Direct::Texture texture


uint32_t 
wgpuTextureGetSampleCount(texture)
        WebGPU::Direct::Texture texture


WGPUTextureUsage 
wgpuTextureGetUsage(texture)
        WebGPU::Direct::Texture texture


uint32_t 
wgpuTextureGetWidth(texture)
        WebGPU::Direct::Texture texture


void 
wgpuTextureSetLabel(texture, label)
        WebGPU::Direct::Texture texture
        char const * label


void 
wgpuTextureViewSetLabel(textureView, label)
        WebGPU::Direct::TextureView textureView
        char const * label


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Adapter	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroup	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroupLayout	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Buffer	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CommandBuffer	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CommandEncoder	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ComputePassEncoder	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ComputePipeline	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Device	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Instance	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::PipelineLayout	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::QuerySet	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Queue	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderBundle	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderBundleEncoder	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPassEncoder	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPipeline	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Sampler	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ShaderModule	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Surface	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SwapChain	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Texture	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::TextureView	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ChainedStruct	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
next(THIS, value = NO_INIT)
        WebGPU::Direct::ChainedStruct THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUChainedStruct *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUChainedStruct");
        RETVAL = _find_obj(aTHX_ h, "next", 4, &n->next, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->next, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUSType
sType(THIS, value = NO_INIT)
        WebGPU::Direct::ChainedStruct THIS
        WGPUSType value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUChainedStruct *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUChainedStruct");
        RETVAL = _find_obj(aTHX_ h, "sType", 5, &n->sType, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->sType, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ChainedStruct__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ChainedStructOut	PREFIX = wgpu

WebGPU::Direct::ChainedStructOut
next(THIS, value = NO_INIT)
        WebGPU::Direct::ChainedStructOut THIS
        WebGPU::Direct::ChainedStructOut value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUChainedStructOut *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUChainedStructOut");
        RETVAL = _find_obj(aTHX_ h, "next", 4, &n->next, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->next, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUSType
sType(THIS, value = NO_INIT)
        WebGPU::Direct::ChainedStructOut THIS
        WGPUSType value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUChainedStructOut *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUChainedStructOut");
        RETVAL = _find_obj(aTHX_ h, "sType", 5, &n->sType, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->sType, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ChainedStructOut__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::AdapterProperties	PREFIX = wgpu

WebGPU::Direct::ChainedStructOut
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        WebGPU::Direct::ChainedStructOut value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUAdapterProperties *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUAdapterProperties");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
vendorID(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUAdapterProperties *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUAdapterProperties");
        RETVAL = _find_obj(aTHX_ h, "vendorID", 8, &n->vendorID, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->vendorID, type_sv);
        }
    OUTPUT:
        RETVAL

char
vendorName(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUAdapterProperties *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUAdapterProperties");
        RETVAL = _find_obj(aTHX_ h, "vendorName", 10, &n->vendorName, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->vendorName, type_sv);
        }
    OUTPUT:
        RETVAL

char
architecture(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUAdapterProperties *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUAdapterProperties");
        RETVAL = _find_obj(aTHX_ h, "architecture", 12, &n->architecture, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->architecture, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
deviceID(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUAdapterProperties *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUAdapterProperties");
        RETVAL = _find_obj(aTHX_ h, "deviceID", 8, &n->deviceID, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->deviceID, type_sv);
        }
    OUTPUT:
        RETVAL

char
name(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUAdapterProperties *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUAdapterProperties");
        RETVAL = _find_obj(aTHX_ h, "name", 4, &n->name, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->name, type_sv);
        }
    OUTPUT:
        RETVAL

char
driverDescription(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUAdapterProperties *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUAdapterProperties");
        RETVAL = _find_obj(aTHX_ h, "driverDescription", 17, &n->driverDescription, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->driverDescription, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUAdapterType
adapterType(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        WGPUAdapterType value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUAdapterProperties *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUAdapterProperties");
        RETVAL = _find_obj(aTHX_ h, "adapterType", 11, &n->adapterType, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->adapterType, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUBackendType
backendType(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        WGPUBackendType value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUAdapterProperties *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUAdapterProperties");
        RETVAL = _find_obj(aTHX_ h, "backendType", 11, &n->backendType, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->backendType, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__AdapterProperties__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroupEntry	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupEntry *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupEntry");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
binding(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupEntry *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupEntry");
        RETVAL = _find_obj(aTHX_ h, "binding", 7, &n->binding, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->binding, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUBuffer
buffer(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        WGPUBuffer value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupEntry *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupEntry");
        RETVAL = _find_obj(aTHX_ h, "buffer", 6, &n->buffer, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->buffer, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
offset(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        uint64_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupEntry *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupEntry");
        RETVAL = _find_obj(aTHX_ h, "offset", 6, &n->offset, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->offset, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
size(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        uint64_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupEntry *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupEntry");
        RETVAL = _find_obj(aTHX_ h, "size", 4, &n->size, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->size, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUSampler
sampler(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        WGPUSampler value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupEntry *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupEntry");
        RETVAL = _find_obj(aTHX_ h, "sampler", 7, &n->sampler, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->sampler, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureView
textureView(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        WGPUTextureView value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupEntry *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupEntry");
        RETVAL = _find_obj(aTHX_ h, "textureView", 11, &n->textureView, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->textureView, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BindGroupEntry__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BlendComponent	PREFIX = wgpu

WGPUBlendOperation
operation(THIS, value = NO_INIT)
        WebGPU::Direct::BlendComponent THIS
        WGPUBlendOperation value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBlendComponent *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBlendComponent");
        RETVAL = _find_obj(aTHX_ h, "operation", 9, &n->operation, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->operation, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUBlendFactor
srcFactor(THIS, value = NO_INIT)
        WebGPU::Direct::BlendComponent THIS
        WGPUBlendFactor value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBlendComponent *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBlendComponent");
        RETVAL = _find_obj(aTHX_ h, "srcFactor", 9, &n->srcFactor, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->srcFactor, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUBlendFactor
dstFactor(THIS, value = NO_INIT)
        WebGPU::Direct::BlendComponent THIS
        WGPUBlendFactor value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBlendComponent *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBlendComponent");
        RETVAL = _find_obj(aTHX_ h, "dstFactor", 9, &n->dstFactor, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->dstFactor, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BlendComponent__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BufferBindingLayout	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::BufferBindingLayout THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBufferBindingLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBufferBindingLayout");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUBufferBindingType
type(THIS, value = NO_INIT)
        WebGPU::Direct::BufferBindingLayout THIS
        WGPUBufferBindingType value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBufferBindingLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBufferBindingLayout");
        RETVAL = _find_obj(aTHX_ h, "type", 4, &n->type, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->type, type_sv);
        }
    OUTPUT:
        RETVAL

bool
hasDynamicOffset(THIS, value = NO_INIT)
        WebGPU::Direct::BufferBindingLayout THIS
        bool value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBufferBindingLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBufferBindingLayout");
        RETVAL = _find_obj(aTHX_ h, "hasDynamicOffset", 16, &n->hasDynamicOffset, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->hasDynamicOffset, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
minBindingSize(THIS, value = NO_INIT)
        WebGPU::Direct::BufferBindingLayout THIS
        uint64_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBufferBindingLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBufferBindingLayout");
        RETVAL = _find_obj(aTHX_ h, "minBindingSize", 14, &n->minBindingSize, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->minBindingSize, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BufferBindingLayout__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BufferDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::BufferDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBufferDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBufferDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::BufferDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBufferDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBufferDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUBufferUsageFlags
usage(THIS, value = NO_INIT)
        WebGPU::Direct::BufferDescriptor THIS
        WGPUBufferUsageFlags value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBufferDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBufferDescriptor");
        RETVAL = _find_obj(aTHX_ h, "usage", 5, &n->usage, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->usage, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
size(THIS, value = NO_INIT)
        WebGPU::Direct::BufferDescriptor THIS
        uint64_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBufferDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBufferDescriptor");
        RETVAL = _find_obj(aTHX_ h, "size", 4, &n->size, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->size, type_sv);
        }
    OUTPUT:
        RETVAL

bool
mappedAtCreation(THIS, value = NO_INIT)
        WebGPU::Direct::BufferDescriptor THIS
        bool value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBufferDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBufferDescriptor");
        RETVAL = _find_obj(aTHX_ h, "mappedAtCreation", 16, &n->mappedAtCreation, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->mappedAtCreation, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BufferDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Color	PREFIX = wgpu

double
r(THIS, value = NO_INIT)
        WebGPU::Direct::Color THIS
        double value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUColor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUColor");
        RETVAL = _find_obj(aTHX_ h, "r", 1, &n->r, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->r, type_sv);
        }
    OUTPUT:
        RETVAL

double
g(THIS, value = NO_INIT)
        WebGPU::Direct::Color THIS
        double value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUColor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUColor");
        RETVAL = _find_obj(aTHX_ h, "g", 1, &n->g, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->g, type_sv);
        }
    OUTPUT:
        RETVAL

double
b(THIS, value = NO_INIT)
        WebGPU::Direct::Color THIS
        double value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUColor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUColor");
        RETVAL = _find_obj(aTHX_ h, "b", 1, &n->b, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->b, type_sv);
        }
    OUTPUT:
        RETVAL

double
a(THIS, value = NO_INIT)
        WebGPU::Direct::Color THIS
        double value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUColor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUColor");
        RETVAL = _find_obj(aTHX_ h, "a", 1, &n->a, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->a, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__Color__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CommandBufferDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::CommandBufferDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUCommandBufferDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCommandBufferDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::CommandBufferDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUCommandBufferDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCommandBufferDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__CommandBufferDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CommandEncoderDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::CommandEncoderDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUCommandEncoderDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCommandEncoderDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::CommandEncoderDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUCommandEncoderDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCommandEncoderDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__CommandEncoderDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CompilationMessage	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUCompilationMessage *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
message(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUCompilationMessage *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_obj(aTHX_ h, "message", 7, &n->message, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->message, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUCompilationMessageType
type(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        WGPUCompilationMessageType value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUCompilationMessage *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_obj(aTHX_ h, "type", 4, &n->type, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->type, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
lineNum(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        uint64_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUCompilationMessage *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_obj(aTHX_ h, "lineNum", 7, &n->lineNum, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->lineNum, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
linePos(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        uint64_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUCompilationMessage *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_obj(aTHX_ h, "linePos", 7, &n->linePos, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->linePos, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
offset(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        uint64_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUCompilationMessage *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_obj(aTHX_ h, "offset", 6, &n->offset, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->offset, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
length(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        uint64_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUCompilationMessage *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_obj(aTHX_ h, "length", 6, &n->length, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->length, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
utf16LinePos(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        uint64_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUCompilationMessage *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_obj(aTHX_ h, "utf16LinePos", 12, &n->utf16LinePos, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->utf16LinePos, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
utf16Offset(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        uint64_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUCompilationMessage *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_obj(aTHX_ h, "utf16Offset", 11, &n->utf16Offset, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->utf16Offset, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
utf16Length(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        uint64_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUCompilationMessage *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_obj(aTHX_ h, "utf16Length", 11, &n->utf16Length, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->utf16Length, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__CompilationMessage__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ComputePassTimestampWrite	PREFIX = wgpu

WGPUQuerySet
querySet(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassTimestampWrite THIS
        WGPUQuerySet value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUComputePassTimestampWrite *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePassTimestampWrite");
        RETVAL = _find_obj(aTHX_ h, "querySet", 8, &n->querySet, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->querySet, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
queryIndex(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassTimestampWrite THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUComputePassTimestampWrite *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePassTimestampWrite");
        RETVAL = _find_obj(aTHX_ h, "queryIndex", 10, &n->queryIndex, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->queryIndex, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUComputePassTimestampLocation
location(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassTimestampWrite THIS
        WGPUComputePassTimestampLocation value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUComputePassTimestampWrite *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePassTimestampWrite");
        RETVAL = _find_obj(aTHX_ h, "location", 8, &n->location, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->location, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ComputePassTimestampWrite__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ConstantEntry	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ConstantEntry THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUConstantEntry *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUConstantEntry");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
key(THIS, value = NO_INIT)
        WebGPU::Direct::ConstantEntry THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUConstantEntry *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUConstantEntry");
        RETVAL = _find_obj(aTHX_ h, "key", 3, &n->key, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->key, type_sv);
        }
    OUTPUT:
        RETVAL

double
value(THIS, value = NO_INIT)
        WebGPU::Direct::ConstantEntry THIS
        double value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUConstantEntry *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUConstantEntry");
        RETVAL = _find_obj(aTHX_ h, "value", 5, &n->value, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->value, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ConstantEntry__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Extent3D	PREFIX = wgpu

uint32_t
width(THIS, value = NO_INIT)
        WebGPU::Direct::Extent3D THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUExtent3D *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUExtent3D");
        RETVAL = _find_obj(aTHX_ h, "width", 5, &n->width, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->width, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
height(THIS, value = NO_INIT)
        WebGPU::Direct::Extent3D THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUExtent3D *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUExtent3D");
        RETVAL = _find_obj(aTHX_ h, "height", 6, &n->height, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->height, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
depthOrArrayLayers(THIS, value = NO_INIT)
        WebGPU::Direct::Extent3D THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUExtent3D *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUExtent3D");
        RETVAL = _find_obj(aTHX_ h, "depthOrArrayLayers", 18, &n->depthOrArrayLayers, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->depthOrArrayLayers, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__Extent3D__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::InstanceDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::InstanceDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUInstanceDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUInstanceDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__InstanceDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Limits	PREFIX = wgpu

uint32_t
maxTextureDimension1D(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxTextureDimension1D", 21, &n->maxTextureDimension1D, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxTextureDimension1D, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxTextureDimension2D(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxTextureDimension2D", 21, &n->maxTextureDimension2D, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxTextureDimension2D, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxTextureDimension3D(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxTextureDimension3D", 21, &n->maxTextureDimension3D, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxTextureDimension3D, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxTextureArrayLayers(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxTextureArrayLayers", 21, &n->maxTextureArrayLayers, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxTextureArrayLayers, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxBindGroups(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxBindGroups", 13, &n->maxBindGroups, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxBindGroups, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxBindingsPerBindGroup(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxBindingsPerBindGroup", 23, &n->maxBindingsPerBindGroup, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxBindingsPerBindGroup, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxDynamicUniformBuffersPerPipelineLayout(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxDynamicUniformBuffersPerPipelineLayout", 41, &n->maxDynamicUniformBuffersPerPipelineLayout, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxDynamicUniformBuffersPerPipelineLayout, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxDynamicStorageBuffersPerPipelineLayout(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxDynamicStorageBuffersPerPipelineLayout", 41, &n->maxDynamicStorageBuffersPerPipelineLayout, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxDynamicStorageBuffersPerPipelineLayout, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxSampledTexturesPerShaderStage(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxSampledTexturesPerShaderStage", 32, &n->maxSampledTexturesPerShaderStage, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxSampledTexturesPerShaderStage, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxSamplersPerShaderStage(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxSamplersPerShaderStage", 25, &n->maxSamplersPerShaderStage, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxSamplersPerShaderStage, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxStorageBuffersPerShaderStage(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxStorageBuffersPerShaderStage", 31, &n->maxStorageBuffersPerShaderStage, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxStorageBuffersPerShaderStage, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxStorageTexturesPerShaderStage(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxStorageTexturesPerShaderStage", 32, &n->maxStorageTexturesPerShaderStage, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxStorageTexturesPerShaderStage, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxUniformBuffersPerShaderStage(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxUniformBuffersPerShaderStage", 31, &n->maxUniformBuffersPerShaderStage, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxUniformBuffersPerShaderStage, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
maxUniformBufferBindingSize(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint64_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxUniformBufferBindingSize", 27, &n->maxUniformBufferBindingSize, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxUniformBufferBindingSize, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
maxStorageBufferBindingSize(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint64_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxStorageBufferBindingSize", 27, &n->maxStorageBufferBindingSize, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxStorageBufferBindingSize, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
minUniformBufferOffsetAlignment(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "minUniformBufferOffsetAlignment", 31, &n->minUniformBufferOffsetAlignment, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->minUniformBufferOffsetAlignment, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
minStorageBufferOffsetAlignment(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "minStorageBufferOffsetAlignment", 31, &n->minStorageBufferOffsetAlignment, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->minStorageBufferOffsetAlignment, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxVertexBuffers(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxVertexBuffers", 16, &n->maxVertexBuffers, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxVertexBuffers, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
maxBufferSize(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint64_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxBufferSize", 13, &n->maxBufferSize, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxBufferSize, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxVertexAttributes(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxVertexAttributes", 19, &n->maxVertexAttributes, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxVertexAttributes, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxVertexBufferArrayStride(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxVertexBufferArrayStride", 26, &n->maxVertexBufferArrayStride, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxVertexBufferArrayStride, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxInterStageShaderComponents(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxInterStageShaderComponents", 29, &n->maxInterStageShaderComponents, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxInterStageShaderComponents, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxInterStageShaderVariables(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxInterStageShaderVariables", 28, &n->maxInterStageShaderVariables, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxInterStageShaderVariables, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxColorAttachments(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxColorAttachments", 19, &n->maxColorAttachments, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxColorAttachments, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxColorAttachmentBytesPerSample(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxColorAttachmentBytesPerSample", 32, &n->maxColorAttachmentBytesPerSample, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxColorAttachmentBytesPerSample, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxComputeWorkgroupStorageSize(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxComputeWorkgroupStorageSize", 30, &n->maxComputeWorkgroupStorageSize, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxComputeWorkgroupStorageSize, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxComputeInvocationsPerWorkgroup(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxComputeInvocationsPerWorkgroup", 33, &n->maxComputeInvocationsPerWorkgroup, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxComputeInvocationsPerWorkgroup, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxComputeWorkgroupSizeX(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxComputeWorkgroupSizeX", 24, &n->maxComputeWorkgroupSizeX, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxComputeWorkgroupSizeX, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxComputeWorkgroupSizeY(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxComputeWorkgroupSizeY", 24, &n->maxComputeWorkgroupSizeY, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxComputeWorkgroupSizeY, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxComputeWorkgroupSizeZ(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxComputeWorkgroupSizeZ", 24, &n->maxComputeWorkgroupSizeZ, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxComputeWorkgroupSizeZ, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
maxComputeWorkgroupsPerDimension(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPULimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_obj(aTHX_ h, "maxComputeWorkgroupsPerDimension", 32, &n->maxComputeWorkgroupsPerDimension, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxComputeWorkgroupsPerDimension, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__Limits__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::MultisampleState	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::MultisampleState THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUMultisampleState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUMultisampleState");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
count(THIS, value = NO_INIT)
        WebGPU::Direct::MultisampleState THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUMultisampleState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUMultisampleState");
        RETVAL = _find_obj(aTHX_ h, "count", 5, &n->count, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->count, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
mask(THIS, value = NO_INIT)
        WebGPU::Direct::MultisampleState THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUMultisampleState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUMultisampleState");
        RETVAL = _find_obj(aTHX_ h, "mask", 4, &n->mask, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->mask, type_sv);
        }
    OUTPUT:
        RETVAL

bool
alphaToCoverageEnabled(THIS, value = NO_INIT)
        WebGPU::Direct::MultisampleState THIS
        bool value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUMultisampleState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUMultisampleState");
        RETVAL = _find_obj(aTHX_ h, "alphaToCoverageEnabled", 22, &n->alphaToCoverageEnabled, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->alphaToCoverageEnabled, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__MultisampleState__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Origin3D	PREFIX = wgpu

uint32_t
x(THIS, value = NO_INIT)
        WebGPU::Direct::Origin3D THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUOrigin3D *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUOrigin3D");
        RETVAL = _find_obj(aTHX_ h, "x", 1, &n->x, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->x, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
y(THIS, value = NO_INIT)
        WebGPU::Direct::Origin3D THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUOrigin3D *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUOrigin3D");
        RETVAL = _find_obj(aTHX_ h, "y", 1, &n->y, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->y, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
z(THIS, value = NO_INIT)
        WebGPU::Direct::Origin3D THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUOrigin3D *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUOrigin3D");
        RETVAL = _find_obj(aTHX_ h, "z", 1, &n->z, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->z, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__Origin3D__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::PipelineLayoutDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::PipelineLayoutDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUPipelineLayoutDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPipelineLayoutDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::PipelineLayoutDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUPipelineLayoutDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPipelineLayoutDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
bindGroupLayoutCount(THIS, value = NO_INIT)
        WebGPU::Direct::PipelineLayoutDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUPipelineLayoutDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPipelineLayoutDescriptor");
        RETVAL = _find_obj(aTHX_ h, "bindGroupLayoutCount", 20, &n->bindGroupLayoutCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->bindGroupLayoutCount, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUBindGroupLayout
bindGroupLayouts(THIS, value = NO_INIT)
        WebGPU::Direct::PipelineLayoutDescriptor THIS
        WGPUBindGroupLayout value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUPipelineLayoutDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPipelineLayoutDescriptor");
        RETVAL = _find_obj(aTHX_ h, "bindGroupLayouts", 16, &n->bindGroupLayouts, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->bindGroupLayouts, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__PipelineLayoutDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::PrimitiveDepthClipControl	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveDepthClipControl THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUPrimitiveDepthClipControl *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPrimitiveDepthClipControl");
        RETVAL = _find_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

bool
unclippedDepth(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveDepthClipControl THIS
        bool value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUPrimitiveDepthClipControl *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPrimitiveDepthClipControl");
        RETVAL = _find_obj(aTHX_ h, "unclippedDepth", 14, &n->unclippedDepth, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->unclippedDepth, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__PrimitiveDepthClipControl__pack( SV *THIS );
        obj__pack( SV *THIS );



MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::PrimitiveState	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveState THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUPrimitiveState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPrimitiveState");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUPrimitiveTopology
topology(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveState THIS
        WGPUPrimitiveTopology value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUPrimitiveState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPrimitiveState");
        RETVAL = _find_obj(aTHX_ h, "topology", 8, &n->topology, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->topology, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUIndexFormat
stripIndexFormat(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveState THIS
        WGPUIndexFormat value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUPrimitiveState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPrimitiveState");
        RETVAL = _find_obj(aTHX_ h, "stripIndexFormat", 16, &n->stripIndexFormat, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->stripIndexFormat, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUFrontFace
frontFace(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveState THIS
        WGPUFrontFace value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUPrimitiveState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPrimitiveState");
        RETVAL = _find_obj(aTHX_ h, "frontFace", 9, &n->frontFace, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->frontFace, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUCullMode
cullMode(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveState THIS
        WGPUCullMode value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUPrimitiveState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPrimitiveState");
        RETVAL = _find_obj(aTHX_ h, "cullMode", 8, &n->cullMode, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->cullMode, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__PrimitiveState__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::QuerySetDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::QuerySetDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUQuerySetDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUQuerySetDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::QuerySetDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUQuerySetDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUQuerySetDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUQueryType
type(THIS, value = NO_INIT)
        WebGPU::Direct::QuerySetDescriptor THIS
        WGPUQueryType value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUQuerySetDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUQuerySetDescriptor");
        RETVAL = _find_obj(aTHX_ h, "type", 4, &n->type, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->type, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
count(THIS, value = NO_INIT)
        WebGPU::Direct::QuerySetDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUQuerySetDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUQuerySetDescriptor");
        RETVAL = _find_obj(aTHX_ h, "count", 5, &n->count, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->count, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUPipelineStatisticName
pipelineStatistics(THIS, value = NO_INIT)
        WebGPU::Direct::QuerySetDescriptor THIS
        WGPUPipelineStatisticName value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUQuerySetDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUQuerySetDescriptor");
        RETVAL = _find_obj(aTHX_ h, "pipelineStatistics", 18, &n->pipelineStatistics, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->pipelineStatistics, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
pipelineStatisticsCount(THIS, value = NO_INIT)
        WebGPU::Direct::QuerySetDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUQuerySetDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUQuerySetDescriptor");
        RETVAL = _find_obj(aTHX_ h, "pipelineStatisticsCount", 23, &n->pipelineStatisticsCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->pipelineStatisticsCount, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__QuerySetDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::QueueDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::QueueDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUQueueDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUQueueDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::QueueDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUQueueDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUQueueDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__QueueDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderBundleDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderBundleDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderBundleDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderBundleDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderBundleEncoderDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleEncoderDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleEncoderDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
colorFormatsCount(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleEncoderDescriptor");
        RETVAL = _find_obj(aTHX_ h, "colorFormatsCount", 17, &n->colorFormatsCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->colorFormatsCount, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
colorFormats(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        WGPUTextureFormat value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleEncoderDescriptor");
        RETVAL = _find_obj(aTHX_ h, "colorFormats", 12, &n->colorFormats, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->colorFormats, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
depthStencilFormat(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        WGPUTextureFormat value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleEncoderDescriptor");
        RETVAL = _find_obj(aTHX_ h, "depthStencilFormat", 18, &n->depthStencilFormat, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->depthStencilFormat, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
sampleCount(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleEncoderDescriptor");
        RETVAL = _find_obj(aTHX_ h, "sampleCount", 11, &n->sampleCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->sampleCount, type_sv);
        }
    OUTPUT:
        RETVAL

bool
depthReadOnly(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        bool value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleEncoderDescriptor");
        RETVAL = _find_obj(aTHX_ h, "depthReadOnly", 13, &n->depthReadOnly, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->depthReadOnly, type_sv);
        }
    OUTPUT:
        RETVAL

bool
stencilReadOnly(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        bool value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleEncoderDescriptor");
        RETVAL = _find_obj(aTHX_ h, "stencilReadOnly", 15, &n->stencilReadOnly, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->stencilReadOnly, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderBundleEncoderDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPassDepthStencilAttachment	PREFIX = wgpu

WGPUTextureView
view(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        WGPUTextureView value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDepthStencilAttachment");
        RETVAL = _find_obj(aTHX_ h, "view", 4, &n->view, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->view, type_sv);
        }
    OUTPUT:
        RETVAL

WGPULoadOp
depthLoadOp(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        WGPULoadOp value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDepthStencilAttachment");
        RETVAL = _find_obj(aTHX_ h, "depthLoadOp", 11, &n->depthLoadOp, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->depthLoadOp, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUStoreOp
depthStoreOp(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        WGPUStoreOp value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDepthStencilAttachment");
        RETVAL = _find_obj(aTHX_ h, "depthStoreOp", 12, &n->depthStoreOp, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->depthStoreOp, type_sv);
        }
    OUTPUT:
        RETVAL

float
depthClearValue(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        float value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDepthStencilAttachment");
        RETVAL = _find_obj(aTHX_ h, "depthClearValue", 15, &n->depthClearValue, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->depthClearValue, type_sv);
        }
    OUTPUT:
        RETVAL

bool
depthReadOnly(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        bool value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDepthStencilAttachment");
        RETVAL = _find_obj(aTHX_ h, "depthReadOnly", 13, &n->depthReadOnly, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->depthReadOnly, type_sv);
        }
    OUTPUT:
        RETVAL

WGPULoadOp
stencilLoadOp(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        WGPULoadOp value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDepthStencilAttachment");
        RETVAL = _find_obj(aTHX_ h, "stencilLoadOp", 13, &n->stencilLoadOp, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->stencilLoadOp, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUStoreOp
stencilStoreOp(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        WGPUStoreOp value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDepthStencilAttachment");
        RETVAL = _find_obj(aTHX_ h, "stencilStoreOp", 14, &n->stencilStoreOp, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->stencilStoreOp, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
stencilClearValue(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDepthStencilAttachment");
        RETVAL = _find_obj(aTHX_ h, "stencilClearValue", 17, &n->stencilClearValue, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->stencilClearValue, type_sv);
        }
    OUTPUT:
        RETVAL

bool
stencilReadOnly(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        bool value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDepthStencilAttachment");
        RETVAL = _find_obj(aTHX_ h, "stencilReadOnly", 15, &n->stencilReadOnly, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->stencilReadOnly, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassDepthStencilAttachment__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPassDescriptorMaxDrawCount	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptorMaxDrawCount THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassDescriptorMaxDrawCount *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptorMaxDrawCount");
        RETVAL = _find_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
maxDrawCount(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptorMaxDrawCount THIS
        uint64_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassDescriptorMaxDrawCount *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptorMaxDrawCount");
        RETVAL = _find_obj(aTHX_ h, "maxDrawCount", 12, &n->maxDrawCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxDrawCount, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassDescriptorMaxDrawCount__pack( SV *THIS );
        obj__pack( SV *THIS );



MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPassTimestampWrite	PREFIX = wgpu

WGPUQuerySet
querySet(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassTimestampWrite THIS
        WGPUQuerySet value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassTimestampWrite *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassTimestampWrite");
        RETVAL = _find_obj(aTHX_ h, "querySet", 8, &n->querySet, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->querySet, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
queryIndex(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassTimestampWrite THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassTimestampWrite *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassTimestampWrite");
        RETVAL = _find_obj(aTHX_ h, "queryIndex", 10, &n->queryIndex, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->queryIndex, type_sv);
        }
    OUTPUT:
        RETVAL

WGPURenderPassTimestampLocation
location(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassTimestampWrite THIS
        WGPURenderPassTimestampLocation value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassTimestampWrite *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassTimestampWrite");
        RETVAL = _find_obj(aTHX_ h, "location", 8, &n->location, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->location, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassTimestampWrite__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RequestAdapterOptions	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::RequestAdapterOptions THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURequestAdapterOptions *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURequestAdapterOptions");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUSurface
compatibleSurface(THIS, value = NO_INIT)
        WebGPU::Direct::RequestAdapterOptions THIS
        WGPUSurface value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURequestAdapterOptions *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURequestAdapterOptions");
        RETVAL = _find_obj(aTHX_ h, "compatibleSurface", 17, &n->compatibleSurface, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->compatibleSurface, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUPowerPreference
powerPreference(THIS, value = NO_INIT)
        WebGPU::Direct::RequestAdapterOptions THIS
        WGPUPowerPreference value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURequestAdapterOptions *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURequestAdapterOptions");
        RETVAL = _find_obj(aTHX_ h, "powerPreference", 15, &n->powerPreference, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->powerPreference, type_sv);
        }
    OUTPUT:
        RETVAL

bool
forceFallbackAdapter(THIS, value = NO_INIT)
        WebGPU::Direct::RequestAdapterOptions THIS
        bool value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURequestAdapterOptions *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURequestAdapterOptions");
        RETVAL = _find_obj(aTHX_ h, "forceFallbackAdapter", 20, &n->forceFallbackAdapter, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->forceFallbackAdapter, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RequestAdapterOptions__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SamplerBindingLayout	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerBindingLayout THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSamplerBindingLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerBindingLayout");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUSamplerBindingType
type(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerBindingLayout THIS
        WGPUSamplerBindingType value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSamplerBindingLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerBindingLayout");
        RETVAL = _find_obj(aTHX_ h, "type", 4, &n->type, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->type, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SamplerBindingLayout__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SamplerDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSamplerDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSamplerDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUAddressMode
addressModeU(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        WGPUAddressMode value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSamplerDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_obj(aTHX_ h, "addressModeU", 12, &n->addressModeU, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->addressModeU, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUAddressMode
addressModeV(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        WGPUAddressMode value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSamplerDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_obj(aTHX_ h, "addressModeV", 12, &n->addressModeV, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->addressModeV, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUAddressMode
addressModeW(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        WGPUAddressMode value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSamplerDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_obj(aTHX_ h, "addressModeW", 12, &n->addressModeW, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->addressModeW, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUFilterMode
magFilter(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        WGPUFilterMode value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSamplerDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_obj(aTHX_ h, "magFilter", 9, &n->magFilter, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->magFilter, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUFilterMode
minFilter(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        WGPUFilterMode value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSamplerDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_obj(aTHX_ h, "minFilter", 9, &n->minFilter, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->minFilter, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUMipmapFilterMode
mipmapFilter(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        WGPUMipmapFilterMode value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSamplerDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_obj(aTHX_ h, "mipmapFilter", 12, &n->mipmapFilter, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->mipmapFilter, type_sv);
        }
    OUTPUT:
        RETVAL

float
lodMinClamp(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        float value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSamplerDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_obj(aTHX_ h, "lodMinClamp", 11, &n->lodMinClamp, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->lodMinClamp, type_sv);
        }
    OUTPUT:
        RETVAL

float
lodMaxClamp(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        float value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSamplerDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_obj(aTHX_ h, "lodMaxClamp", 11, &n->lodMaxClamp, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->lodMaxClamp, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUCompareFunction
compare(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        WGPUCompareFunction value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSamplerDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_obj(aTHX_ h, "compare", 7, &n->compare, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->compare, type_sv);
        }
    OUTPUT:
        RETVAL

uint16_t
maxAnisotropy(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        uint16_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSamplerDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_obj(aTHX_ h, "maxAnisotropy", 13, &n->maxAnisotropy, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->maxAnisotropy, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SamplerDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ShaderModuleCompilationHint	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleCompilationHint THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUShaderModuleCompilationHint *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleCompilationHint");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
entryPoint(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleCompilationHint THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUShaderModuleCompilationHint *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleCompilationHint");
        RETVAL = _find_obj(aTHX_ h, "entryPoint", 10, &n->entryPoint, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->entryPoint, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUPipelineLayout
layout(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleCompilationHint THIS
        WGPUPipelineLayout value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUShaderModuleCompilationHint *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleCompilationHint");
        RETVAL = _find_obj(aTHX_ h, "layout", 6, &n->layout, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->layout, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ShaderModuleCompilationHint__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ShaderModuleSPIRVDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleSPIRVDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUShaderModuleSPIRVDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleSPIRVDescriptor");
        RETVAL = _find_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
codeSize(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleSPIRVDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUShaderModuleSPIRVDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleSPIRVDescriptor");
        RETVAL = _find_obj(aTHX_ h, "codeSize", 8, &n->codeSize, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->codeSize, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
code(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleSPIRVDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUShaderModuleSPIRVDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleSPIRVDescriptor");
        RETVAL = _find_obj(aTHX_ h, "code", 4, &n->code, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->code, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ShaderModuleSPIRVDescriptor__pack( SV *THIS );
        obj__pack( SV *THIS );



MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ShaderModuleWGSLDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleWGSLDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUShaderModuleWGSLDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleWGSLDescriptor");
        RETVAL = _find_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

char
code(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleWGSLDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUShaderModuleWGSLDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleWGSLDescriptor");
        RETVAL = _find_obj(aTHX_ h, "code", 4, &n->code, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->code, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ShaderModuleWGSLDescriptor__pack( SV *THIS );
        obj__pack( SV *THIS );



MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::StencilFaceState	PREFIX = wgpu

WGPUCompareFunction
compare(THIS, value = NO_INIT)
        WebGPU::Direct::StencilFaceState THIS
        WGPUCompareFunction value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUStencilFaceState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUStencilFaceState");
        RETVAL = _find_obj(aTHX_ h, "compare", 7, &n->compare, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->compare, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUStencilOperation
failOp(THIS, value = NO_INIT)
        WebGPU::Direct::StencilFaceState THIS
        WGPUStencilOperation value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUStencilFaceState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUStencilFaceState");
        RETVAL = _find_obj(aTHX_ h, "failOp", 6, &n->failOp, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->failOp, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUStencilOperation
depthFailOp(THIS, value = NO_INIT)
        WebGPU::Direct::StencilFaceState THIS
        WGPUStencilOperation value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUStencilFaceState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUStencilFaceState");
        RETVAL = _find_obj(aTHX_ h, "depthFailOp", 11, &n->depthFailOp, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->depthFailOp, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUStencilOperation
passOp(THIS, value = NO_INIT)
        WebGPU::Direct::StencilFaceState THIS
        WGPUStencilOperation value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUStencilFaceState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUStencilFaceState");
        RETVAL = _find_obj(aTHX_ h, "passOp", 6, &n->passOp, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->passOp, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__StencilFaceState__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::StorageTextureBindingLayout	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::StorageTextureBindingLayout THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUStorageTextureBindingLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUStorageTextureBindingLayout");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUStorageTextureAccess
access(THIS, value = NO_INIT)
        WebGPU::Direct::StorageTextureBindingLayout THIS
        WGPUStorageTextureAccess value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUStorageTextureBindingLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUStorageTextureBindingLayout");
        RETVAL = _find_obj(aTHX_ h, "access", 6, &n->access, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->access, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::StorageTextureBindingLayout THIS
        WGPUTextureFormat value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUStorageTextureBindingLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUStorageTextureBindingLayout");
        RETVAL = _find_obj(aTHX_ h, "format", 6, &n->format, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->format, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureViewDimension
viewDimension(THIS, value = NO_INIT)
        WebGPU::Direct::StorageTextureBindingLayout THIS
        WGPUTextureViewDimension value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUStorageTextureBindingLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUStorageTextureBindingLayout");
        RETVAL = _find_obj(aTHX_ h, "viewDimension", 13, &n->viewDimension, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->viewDimension, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__StorageTextureBindingLayout__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptorFromAndroidNativeWindow *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromAndroidNativeWindow");
        RETVAL = _find_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

void
window(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow THIS
        void value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptorFromAndroidNativeWindow *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromAndroidNativeWindow");
        RETVAL = _find_obj(aTHX_ h, "window", 6, &n->window, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->window, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromAndroidNativeWindow__pack( SV *THIS );
        obj__pack( SV *THIS );



MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptorFromCanvasHTMLSelector *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromCanvasHTMLSelector");
        RETVAL = _find_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

char
selector(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptorFromCanvasHTMLSelector *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromCanvasHTMLSelector");
        RETVAL = _find_obj(aTHX_ h, "selector", 8, &n->selector, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->selector, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromCanvasHTMLSelector__pack( SV *THIS );
        obj__pack( SV *THIS );



MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromMetalLayer	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromMetalLayer THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptorFromMetalLayer *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromMetalLayer");
        RETVAL = _find_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

void
layer(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromMetalLayer THIS
        void value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptorFromMetalLayer *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromMetalLayer");
        RETVAL = _find_obj(aTHX_ h, "layer", 5, &n->layer, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->layer, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromMetalLayer__pack( SV *THIS );
        obj__pack( SV *THIS );



MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromWaylandSurface	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromWaylandSurface THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptorFromWaylandSurface *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromWaylandSurface");
        RETVAL = _find_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

void
display(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromWaylandSurface THIS
        void value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptorFromWaylandSurface *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromWaylandSurface");
        RETVAL = _find_obj(aTHX_ h, "display", 7, &n->display, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->display, type_sv);
        }
    OUTPUT:
        RETVAL

void
surface(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromWaylandSurface THIS
        void value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptorFromWaylandSurface *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromWaylandSurface");
        RETVAL = _find_obj(aTHX_ h, "surface", 7, &n->surface, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->surface, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromWaylandSurface__pack( SV *THIS );
        obj__pack( SV *THIS );



MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromWindowsHWND	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromWindowsHWND THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptorFromWindowsHWND *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromWindowsHWND");
        RETVAL = _find_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

void
hinstance(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromWindowsHWND THIS
        void value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptorFromWindowsHWND *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromWindowsHWND");
        RETVAL = _find_obj(aTHX_ h, "hinstance", 9, &n->hinstance, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->hinstance, type_sv);
        }
    OUTPUT:
        RETVAL

void
hwnd(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromWindowsHWND THIS
        void value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptorFromWindowsHWND *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromWindowsHWND");
        RETVAL = _find_obj(aTHX_ h, "hwnd", 4, &n->hwnd, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->hwnd, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromWindowsHWND__pack( SV *THIS );
        obj__pack( SV *THIS );



MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromXcbWindow	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromXcbWindow THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptorFromXcbWindow *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromXcbWindow");
        RETVAL = _find_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

void
connection(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromXcbWindow THIS
        void value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptorFromXcbWindow *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromXcbWindow");
        RETVAL = _find_obj(aTHX_ h, "connection", 10, &n->connection, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->connection, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
window(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromXcbWindow THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptorFromXcbWindow *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromXcbWindow");
        RETVAL = _find_obj(aTHX_ h, "window", 6, &n->window, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->window, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromXcbWindow__pack( SV *THIS );
        obj__pack( SV *THIS );



MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromXlibWindow	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromXlibWindow THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptorFromXlibWindow *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromXlibWindow");
        RETVAL = _find_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

void
display(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromXlibWindow THIS
        void value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptorFromXlibWindow *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromXlibWindow");
        RETVAL = _find_obj(aTHX_ h, "display", 7, &n->display, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->display, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
window(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromXlibWindow THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSurfaceDescriptorFromXlibWindow *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromXlibWindow");
        RETVAL = _find_obj(aTHX_ h, "window", 6, &n->window, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->window, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromXlibWindow__pack( SV *THIS );
        obj__pack( SV *THIS );



MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SwapChainDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSwapChainDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSwapChainDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSwapChainDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSwapChainDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureUsageFlags
usage(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        WGPUTextureUsageFlags value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSwapChainDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSwapChainDescriptor");
        RETVAL = _find_obj(aTHX_ h, "usage", 5, &n->usage, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->usage, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        WGPUTextureFormat value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSwapChainDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSwapChainDescriptor");
        RETVAL = _find_obj(aTHX_ h, "format", 6, &n->format, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->format, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
width(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSwapChainDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSwapChainDescriptor");
        RETVAL = _find_obj(aTHX_ h, "width", 5, &n->width, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->width, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
height(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSwapChainDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSwapChainDescriptor");
        RETVAL = _find_obj(aTHX_ h, "height", 6, &n->height, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->height, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUPresentMode
presentMode(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        WGPUPresentMode value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSwapChainDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSwapChainDescriptor");
        RETVAL = _find_obj(aTHX_ h, "presentMode", 11, &n->presentMode, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->presentMode, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SwapChainDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::TextureBindingLayout	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::TextureBindingLayout THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureBindingLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureBindingLayout");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureSampleType
sampleType(THIS, value = NO_INIT)
        WebGPU::Direct::TextureBindingLayout THIS
        WGPUTextureSampleType value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureBindingLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureBindingLayout");
        RETVAL = _find_obj(aTHX_ h, "sampleType", 10, &n->sampleType, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->sampleType, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureViewDimension
viewDimension(THIS, value = NO_INIT)
        WebGPU::Direct::TextureBindingLayout THIS
        WGPUTextureViewDimension value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureBindingLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureBindingLayout");
        RETVAL = _find_obj(aTHX_ h, "viewDimension", 13, &n->viewDimension, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->viewDimension, type_sv);
        }
    OUTPUT:
        RETVAL

bool
multisampled(THIS, value = NO_INIT)
        WebGPU::Direct::TextureBindingLayout THIS
        bool value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureBindingLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureBindingLayout");
        RETVAL = _find_obj(aTHX_ h, "multisampled", 12, &n->multisampled, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->multisampled, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__TextureBindingLayout__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::TextureDataLayout	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDataLayout THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureDataLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDataLayout");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
offset(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDataLayout THIS
        uint64_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureDataLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDataLayout");
        RETVAL = _find_obj(aTHX_ h, "offset", 6, &n->offset, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->offset, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
bytesPerRow(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDataLayout THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureDataLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDataLayout");
        RETVAL = _find_obj(aTHX_ h, "bytesPerRow", 11, &n->bytesPerRow, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->bytesPerRow, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
rowsPerImage(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDataLayout THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureDataLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDataLayout");
        RETVAL = _find_obj(aTHX_ h, "rowsPerImage", 12, &n->rowsPerImage, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->rowsPerImage, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__TextureDataLayout__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::TextureViewDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureViewDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureViewDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureViewDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureViewDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        WGPUTextureFormat value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureViewDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureViewDescriptor");
        RETVAL = _find_obj(aTHX_ h, "format", 6, &n->format, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->format, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureViewDimension
dimension(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        WGPUTextureViewDimension value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureViewDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureViewDescriptor");
        RETVAL = _find_obj(aTHX_ h, "dimension", 9, &n->dimension, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->dimension, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
baseMipLevel(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureViewDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureViewDescriptor");
        RETVAL = _find_obj(aTHX_ h, "baseMipLevel", 12, &n->baseMipLevel, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->baseMipLevel, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
mipLevelCount(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureViewDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureViewDescriptor");
        RETVAL = _find_obj(aTHX_ h, "mipLevelCount", 13, &n->mipLevelCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->mipLevelCount, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
baseArrayLayer(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureViewDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureViewDescriptor");
        RETVAL = _find_obj(aTHX_ h, "baseArrayLayer", 14, &n->baseArrayLayer, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->baseArrayLayer, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
arrayLayerCount(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureViewDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureViewDescriptor");
        RETVAL = _find_obj(aTHX_ h, "arrayLayerCount", 15, &n->arrayLayerCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->arrayLayerCount, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureAspect
aspect(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        WGPUTextureAspect value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureViewDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureViewDescriptor");
        RETVAL = _find_obj(aTHX_ h, "aspect", 6, &n->aspect, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->aspect, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__TextureViewDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::VertexAttribute	PREFIX = wgpu

WGPUVertexFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::VertexAttribute THIS
        WGPUVertexFormat value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUVertexAttribute *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexAttribute");
        RETVAL = _find_obj(aTHX_ h, "format", 6, &n->format, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->format, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
offset(THIS, value = NO_INIT)
        WebGPU::Direct::VertexAttribute THIS
        uint64_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUVertexAttribute *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexAttribute");
        RETVAL = _find_obj(aTHX_ h, "offset", 6, &n->offset, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->offset, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
shaderLocation(THIS, value = NO_INIT)
        WebGPU::Direct::VertexAttribute THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUVertexAttribute *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexAttribute");
        RETVAL = _find_obj(aTHX_ h, "shaderLocation", 14, &n->shaderLocation, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->shaderLocation, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__VertexAttribute__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroupDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUBindGroupLayout
layout(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupDescriptor THIS
        WGPUBindGroupLayout value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupDescriptor");
        RETVAL = _find_obj(aTHX_ h, "layout", 6, &n->layout, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->layout, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
entryCount(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupDescriptor");
        RETVAL = _find_obj(aTHX_ h, "entryCount", 10, &n->entryCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->entryCount, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::BindGroupEntry
entries(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupDescriptor THIS
        WebGPU::Direct::BindGroupEntry value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupDescriptor");
        RETVAL = _find_obj(aTHX_ h, "entries", 7, &n->entries, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->entries, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BindGroupDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroupLayoutEntry	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutEntry THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupLayoutEntry *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutEntry");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
binding(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutEntry THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupLayoutEntry *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutEntry");
        RETVAL = _find_obj(aTHX_ h, "binding", 7, &n->binding, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->binding, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUShaderStageFlags
visibility(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutEntry THIS
        WGPUShaderStageFlags value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupLayoutEntry *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutEntry");
        RETVAL = _find_obj(aTHX_ h, "visibility", 10, &n->visibility, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->visibility, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::BufferBindingLayout
buffer(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutEntry THIS
        WebGPU::Direct::BufferBindingLayout value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupLayoutEntry *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutEntry");
        RETVAL = _find_obj(aTHX_ h, "buffer", 6, &n->buffer, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->buffer, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::SamplerBindingLayout
sampler(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutEntry THIS
        WebGPU::Direct::SamplerBindingLayout value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupLayoutEntry *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutEntry");
        RETVAL = _find_obj(aTHX_ h, "sampler", 7, &n->sampler, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->sampler, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::TextureBindingLayout
texture(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutEntry THIS
        WebGPU::Direct::TextureBindingLayout value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupLayoutEntry *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutEntry");
        RETVAL = _find_obj(aTHX_ h, "texture", 7, &n->texture, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->texture, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::StorageTextureBindingLayout
storageTexture(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutEntry THIS
        WebGPU::Direct::StorageTextureBindingLayout value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupLayoutEntry *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutEntry");
        RETVAL = _find_obj(aTHX_ h, "storageTexture", 14, &n->storageTexture, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->storageTexture, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BindGroupLayoutEntry__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BlendState	PREFIX = wgpu

WebGPU::Direct::BlendComponent
color(THIS, value = NO_INIT)
        WebGPU::Direct::BlendState THIS
        WebGPU::Direct::BlendComponent value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBlendState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBlendState");
        RETVAL = _find_obj(aTHX_ h, "color", 5, &n->color, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->color, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::BlendComponent
alpha(THIS, value = NO_INIT)
        WebGPU::Direct::BlendState THIS
        WebGPU::Direct::BlendComponent value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBlendState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBlendState");
        RETVAL = _find_obj(aTHX_ h, "alpha", 5, &n->alpha, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->alpha, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BlendState__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CompilationInfo	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationInfo THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUCompilationInfo *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationInfo");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
messageCount(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationInfo THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUCompilationInfo *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationInfo");
        RETVAL = _find_obj(aTHX_ h, "messageCount", 12, &n->messageCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->messageCount, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::CompilationMessage
messages(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationInfo THIS
        WebGPU::Direct::CompilationMessage value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUCompilationInfo *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationInfo");
        RETVAL = _find_obj(aTHX_ h, "messages", 8, &n->messages, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->messages, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__CompilationInfo__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ComputePassDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUComputePassDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePassDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUComputePassDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePassDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
timestampWriteCount(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUComputePassDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePassDescriptor");
        RETVAL = _find_obj(aTHX_ h, "timestampWriteCount", 19, &n->timestampWriteCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->timestampWriteCount, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::ComputePassTimestampWrite
timestampWrites(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassDescriptor THIS
        WebGPU::Direct::ComputePassTimestampWrite value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUComputePassDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePassDescriptor");
        RETVAL = _find_obj(aTHX_ h, "timestampWrites", 15, &n->timestampWrites, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->timestampWrites, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ComputePassDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::DepthStencilState	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUDepthStencilState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        WGPUTextureFormat value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUDepthStencilState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_obj(aTHX_ h, "format", 6, &n->format, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->format, type_sv);
        }
    OUTPUT:
        RETVAL

bool
depthWriteEnabled(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        bool value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUDepthStencilState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_obj(aTHX_ h, "depthWriteEnabled", 17, &n->depthWriteEnabled, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->depthWriteEnabled, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUCompareFunction
depthCompare(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        WGPUCompareFunction value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUDepthStencilState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_obj(aTHX_ h, "depthCompare", 12, &n->depthCompare, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->depthCompare, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::StencilFaceState
stencilFront(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        WebGPU::Direct::StencilFaceState value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUDepthStencilState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_obj(aTHX_ h, "stencilFront", 12, &n->stencilFront, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->stencilFront, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::StencilFaceState
stencilBack(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        WebGPU::Direct::StencilFaceState value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUDepthStencilState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_obj(aTHX_ h, "stencilBack", 11, &n->stencilBack, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->stencilBack, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
stencilReadMask(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUDepthStencilState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_obj(aTHX_ h, "stencilReadMask", 15, &n->stencilReadMask, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->stencilReadMask, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
stencilWriteMask(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUDepthStencilState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_obj(aTHX_ h, "stencilWriteMask", 16, &n->stencilWriteMask, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->stencilWriteMask, type_sv);
        }
    OUTPUT:
        RETVAL

int32_t
depthBias(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        int32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUDepthStencilState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_obj(aTHX_ h, "depthBias", 9, &n->depthBias, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->depthBias, type_sv);
        }
    OUTPUT:
        RETVAL

float
depthBiasSlopeScale(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        float value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUDepthStencilState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_obj(aTHX_ h, "depthBiasSlopeScale", 19, &n->depthBiasSlopeScale, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->depthBiasSlopeScale, type_sv);
        }
    OUTPUT:
        RETVAL

float
depthBiasClamp(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        float value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUDepthStencilState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_obj(aTHX_ h, "depthBiasClamp", 14, &n->depthBiasClamp, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->depthBiasClamp, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__DepthStencilState__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ImageCopyBuffer	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyBuffer THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUImageCopyBuffer *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUImageCopyBuffer");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::TextureDataLayout
layout(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyBuffer THIS
        WebGPU::Direct::TextureDataLayout value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUImageCopyBuffer *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUImageCopyBuffer");
        RETVAL = _find_obj(aTHX_ h, "layout", 6, &n->layout, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->layout, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUBuffer
buffer(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyBuffer THIS
        WGPUBuffer value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUImageCopyBuffer *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUImageCopyBuffer");
        RETVAL = _find_obj(aTHX_ h, "buffer", 6, &n->buffer, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->buffer, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ImageCopyBuffer__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ImageCopyTexture	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyTexture THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUImageCopyTexture *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUImageCopyTexture");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTexture
texture(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyTexture THIS
        WGPUTexture value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUImageCopyTexture *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUImageCopyTexture");
        RETVAL = _find_obj(aTHX_ h, "texture", 7, &n->texture, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->texture, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
mipLevel(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyTexture THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUImageCopyTexture *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUImageCopyTexture");
        RETVAL = _find_obj(aTHX_ h, "mipLevel", 8, &n->mipLevel, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->mipLevel, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::Origin3D
origin(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyTexture THIS
        WebGPU::Direct::Origin3D value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUImageCopyTexture *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUImageCopyTexture");
        RETVAL = _find_obj(aTHX_ h, "origin", 6, &n->origin, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->origin, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureAspect
aspect(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyTexture THIS
        WGPUTextureAspect value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUImageCopyTexture *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUImageCopyTexture");
        RETVAL = _find_obj(aTHX_ h, "aspect", 6, &n->aspect, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->aspect, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ImageCopyTexture__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ProgrammableStageDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ProgrammableStageDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUProgrammableStageDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUProgrammableStageDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUShaderModule
module(THIS, value = NO_INIT)
        WebGPU::Direct::ProgrammableStageDescriptor THIS
        WGPUShaderModule value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUProgrammableStageDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUProgrammableStageDescriptor");
        RETVAL = _find_obj(aTHX_ h, "module", 6, &n->module, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->module, type_sv);
        }
    OUTPUT:
        RETVAL

char
entryPoint(THIS, value = NO_INIT)
        WebGPU::Direct::ProgrammableStageDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUProgrammableStageDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUProgrammableStageDescriptor");
        RETVAL = _find_obj(aTHX_ h, "entryPoint", 10, &n->entryPoint, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->entryPoint, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
antCount(THIS, value = NO_INIT)
        WebGPU::Direct::ProgrammableStageDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUProgrammableStageDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUProgrammableStageDescriptor");
        RETVAL = _find_obj(aTHX_ h, "antCount", 8, &n->antCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->antCount, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::ConstantEntry
constants(THIS, value = NO_INIT)
        WebGPU::Direct::ProgrammableStageDescriptor THIS
        WebGPU::Direct::ConstantEntry value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUProgrammableStageDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUProgrammableStageDescriptor");
        RETVAL = _find_obj(aTHX_ h, "constants", 9, &n->constants, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->constants, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ProgrammableStageDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPassColorAttachment	PREFIX = wgpu

WGPUTextureView
view(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassColorAttachment THIS
        WGPUTextureView value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassColorAttachment *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassColorAttachment");
        RETVAL = _find_obj(aTHX_ h, "view", 4, &n->view, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->view, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureView
resolveTarget(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassColorAttachment THIS
        WGPUTextureView value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassColorAttachment *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassColorAttachment");
        RETVAL = _find_obj(aTHX_ h, "resolveTarget", 13, &n->resolveTarget, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->resolveTarget, type_sv);
        }
    OUTPUT:
        RETVAL

WGPULoadOp
loadOp(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassColorAttachment THIS
        WGPULoadOp value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassColorAttachment *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassColorAttachment");
        RETVAL = _find_obj(aTHX_ h, "loadOp", 6, &n->loadOp, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->loadOp, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUStoreOp
storeOp(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassColorAttachment THIS
        WGPUStoreOp value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassColorAttachment *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassColorAttachment");
        RETVAL = _find_obj(aTHX_ h, "storeOp", 7, &n->storeOp, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->storeOp, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::Color
clearValue(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassColorAttachment THIS
        WebGPU::Direct::Color value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassColorAttachment *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassColorAttachment");
        RETVAL = _find_obj(aTHX_ h, "clearValue", 10, &n->clearValue, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->clearValue, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassColorAttachment__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RequiredLimits	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::RequiredLimits THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURequiredLimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURequiredLimits");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::Limits
limits(THIS, value = NO_INIT)
        WebGPU::Direct::RequiredLimits THIS
        WebGPU::Direct::Limits value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURequiredLimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURequiredLimits");
        RETVAL = _find_obj(aTHX_ h, "limits", 6, &n->limits, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->limits, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RequiredLimits__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ShaderModuleDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUShaderModuleDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUShaderModuleDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
hintCount(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUShaderModuleDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleDescriptor");
        RETVAL = _find_obj(aTHX_ h, "hintCount", 9, &n->hintCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->hintCount, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::ShaderModuleCompilationHint
hints(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleDescriptor THIS
        WebGPU::Direct::ShaderModuleCompilationHint value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUShaderModuleDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleDescriptor");
        RETVAL = _find_obj(aTHX_ h, "hints", 5, &n->hints, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->hints, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ShaderModuleDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SupportedLimits	PREFIX = wgpu

WebGPU::Direct::ChainedStructOut
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::SupportedLimits THIS
        WebGPU::Direct::ChainedStructOut value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSupportedLimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSupportedLimits");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::Limits
limits(THIS, value = NO_INIT)
        WebGPU::Direct::SupportedLimits THIS
        WebGPU::Direct::Limits value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUSupportedLimits *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSupportedLimits");
        RETVAL = _find_obj(aTHX_ h, "limits", 6, &n->limits, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->limits, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SupportedLimits__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::TextureDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureUsageFlags
usage(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        WGPUTextureUsageFlags value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_obj(aTHX_ h, "usage", 5, &n->usage, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->usage, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureDimension
dimension(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        WGPUTextureDimension value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_obj(aTHX_ h, "dimension", 9, &n->dimension, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->dimension, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::Extent3D
size(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        WebGPU::Direct::Extent3D value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_obj(aTHX_ h, "size", 4, &n->size, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->size, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        WGPUTextureFormat value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_obj(aTHX_ h, "format", 6, &n->format, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->format, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
mipLevelCount(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_obj(aTHX_ h, "mipLevelCount", 13, &n->mipLevelCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->mipLevelCount, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
sampleCount(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_obj(aTHX_ h, "sampleCount", 11, &n->sampleCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->sampleCount, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
viewFormatCount(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_obj(aTHX_ h, "viewFormatCount", 15, &n->viewFormatCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->viewFormatCount, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
viewFormats(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        WGPUTextureFormat value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUTextureDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_obj(aTHX_ h, "viewFormats", 11, &n->viewFormats, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->viewFormats, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__TextureDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::VertexBufferLayout	PREFIX = wgpu

uint64_t
arrayStride(THIS, value = NO_INIT)
        WebGPU::Direct::VertexBufferLayout THIS
        uint64_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUVertexBufferLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexBufferLayout");
        RETVAL = _find_obj(aTHX_ h, "arrayStride", 11, &n->arrayStride, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->arrayStride, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUVertexStepMode
stepMode(THIS, value = NO_INIT)
        WebGPU::Direct::VertexBufferLayout THIS
        WGPUVertexStepMode value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUVertexBufferLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexBufferLayout");
        RETVAL = _find_obj(aTHX_ h, "stepMode", 8, &n->stepMode, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->stepMode, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
attributeCount(THIS, value = NO_INIT)
        WebGPU::Direct::VertexBufferLayout THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUVertexBufferLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexBufferLayout");
        RETVAL = _find_obj(aTHX_ h, "attributeCount", 14, &n->attributeCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->attributeCount, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::VertexAttribute
attributes(THIS, value = NO_INIT)
        WebGPU::Direct::VertexBufferLayout THIS
        WebGPU::Direct::VertexAttribute value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUVertexBufferLayout *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexBufferLayout");
        RETVAL = _find_obj(aTHX_ h, "attributes", 10, &n->attributes, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->attributes, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__VertexBufferLayout__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroupLayoutDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupLayoutDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupLayoutDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
entryCount(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupLayoutDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutDescriptor");
        RETVAL = _find_obj(aTHX_ h, "entryCount", 10, &n->entryCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->entryCount, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::BindGroupLayoutEntry
entries(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutDescriptor THIS
        WebGPU::Direct::BindGroupLayoutEntry value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUBindGroupLayoutDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutDescriptor");
        RETVAL = _find_obj(aTHX_ h, "entries", 7, &n->entries, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->entries, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BindGroupLayoutDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ColorTargetState	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ColorTargetState THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUColorTargetState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUColorTargetState");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::ColorTargetState THIS
        WGPUTextureFormat value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUColorTargetState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUColorTargetState");
        RETVAL = _find_obj(aTHX_ h, "format", 6, &n->format, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->format, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::BlendState
blend(THIS, value = NO_INIT)
        WebGPU::Direct::ColorTargetState THIS
        WebGPU::Direct::BlendState value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUColorTargetState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUColorTargetState");
        RETVAL = _find_obj(aTHX_ h, "blend", 5, &n->blend, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->blend, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUColorWriteMaskFlags
writeMask(THIS, value = NO_INIT)
        WebGPU::Direct::ColorTargetState THIS
        WGPUColorWriteMaskFlags value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUColorTargetState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUColorTargetState");
        RETVAL = _find_obj(aTHX_ h, "writeMask", 9, &n->writeMask, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->writeMask, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ColorTargetState__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ComputePipelineDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePipelineDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUComputePipelineDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePipelineDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePipelineDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUComputePipelineDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePipelineDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUPipelineLayout
layout(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePipelineDescriptor THIS
        WGPUPipelineLayout value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUComputePipelineDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePipelineDescriptor");
        RETVAL = _find_obj(aTHX_ h, "layout", 6, &n->layout, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->layout, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::ProgrammableStageDescriptor
compute(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePipelineDescriptor THIS
        WebGPU::Direct::ProgrammableStageDescriptor value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUComputePipelineDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePipelineDescriptor");
        RETVAL = _find_obj(aTHX_ h, "compute", 7, &n->compute, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->compute, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ComputePipelineDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::DeviceDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUDeviceDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDeviceDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUDeviceDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDeviceDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
requiredFeaturesCount(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUDeviceDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDeviceDescriptor");
        RETVAL = _find_obj(aTHX_ h, "requiredFeaturesCount", 21, &n->requiredFeaturesCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->requiredFeaturesCount, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUFeatureName
requiredFeatures(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        WGPUFeatureName value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUDeviceDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDeviceDescriptor");
        RETVAL = _find_obj(aTHX_ h, "requiredFeatures", 16, &n->requiredFeatures, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->requiredFeatures, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::RequiredLimits
requiredLimits(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        WebGPU::Direct::RequiredLimits value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUDeviceDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDeviceDescriptor");
        RETVAL = _find_obj(aTHX_ h, "requiredLimits", 14, &n->requiredLimits, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->requiredLimits, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::QueueDescriptor
defaultQueue(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        WebGPU::Direct::QueueDescriptor value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUDeviceDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDeviceDescriptor");
        RETVAL = _find_obj(aTHX_ h, "defaultQueue", 12, &n->defaultQueue, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->defaultQueue, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__DeviceDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPassDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
colorAttachmentCount(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptor");
        RETVAL = _find_obj(aTHX_ h, "colorAttachmentCount", 20, &n->colorAttachmentCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->colorAttachmentCount, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::RenderPassColorAttachment
colorAttachments(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        WebGPU::Direct::RenderPassColorAttachment value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptor");
        RETVAL = _find_obj(aTHX_ h, "colorAttachments", 16, &n->colorAttachments, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->colorAttachments, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::RenderPassDepthStencilAttachment
depthStencilAttachment(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        WebGPU::Direct::RenderPassDepthStencilAttachment value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptor");
        RETVAL = _find_obj(aTHX_ h, "depthStencilAttachment", 22, &n->depthStencilAttachment, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->depthStencilAttachment, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUQuerySet
occlusionQuerySet(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        WGPUQuerySet value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptor");
        RETVAL = _find_obj(aTHX_ h, "occlusionQuerySet", 17, &n->occlusionQuerySet, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->occlusionQuerySet, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
timestampWriteCount(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptor");
        RETVAL = _find_obj(aTHX_ h, "timestampWriteCount", 19, &n->timestampWriteCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->timestampWriteCount, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::RenderPassTimestampWrite
timestampWrites(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        WebGPU::Direct::RenderPassTimestampWrite value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPassDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptor");
        RETVAL = _find_obj(aTHX_ h, "timestampWrites", 15, &n->timestampWrites, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->timestampWrites, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::VertexState	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUVertexState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexState");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUShaderModule
module(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        WGPUShaderModule value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUVertexState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexState");
        RETVAL = _find_obj(aTHX_ h, "module", 6, &n->module, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->module, type_sv);
        }
    OUTPUT:
        RETVAL

char
entryPoint(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUVertexState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexState");
        RETVAL = _find_obj(aTHX_ h, "entryPoint", 10, &n->entryPoint, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->entryPoint, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
antCount(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUVertexState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexState");
        RETVAL = _find_obj(aTHX_ h, "antCount", 8, &n->antCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->antCount, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::ConstantEntry
constants(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        WebGPU::Direct::ConstantEntry value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUVertexState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexState");
        RETVAL = _find_obj(aTHX_ h, "constants", 9, &n->constants, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->constants, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
bufferCount(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUVertexState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexState");
        RETVAL = _find_obj(aTHX_ h, "bufferCount", 11, &n->bufferCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->bufferCount, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::VertexBufferLayout
buffers(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        WebGPU::Direct::VertexBufferLayout value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUVertexState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexState");
        RETVAL = _find_obj(aTHX_ h, "buffers", 7, &n->buffers, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->buffers, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__VertexState__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::FragmentState	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUFragmentState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUFragmentState");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUShaderModule
module(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        WGPUShaderModule value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUFragmentState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUFragmentState");
        RETVAL = _find_obj(aTHX_ h, "module", 6, &n->module, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->module, type_sv);
        }
    OUTPUT:
        RETVAL

char
entryPoint(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUFragmentState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUFragmentState");
        RETVAL = _find_obj(aTHX_ h, "entryPoint", 10, &n->entryPoint, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->entryPoint, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
antCount(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUFragmentState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUFragmentState");
        RETVAL = _find_obj(aTHX_ h, "antCount", 8, &n->antCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->antCount, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::ConstantEntry
constants(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        WebGPU::Direct::ConstantEntry value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUFragmentState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUFragmentState");
        RETVAL = _find_obj(aTHX_ h, "constants", 9, &n->constants, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->constants, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
targetCount(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        uint32_t value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUFragmentState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUFragmentState");
        RETVAL = _find_obj(aTHX_ h, "targetCount", 11, &n->targetCount, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->targetCount, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::ColorTargetState
targets(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        WebGPU::Direct::ColorTargetState value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPUFragmentState *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUFragmentState");
        RETVAL = _find_obj(aTHX_ h, "targets", 7, &n->targets, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->targets, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__FragmentState__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPipelineDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPipelineDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPipelineDescriptor");
        RETVAL = _find_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char
label(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        char value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPipelineDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPipelineDescriptor");
        RETVAL = _find_obj(aTHX_ h, "label", 5, &n->label, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->label, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUPipelineLayout
layout(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        WGPUPipelineLayout value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPipelineDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPipelineDescriptor");
        RETVAL = _find_obj(aTHX_ h, "layout", 6, &n->layout, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->layout, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::VertexState
vertex(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        WebGPU::Direct::VertexState value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPipelineDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPipelineDescriptor");
        RETVAL = _find_obj(aTHX_ h, "vertex", 6, &n->vertex, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->vertex, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::PrimitiveState
primitive(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        WebGPU::Direct::PrimitiveState value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPipelineDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPipelineDescriptor");
        RETVAL = _find_obj(aTHX_ h, "primitive", 9, &n->primitive, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->primitive, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::DepthStencilState
depthStencil(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        WebGPU::Direct::DepthStencilState value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPipelineDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPipelineDescriptor");
        RETVAL = _find_obj(aTHX_ h, "depthStencil", 12, &n->depthStencil, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->depthStencil, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::MultisampleState
multisample(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        WebGPU::Direct::MultisampleState value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPipelineDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPipelineDescriptor");
        RETVAL = _find_obj(aTHX_ h, "multisample", 11, &n->multisample, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->multisample, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::FragmentState
fragment(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        WebGPU::Direct::FragmentState value
    PROTOTYPE: $;$
    CODE:
        HV *h = SvRV(THIS);
        WGPURenderPipelineDescriptor *n = _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPipelineDescriptor");
        RETVAL = _find_obj(aTHX_ h, "fragment", 8, &n->fragment, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value, &n->fragment, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPipelineDescriptor__pack( SV *THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BufferMapCallback	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CompilationInfoCallback	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CreateComputePipelineAsyncCallback	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CreateRenderPipelineAsyncCallback	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::DeviceLostCallback	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ErrorCallback	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Proc	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::QueueWorkDoneCallback	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RequestAdapterCallback	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RequestDeviceCallback	PREFIX = wgpu

