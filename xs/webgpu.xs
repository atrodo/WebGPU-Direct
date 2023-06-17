#pragma GCC diagnostic ignored "-Wint-to-pointer-cast"
#pragma GCC diagnostic ignored "-Wformat"

MODULE = WebGPU::Direct		PACKAGE = WebGPU::Direct::XS		PREFIX = wgpu

WGPUInstance 
wgpuCreateInstance(descriptor)
        WGPUInstanceDescriptor const * descriptor


WGPUProc 
wgpuGetProcAddress(device, procName)
        WGPUDevice device
        char const * procName


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Adapter	PREFIX = wgpuAdapter


size_t 
wgpuAdapterEnumerateFeatures(adapter, features)
        WGPUAdapter adapter
        WGPUFeatureName * features


bool 
wgpuAdapterGetLimits(adapter, limits)
        WGPUAdapter adapter
        WGPUSupportedLimits * limits


void 
wgpuAdapterGetProperties(adapter, properties)
        WGPUAdapter adapter
        WGPUAdapterProperties * properties


bool 
wgpuAdapterHasFeature(adapter, feature)
        WGPUAdapter adapter
        WGPUFeatureName feature


void 
wgpuAdapterRequestDevice(adapter, descriptor, callback, userdata)
        WGPUAdapter adapter
        WGPUDeviceDescriptor const * descriptor
        WGPURequestDeviceCallback callback
        void * userdata


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroup	PREFIX = wgpuBindGroup


void 
wgpuBindGroupSetLabel(bindGroup, label)
        WGPUBindGroup bindGroup
        char const * label


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroupLayout	PREFIX = wgpuBindGroupLayout


void 
wgpuBindGroupLayoutSetLabel(bindGroupLayout, label)
        WGPUBindGroupLayout bindGroupLayout
        char const * label


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Buffer	PREFIX = wgpuBuffer


void 
wgpuBufferDestroy(buffer)
        WGPUBuffer buffer


void const * 
wgpuBufferGetConstMappedRange(buffer, offset, size)
        WGPUBuffer buffer
        size_t offset
        size_t size


WGPUBufferMapState 
wgpuBufferGetMapState(buffer)
        WGPUBuffer buffer


void * 
wgpuBufferGetMappedRange(buffer, offset, size)
        WGPUBuffer buffer
        size_t offset
        size_t size


uint64_t 
wgpuBufferGetSize(buffer)
        WGPUBuffer buffer


WGPUBufferUsage 
wgpuBufferGetUsage(buffer)
        WGPUBuffer buffer


void 
wgpuBufferMapAsync(buffer, mode, offset, size, callback, userdata)
        WGPUBuffer buffer
        WGPUMapModeFlags mode
        size_t offset
        size_t size
        WGPUBufferMapCallback callback
        void * userdata


void 
wgpuBufferSetLabel(buffer, label)
        WGPUBuffer buffer
        char const * label


void 
wgpuBufferUnmap(buffer)
        WGPUBuffer buffer


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CommandBuffer	PREFIX = wgpuCommandBuffer


void 
wgpuCommandBufferSetLabel(commandBuffer, label)
        WGPUCommandBuffer commandBuffer
        char const * label


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CommandEncoder	PREFIX = wgpuCommandEncoder


WGPUComputePassEncoder 
wgpuCommandEncoderBeginComputePass(commandEncoder, descriptor)
        WGPUCommandEncoder commandEncoder
        WGPUComputePassDescriptor const * descriptor


WGPURenderPassEncoder 
wgpuCommandEncoderBeginRenderPass(commandEncoder, descriptor)
        WGPUCommandEncoder commandEncoder
        WGPURenderPassDescriptor const * descriptor


void 
wgpuCommandEncoderClearBuffer(commandEncoder, buffer, offset, size)
        WGPUCommandEncoder commandEncoder
        WGPUBuffer buffer
        uint64_t offset
        uint64_t size


void 
wgpuCommandEncoderCopyBufferToBuffer(commandEncoder, source, sourceOffset, destination, destinationOffset, size)
        WGPUCommandEncoder commandEncoder
        WGPUBuffer source
        uint64_t sourceOffset
        WGPUBuffer destination
        uint64_t destinationOffset
        uint64_t size


void 
wgpuCommandEncoderCopyBufferToTexture(commandEncoder, source, destination, copySize)
        WGPUCommandEncoder commandEncoder
        WGPUImageCopyBuffer const * source
        WGPUImageCopyTexture const * destination
        WGPUExtent3D const * copySize


void 
wgpuCommandEncoderCopyTextureToBuffer(commandEncoder, source, destination, copySize)
        WGPUCommandEncoder commandEncoder
        WGPUImageCopyTexture const * source
        WGPUImageCopyBuffer const * destination
        WGPUExtent3D const * copySize


void 
wgpuCommandEncoderCopyTextureToTexture(commandEncoder, source, destination, copySize)
        WGPUCommandEncoder commandEncoder
        WGPUImageCopyTexture const * source
        WGPUImageCopyTexture const * destination
        WGPUExtent3D const * copySize


WGPUCommandBuffer 
wgpuCommandEncoderFinish(commandEncoder, descriptor)
        WGPUCommandEncoder commandEncoder
        WGPUCommandBufferDescriptor const * descriptor


void 
wgpuCommandEncoderInsertDebugMarker(commandEncoder, markerLabel)
        WGPUCommandEncoder commandEncoder
        char const * markerLabel


void 
wgpuCommandEncoderPopDebugGroup(commandEncoder)
        WGPUCommandEncoder commandEncoder


void 
wgpuCommandEncoderPushDebugGroup(commandEncoder, groupLabel)
        WGPUCommandEncoder commandEncoder
        char const * groupLabel


void 
wgpuCommandEncoderResolveQuerySet(commandEncoder, querySet, firstQuery, queryCount, destination, destinationOffset)
        WGPUCommandEncoder commandEncoder
        WGPUQuerySet querySet
        uint32_t firstQuery
        uint32_t queryCount
        WGPUBuffer destination
        uint64_t destinationOffset


void 
wgpuCommandEncoderSetLabel(commandEncoder, label)
        WGPUCommandEncoder commandEncoder
        char const * label


void 
wgpuCommandEncoderWriteTimestamp(commandEncoder, querySet, queryIndex)
        WGPUCommandEncoder commandEncoder
        WGPUQuerySet querySet
        uint32_t queryIndex


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ComputePassEncoder	PREFIX = wgpuComputePassEncoder


void 
wgpuComputePassEncoderBeginPipelineStatisticsQuery(computePassEncoder, querySet, queryIndex)
        WGPUComputePassEncoder computePassEncoder
        WGPUQuerySet querySet
        uint32_t queryIndex


void 
wgpuComputePassEncoderDispatchWorkgroups(computePassEncoder, workgroupCountX, workgroupCountY, workgroupCountZ)
        WGPUComputePassEncoder computePassEncoder
        uint32_t workgroupCountX
        uint32_t workgroupCountY
        uint32_t workgroupCountZ


void 
wgpuComputePassEncoderDispatchWorkgroupsIndirect(computePassEncoder, indirectBuffer, indirectOffset)
        WGPUComputePassEncoder computePassEncoder
        WGPUBuffer indirectBuffer
        uint64_t indirectOffset


void 
wgpuComputePassEncoderEnd(computePassEncoder)
        WGPUComputePassEncoder computePassEncoder


void 
wgpuComputePassEncoderEndPipelineStatisticsQuery(computePassEncoder)
        WGPUComputePassEncoder computePassEncoder


void 
wgpuComputePassEncoderInsertDebugMarker(computePassEncoder, markerLabel)
        WGPUComputePassEncoder computePassEncoder
        char const * markerLabel


void 
wgpuComputePassEncoderPopDebugGroup(computePassEncoder)
        WGPUComputePassEncoder computePassEncoder


void 
wgpuComputePassEncoderPushDebugGroup(computePassEncoder, groupLabel)
        WGPUComputePassEncoder computePassEncoder
        char const * groupLabel


void 
wgpuComputePassEncoderSetBindGroup(computePassEncoder, groupIndex, group, dynamicOffsetCount, dynamicOffsets)
        WGPUComputePassEncoder computePassEncoder
        uint32_t groupIndex
        WGPUBindGroup group
        uint32_t dynamicOffsetCount
        uint32_t const * dynamicOffsets


void 
wgpuComputePassEncoderSetLabel(computePassEncoder, label)
        WGPUComputePassEncoder computePassEncoder
        char const * label


void 
wgpuComputePassEncoderSetPipeline(computePassEncoder, pipeline)
        WGPUComputePassEncoder computePassEncoder
        WGPUComputePipeline pipeline


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ComputePipeline	PREFIX = wgpuComputePipeline


WGPUBindGroupLayout 
wgpuComputePipelineGetBindGroupLayout(computePipeline, groupIndex)
        WGPUComputePipeline computePipeline
        uint32_t groupIndex


void 
wgpuComputePipelineSetLabel(computePipeline, label)
        WGPUComputePipeline computePipeline
        char const * label


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Device	PREFIX = wgpuDevice


WGPUBindGroup 
wgpuDeviceCreateBindGroup(device, descriptor)
        WGPUDevice device
        WGPUBindGroupDescriptor const * descriptor


WGPUBindGroupLayout 
wgpuDeviceCreateBindGroupLayout(device, descriptor)
        WGPUDevice device
        WGPUBindGroupLayoutDescriptor const * descriptor


WGPUBuffer 
wgpuDeviceCreateBuffer(device, descriptor)
        WGPUDevice device
        WGPUBufferDescriptor const * descriptor


WGPUCommandEncoder 
wgpuDeviceCreateCommandEncoder(device, descriptor)
        WGPUDevice device
        WGPUCommandEncoderDescriptor const * descriptor


WGPUComputePipeline 
wgpuDeviceCreateComputePipeline(device, descriptor)
        WGPUDevice device
        WGPUComputePipelineDescriptor const * descriptor


void 
wgpuDeviceCreateComputePipelineAsync(device, descriptor, callback, userdata)
        WGPUDevice device
        WGPUComputePipelineDescriptor const * descriptor
        WGPUCreateComputePipelineAsyncCallback callback
        void * userdata


WGPUPipelineLayout 
wgpuDeviceCreatePipelineLayout(device, descriptor)
        WGPUDevice device
        WGPUPipelineLayoutDescriptor const * descriptor


WGPUQuerySet 
wgpuDeviceCreateQuerySet(device, descriptor)
        WGPUDevice device
        WGPUQuerySetDescriptor const * descriptor


WGPURenderBundleEncoder 
wgpuDeviceCreateRenderBundleEncoder(device, descriptor)
        WGPUDevice device
        WGPURenderBundleEncoderDescriptor const * descriptor


WGPURenderPipeline 
wgpuDeviceCreateRenderPipeline(device, descriptor)
        WGPUDevice device
        WGPURenderPipelineDescriptor const * descriptor


void 
wgpuDeviceCreateRenderPipelineAsync(device, descriptor, callback, userdata)
        WGPUDevice device
        WGPURenderPipelineDescriptor const * descriptor
        WGPUCreateRenderPipelineAsyncCallback callback
        void * userdata


WGPUSampler 
wgpuDeviceCreateSampler(device, descriptor)
        WGPUDevice device
        WGPUSamplerDescriptor const * descriptor


WGPUShaderModule 
wgpuDeviceCreateShaderModule(device, descriptor)
        WGPUDevice device
        WGPUShaderModuleDescriptor const * descriptor


WGPUSwapChain 
wgpuDeviceCreateSwapChain(device, surface, descriptor)
        WGPUDevice device
        WGPUSurface surface
        WGPUSwapChainDescriptor const * descriptor


WGPUTexture 
wgpuDeviceCreateTexture(device, descriptor)
        WGPUDevice device
        WGPUTextureDescriptor const * descriptor


void 
wgpuDeviceDestroy(device)
        WGPUDevice device


size_t 
wgpuDeviceEnumerateFeatures(device, features)
        WGPUDevice device
        WGPUFeatureName * features


bool 
wgpuDeviceGetLimits(device, limits)
        WGPUDevice device
        WGPUSupportedLimits * limits


WGPUQueue 
wgpuDeviceGetQueue(device)
        WGPUDevice device


bool 
wgpuDeviceHasFeature(device, feature)
        WGPUDevice device
        WGPUFeatureName feature


bool 
wgpuDevicePopErrorScope(device, callback, userdata)
        WGPUDevice device
        WGPUErrorCallback callback
        void * userdata


void 
wgpuDevicePushErrorScope(device, filter)
        WGPUDevice device
        WGPUErrorFilter filter


void 
wgpuDeviceSetDeviceLostCallback(device, callback, userdata)
        WGPUDevice device
        WGPUDeviceLostCallback callback
        void * userdata


void 
wgpuDeviceSetLabel(device, label)
        WGPUDevice device
        char const * label


void 
wgpuDeviceSetUncapturedErrorCallback(device, callback, userdata)
        WGPUDevice device
        WGPUErrorCallback callback
        void * userdata


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Instance	PREFIX = wgpuInstance


WGPUSurface 
wgpuInstanceCreateSurface(instance, descriptor)
        WGPUInstance instance
        WGPUSurfaceDescriptor const * descriptor


void 
wgpuInstanceProcessEvents(instance)
        WGPUInstance instance


void 
wgpuInstanceRequestAdapter(instance, options, callback, userdata)
        WGPUInstance instance
        WGPURequestAdapterOptions const * options
        WGPURequestAdapterCallback callback
        void * userdata


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::PipelineLayout	PREFIX = wgpuPipelineLayout


void 
wgpuPipelineLayoutSetLabel(pipelineLayout, label)
        WGPUPipelineLayout pipelineLayout
        char const * label


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::QuerySet	PREFIX = wgpuQuerySet


void 
wgpuQuerySetDestroy(querySet)
        WGPUQuerySet querySet


uint32_t 
wgpuQuerySetGetCount(querySet)
        WGPUQuerySet querySet


WGPUQueryType 
wgpuQuerySetGetType(querySet)
        WGPUQuerySet querySet


void 
wgpuQuerySetSetLabel(querySet, label)
        WGPUQuerySet querySet
        char const * label


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Queue	PREFIX = wgpuQueue


void 
wgpuQueueOnSubmittedWorkDone(queue, callback, userdata)
        WGPUQueue queue
        WGPUQueueWorkDoneCallback callback
        void * userdata


void 
wgpuQueueSetLabel(queue, label)
        WGPUQueue queue
        char const * label


void 
wgpuQueueSubmit(queue, commandCount, commands)
        WGPUQueue queue
        uint32_t commandCount
        WGPUCommandBuffer const * commands


void 
wgpuQueueWriteBuffer(queue, buffer, bufferOffset, data, size)
        WGPUQueue queue
        WGPUBuffer buffer
        uint64_t bufferOffset
        void const * data
        size_t size


void 
wgpuQueueWriteTexture(queue, destination, data, dataSize, dataLayout, writeSize)
        WGPUQueue queue
        WGPUImageCopyTexture const * destination
        void const * data
        size_t dataSize
        WGPUTextureDataLayout const * dataLayout
        WGPUExtent3D const * writeSize


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderBundle	PREFIX = wgpu


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderBundleEncoder	PREFIX = wgpuRenderBundleEncoder


void 
wgpuRenderBundleEncoderDraw(renderBundleEncoder, vertexCount, instanceCount, firstVertex, firstInstance)
        WGPURenderBundleEncoder renderBundleEncoder
        uint32_t vertexCount
        uint32_t instanceCount
        uint32_t firstVertex
        uint32_t firstInstance


void 
wgpuRenderBundleEncoderDrawIndexed(renderBundleEncoder, indexCount, instanceCount, firstIndex, baseVertex, firstInstance)
        WGPURenderBundleEncoder renderBundleEncoder
        uint32_t indexCount
        uint32_t instanceCount
        uint32_t firstIndex
        int32_t baseVertex
        uint32_t firstInstance


void 
wgpuRenderBundleEncoderDrawIndexedIndirect(renderBundleEncoder, indirectBuffer, indirectOffset)
        WGPURenderBundleEncoder renderBundleEncoder
        WGPUBuffer indirectBuffer
        uint64_t indirectOffset


void 
wgpuRenderBundleEncoderDrawIndirect(renderBundleEncoder, indirectBuffer, indirectOffset)
        WGPURenderBundleEncoder renderBundleEncoder
        WGPUBuffer indirectBuffer
        uint64_t indirectOffset


WGPURenderBundle 
wgpuRenderBundleEncoderFinish(renderBundleEncoder, descriptor)
        WGPURenderBundleEncoder renderBundleEncoder
        WGPURenderBundleDescriptor const * descriptor


void 
wgpuRenderBundleEncoderInsertDebugMarker(renderBundleEncoder, markerLabel)
        WGPURenderBundleEncoder renderBundleEncoder
        char const * markerLabel


void 
wgpuRenderBundleEncoderPopDebugGroup(renderBundleEncoder)
        WGPURenderBundleEncoder renderBundleEncoder


void 
wgpuRenderBundleEncoderPushDebugGroup(renderBundleEncoder, groupLabel)
        WGPURenderBundleEncoder renderBundleEncoder
        char const * groupLabel


void 
wgpuRenderBundleEncoderSetBindGroup(renderBundleEncoder, groupIndex, group, dynamicOffsetCount, dynamicOffsets)
        WGPURenderBundleEncoder renderBundleEncoder
        uint32_t groupIndex
        WGPUBindGroup group
        uint32_t dynamicOffsetCount
        uint32_t const * dynamicOffsets


void 
wgpuRenderBundleEncoderSetIndexBuffer(renderBundleEncoder, buffer, format, offset, size)
        WGPURenderBundleEncoder renderBundleEncoder
        WGPUBuffer buffer
        WGPUIndexFormat format
        uint64_t offset
        uint64_t size


void 
wgpuRenderBundleEncoderSetLabel(renderBundleEncoder, label)
        WGPURenderBundleEncoder renderBundleEncoder
        char const * label


void 
wgpuRenderBundleEncoderSetPipeline(renderBundleEncoder, pipeline)
        WGPURenderBundleEncoder renderBundleEncoder
        WGPURenderPipeline pipeline


void 
wgpuRenderBundleEncoderSetVertexBuffer(renderBundleEncoder, slot, buffer, offset, size)
        WGPURenderBundleEncoder renderBundleEncoder
        uint32_t slot
        WGPUBuffer buffer
        uint64_t offset
        uint64_t size


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPassEncoder	PREFIX = wgpuRenderPassEncoder


void 
wgpuRenderPassEncoderBeginOcclusionQuery(renderPassEncoder, queryIndex)
        WGPURenderPassEncoder renderPassEncoder
        uint32_t queryIndex


void 
wgpuRenderPassEncoderBeginPipelineStatisticsQuery(renderPassEncoder, querySet, queryIndex)
        WGPURenderPassEncoder renderPassEncoder
        WGPUQuerySet querySet
        uint32_t queryIndex


void 
wgpuRenderPassEncoderDraw(renderPassEncoder, vertexCount, instanceCount, firstVertex, firstInstance)
        WGPURenderPassEncoder renderPassEncoder
        uint32_t vertexCount
        uint32_t instanceCount
        uint32_t firstVertex
        uint32_t firstInstance


void 
wgpuRenderPassEncoderDrawIndexed(renderPassEncoder, indexCount, instanceCount, firstIndex, baseVertex, firstInstance)
        WGPURenderPassEncoder renderPassEncoder
        uint32_t indexCount
        uint32_t instanceCount
        uint32_t firstIndex
        int32_t baseVertex
        uint32_t firstInstance


void 
wgpuRenderPassEncoderDrawIndexedIndirect(renderPassEncoder, indirectBuffer, indirectOffset)
        WGPURenderPassEncoder renderPassEncoder
        WGPUBuffer indirectBuffer
        uint64_t indirectOffset


void 
wgpuRenderPassEncoderDrawIndirect(renderPassEncoder, indirectBuffer, indirectOffset)
        WGPURenderPassEncoder renderPassEncoder
        WGPUBuffer indirectBuffer
        uint64_t indirectOffset


void 
wgpuRenderPassEncoderEnd(renderPassEncoder)
        WGPURenderPassEncoder renderPassEncoder


void 
wgpuRenderPassEncoderEndOcclusionQuery(renderPassEncoder)
        WGPURenderPassEncoder renderPassEncoder


void 
wgpuRenderPassEncoderEndPipelineStatisticsQuery(renderPassEncoder)
        WGPURenderPassEncoder renderPassEncoder


void 
wgpuRenderPassEncoderExecuteBundles(renderPassEncoder, bundleCount, bundles)
        WGPURenderPassEncoder renderPassEncoder
        uint32_t bundleCount
        WGPURenderBundle const * bundles


void 
wgpuRenderPassEncoderInsertDebugMarker(renderPassEncoder, markerLabel)
        WGPURenderPassEncoder renderPassEncoder
        char const * markerLabel


void 
wgpuRenderPassEncoderPopDebugGroup(renderPassEncoder)
        WGPURenderPassEncoder renderPassEncoder


void 
wgpuRenderPassEncoderPushDebugGroup(renderPassEncoder, groupLabel)
        WGPURenderPassEncoder renderPassEncoder
        char const * groupLabel


void 
wgpuRenderPassEncoderSetBindGroup(renderPassEncoder, groupIndex, group, dynamicOffsetCount, dynamicOffsets)
        WGPURenderPassEncoder renderPassEncoder
        uint32_t groupIndex
        WGPUBindGroup group
        uint32_t dynamicOffsetCount
        uint32_t const * dynamicOffsets


void 
wgpuRenderPassEncoderSetBlendConstant(renderPassEncoder, color)
        WGPURenderPassEncoder renderPassEncoder
        WGPUColor const * color


void 
wgpuRenderPassEncoderSetIndexBuffer(renderPassEncoder, buffer, format, offset, size)
        WGPURenderPassEncoder renderPassEncoder
        WGPUBuffer buffer
        WGPUIndexFormat format
        uint64_t offset
        uint64_t size


void 
wgpuRenderPassEncoderSetLabel(renderPassEncoder, label)
        WGPURenderPassEncoder renderPassEncoder
        char const * label


void 
wgpuRenderPassEncoderSetPipeline(renderPassEncoder, pipeline)
        WGPURenderPassEncoder renderPassEncoder
        WGPURenderPipeline pipeline


void 
wgpuRenderPassEncoderSetScissorRect(renderPassEncoder, x, y, width, height)
        WGPURenderPassEncoder renderPassEncoder
        uint32_t x
        uint32_t y
        uint32_t width
        uint32_t height


void 
wgpuRenderPassEncoderSetStencilReference(renderPassEncoder, reference)
        WGPURenderPassEncoder renderPassEncoder
        uint32_t reference


void 
wgpuRenderPassEncoderSetVertexBuffer(renderPassEncoder, slot, buffer, offset, size)
        WGPURenderPassEncoder renderPassEncoder
        uint32_t slot
        WGPUBuffer buffer
        uint64_t offset
        uint64_t size


void 
wgpuRenderPassEncoderSetViewport(renderPassEncoder, x, y, width, height, minDepth, maxDepth)
        WGPURenderPassEncoder renderPassEncoder
        float x
        float y
        float width
        float height
        float minDepth
        float maxDepth


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPipeline	PREFIX = wgpuRenderPipeline


WGPUBindGroupLayout 
wgpuRenderPipelineGetBindGroupLayout(renderPipeline, groupIndex)
        WGPURenderPipeline renderPipeline
        uint32_t groupIndex


void 
wgpuRenderPipelineSetLabel(renderPipeline, label)
        WGPURenderPipeline renderPipeline
        char const * label


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Sampler	PREFIX = wgpuSampler


void 
wgpuSamplerSetLabel(sampler, label)
        WGPUSampler sampler
        char const * label


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ShaderModule	PREFIX = wgpuShaderModule


void 
wgpuShaderModuleGetCompilationInfo(shaderModule, callback, userdata)
        WGPUShaderModule shaderModule
        WGPUCompilationInfoCallback callback
        void * userdata


void 
wgpuShaderModuleSetLabel(shaderModule, label)
        WGPUShaderModule shaderModule
        char const * label


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Surface	PREFIX = wgpuSurface


WGPUTextureFormat 
wgpuSurfaceGetPreferredFormat(surface, adapter)
        WGPUSurface surface
        WGPUAdapter adapter


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SwapChain	PREFIX = wgpuSwapChain


WGPUTextureView 
wgpuSwapChainGetCurrentTextureView(swapChain)
        WGPUSwapChain swapChain


void 
wgpuSwapChainPresent(swapChain)
        WGPUSwapChain swapChain


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Texture	PREFIX = wgpuTexture


WGPUTextureView 
wgpuTextureCreateView(texture, descriptor)
        WGPUTexture texture
        WGPUTextureViewDescriptor const * descriptor


void 
wgpuTextureDestroy(texture)
        WGPUTexture texture


uint32_t 
wgpuTextureGetDepthOrArrayLayers(texture)
        WGPUTexture texture


WGPUTextureDimension 
wgpuTextureGetDimension(texture)
        WGPUTexture texture


WGPUTextureFormat 
wgpuTextureGetFormat(texture)
        WGPUTexture texture


uint32_t 
wgpuTextureGetHeight(texture)
        WGPUTexture texture


uint32_t 
wgpuTextureGetMipLevelCount(texture)
        WGPUTexture texture


uint32_t 
wgpuTextureGetSampleCount(texture)
        WGPUTexture texture


WGPUTextureUsage 
wgpuTextureGetUsage(texture)
        WGPUTexture texture


uint32_t 
wgpuTextureGetWidth(texture)
        WGPUTexture texture


void 
wgpuTextureSetLabel(texture, label)
        WGPUTexture texture
        char const * label


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::TextureView	PREFIX = wgpuTextureView


void 
wgpuTextureViewSetLabel(textureView, label)
        WGPUTextureView textureView
        char const * label


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ChainedStruct	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
next(THIS, value = NO_INIT)
        WebGPU::Direct::ChainedStruct THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUChainedStruct *n = (WGPUChainedStruct *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUChainedStruct");
        RETVAL = _find_set_obj(aTHX_ h, "next", 4, &n->next, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->next, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUSType
sType(THIS, value = NO_INIT)
        WebGPU::Direct::ChainedStruct THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUChainedStruct *n = (WGPUChainedStruct *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUChainedStruct");
        RETVAL = _find_set_enum(aTHX_ h, "sType", 5, &n->sType);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->sType);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ChainedStruct__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ChainedStructOut	PREFIX = wgpu

WebGPU::Direct::ChainedStructOut
next(THIS, value = NO_INIT)
        WebGPU::Direct::ChainedStructOut THIS
        WebGPU::Direct::ChainedStructOut value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUChainedStructOut *n = (WGPUChainedStructOut *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUChainedStructOut");
        RETVAL = _find_set_obj(aTHX_ h, "next", 4, &n->next, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->next, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUSType
sType(THIS, value = NO_INIT)
        WebGPU::Direct::ChainedStructOut THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUChainedStructOut *n = (WGPUChainedStructOut *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUChainedStructOut");
        RETVAL = _find_set_enum(aTHX_ h, "sType", 5, &n->sType);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->sType);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ChainedStructOut__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::AdapterProperties	PREFIX = wgpu

WebGPU::Direct::ChainedStructOut
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        WebGPU::Direct::ChainedStructOut value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUAdapterProperties");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
vendorID(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUAdapterProperties");
        RETVAL = _find_set_uint32_t(aTHX_ h, "vendorID", 8, &n->vendorID);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->vendorID);
        }
    OUTPUT:
        RETVAL

char const  * 
vendorName(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUAdapterProperties");
        RETVAL = _find_set_str(aTHX_ h, "vendorName", 10, &n->vendorName);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->vendorName);
        }
    OUTPUT:
        RETVAL

char const  * 
architecture(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUAdapterProperties");
        RETVAL = _find_set_str(aTHX_ h, "architecture", 12, &n->architecture);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->architecture);
        }
    OUTPUT:
        RETVAL

uint32_t
deviceID(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUAdapterProperties");
        RETVAL = _find_set_uint32_t(aTHX_ h, "deviceID", 8, &n->deviceID);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->deviceID);
        }
    OUTPUT:
        RETVAL

char const  * 
name(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUAdapterProperties");
        RETVAL = _find_set_str(aTHX_ h, "name", 4, &n->name);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->name);
        }
    OUTPUT:
        RETVAL

char const  * 
driverDescription(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUAdapterProperties");
        RETVAL = _find_set_str(aTHX_ h, "driverDescription", 17, &n->driverDescription);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->driverDescription);
        }
    OUTPUT:
        RETVAL

WGPUAdapterType
adapterType(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUAdapterProperties");
        RETVAL = _find_set_enum(aTHX_ h, "adapterType", 11, &n->adapterType);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->adapterType);
        }
    OUTPUT:
        RETVAL

WGPUBackendType
backendType(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUAdapterProperties");
        RETVAL = _find_set_enum(aTHX_ h, "backendType", 11, &n->backendType);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->backendType);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__AdapterProperties__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroupEntry	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupEntry *n = (WGPUBindGroupEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupEntry");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
binding(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupEntry *n = (WGPUBindGroupEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupEntry");
        RETVAL = _find_set_uint32_t(aTHX_ h, "binding", 7, &n->binding);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->binding);
        }
    OUTPUT:
        RETVAL

void *
buffer(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupEntry *n = (WGPUBindGroupEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupEntry");
        RETVAL = _find_set_void(aTHX_ h, "buffer", 6, &n->buffer, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->buffer, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
offset(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupEntry *n = (WGPUBindGroupEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupEntry");
        RETVAL = _find_set_uint64_t(aTHX_ h, "offset", 6, &n->offset);

        if (items > 1)
        {
            _set_uint64_t(aTHX_ value,/*-*/ (void *) &n->offset);
        }
    OUTPUT:
        RETVAL

uint64_t
size(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupEntry *n = (WGPUBindGroupEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupEntry");
        RETVAL = _find_set_uint64_t(aTHX_ h, "size", 4, &n->size);

        if (items > 1)
        {
            _set_uint64_t(aTHX_ value,/*-*/ (void *) &n->size);
        }
    OUTPUT:
        RETVAL

void *
sampler(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupEntry *n = (WGPUBindGroupEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupEntry");
        RETVAL = _find_set_void(aTHX_ h, "sampler", 7, &n->sampler, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->sampler, type_sv);
        }
    OUTPUT:
        RETVAL

void *
textureView(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupEntry *n = (WGPUBindGroupEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupEntry");
        RETVAL = _find_set_void(aTHX_ h, "textureView", 11, &n->textureView, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->textureView, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BindGroupEntry__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BlendComponent	PREFIX = wgpu

WGPUBlendOperation
operation(THIS, value = NO_INIT)
        WebGPU::Direct::BlendComponent THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBlendComponent *n = (WGPUBlendComponent *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBlendComponent");
        RETVAL = _find_set_enum(aTHX_ h, "operation", 9, &n->operation);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->operation);
        }
    OUTPUT:
        RETVAL

WGPUBlendFactor
srcFactor(THIS, value = NO_INIT)
        WebGPU::Direct::BlendComponent THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBlendComponent *n = (WGPUBlendComponent *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBlendComponent");
        RETVAL = _find_set_enum(aTHX_ h, "srcFactor", 9, &n->srcFactor);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->srcFactor);
        }
    OUTPUT:
        RETVAL

WGPUBlendFactor
dstFactor(THIS, value = NO_INIT)
        WebGPU::Direct::BlendComponent THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBlendComponent *n = (WGPUBlendComponent *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBlendComponent");
        RETVAL = _find_set_enum(aTHX_ h, "dstFactor", 9, &n->dstFactor);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->dstFactor);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BlendComponent__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BufferBindingLayout	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::BufferBindingLayout THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBufferBindingLayout *n = (WGPUBufferBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBufferBindingLayout");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUBufferBindingType
type(THIS, value = NO_INIT)
        WebGPU::Direct::BufferBindingLayout THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBufferBindingLayout *n = (WGPUBufferBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBufferBindingLayout");
        RETVAL = _find_set_enum(aTHX_ h, "type", 4, &n->type);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->type);
        }
    OUTPUT:
        RETVAL

bool
hasDynamicOffset(THIS, value = NO_INIT)
        WebGPU::Direct::BufferBindingLayout THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBufferBindingLayout *n = (WGPUBufferBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBufferBindingLayout");
        RETVAL = _find_set_bool(aTHX_ h, "hasDynamicOffset", 16, &n->hasDynamicOffset);

        if (items > 1)
        {
            _set_bool(aTHX_ value,/*-*/ (void *) &n->hasDynamicOffset);
        }
    OUTPUT:
        RETVAL

uint64_t
minBindingSize(THIS, value = NO_INIT)
        WebGPU::Direct::BufferBindingLayout THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBufferBindingLayout *n = (WGPUBufferBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBufferBindingLayout");
        RETVAL = _find_set_uint64_t(aTHX_ h, "minBindingSize", 14, &n->minBindingSize);

        if (items > 1)
        {
            _set_uint64_t(aTHX_ value,/*-*/ (void *) &n->minBindingSize);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BufferBindingLayout__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BufferDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::BufferDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBufferDescriptor *n = (WGPUBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBufferDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::BufferDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBufferDescriptor *n = (WGPUBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBufferDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

WGPUBufferUsageFlags
usage(THIS, value = NO_INIT)
        WebGPU::Direct::BufferDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBufferDescriptor *n = (WGPUBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBufferDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "usage", 5, &n->usage);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->usage);
        }
    OUTPUT:
        RETVAL

uint64_t
size(THIS, value = NO_INIT)
        WebGPU::Direct::BufferDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBufferDescriptor *n = (WGPUBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBufferDescriptor");
        RETVAL = _find_set_uint64_t(aTHX_ h, "size", 4, &n->size);

        if (items > 1)
        {
            _set_uint64_t(aTHX_ value,/*-*/ (void *) &n->size);
        }
    OUTPUT:
        RETVAL

bool
mappedAtCreation(THIS, value = NO_INIT)
        WebGPU::Direct::BufferDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBufferDescriptor *n = (WGPUBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBufferDescriptor");
        RETVAL = _find_set_bool(aTHX_ h, "mappedAtCreation", 16, &n->mappedAtCreation);

        if (items > 1)
        {
            _set_bool(aTHX_ value,/*-*/ (void *) &n->mappedAtCreation);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BufferDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Color	PREFIX = wgpu

double
r(THIS, value = NO_INIT)
        WebGPU::Direct::Color THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUColor *n = (WGPUColor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUColor");
        RETVAL = _find_set_double(aTHX_ h, "r", 1, &n->r);

        if (items > 1)
        {
            _set_double(aTHX_ value,/*-*/ (void *) &n->r);
        }
    OUTPUT:
        RETVAL

double
g(THIS, value = NO_INIT)
        WebGPU::Direct::Color THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUColor *n = (WGPUColor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUColor");
        RETVAL = _find_set_double(aTHX_ h, "g", 1, &n->g);

        if (items > 1)
        {
            _set_double(aTHX_ value,/*-*/ (void *) &n->g);
        }
    OUTPUT:
        RETVAL

double
b(THIS, value = NO_INIT)
        WebGPU::Direct::Color THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUColor *n = (WGPUColor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUColor");
        RETVAL = _find_set_double(aTHX_ h, "b", 1, &n->b);

        if (items > 1)
        {
            _set_double(aTHX_ value,/*-*/ (void *) &n->b);
        }
    OUTPUT:
        RETVAL

double
a(THIS, value = NO_INIT)
        WebGPU::Direct::Color THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUColor *n = (WGPUColor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUColor");
        RETVAL = _find_set_double(aTHX_ h, "a", 1, &n->a);

        if (items > 1)
        {
            _set_double(aTHX_ value,/*-*/ (void *) &n->a);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__Color__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CommandBufferDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::CommandBufferDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCommandBufferDescriptor *n = (WGPUCommandBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCommandBufferDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::CommandBufferDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCommandBufferDescriptor *n = (WGPUCommandBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCommandBufferDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__CommandBufferDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CommandEncoderDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::CommandEncoderDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCommandEncoderDescriptor *n = (WGPUCommandEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCommandEncoderDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::CommandEncoderDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCommandEncoderDescriptor *n = (WGPUCommandEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCommandEncoderDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__CommandEncoderDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CompilationMessage	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
message(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_set_str(aTHX_ h, "message", 7, &n->message);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->message);
        }
    OUTPUT:
        RETVAL

WGPUCompilationMessageType
type(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_set_enum(aTHX_ h, "type", 4, &n->type);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->type);
        }
    OUTPUT:
        RETVAL

uint64_t
lineNum(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_set_uint64_t(aTHX_ h, "lineNum", 7, &n->lineNum);

        if (items > 1)
        {
            _set_uint64_t(aTHX_ value,/*-*/ (void *) &n->lineNum);
        }
    OUTPUT:
        RETVAL

uint64_t
linePos(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_set_uint64_t(aTHX_ h, "linePos", 7, &n->linePos);

        if (items > 1)
        {
            _set_uint64_t(aTHX_ value,/*-*/ (void *) &n->linePos);
        }
    OUTPUT:
        RETVAL

uint64_t
offset(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_set_uint64_t(aTHX_ h, "offset", 6, &n->offset);

        if (items > 1)
        {
            _set_uint64_t(aTHX_ value,/*-*/ (void *) &n->offset);
        }
    OUTPUT:
        RETVAL

uint64_t
length(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_set_uint64_t(aTHX_ h, "length", 6, &n->length);

        if (items > 1)
        {
            _set_uint64_t(aTHX_ value,/*-*/ (void *) &n->length);
        }
    OUTPUT:
        RETVAL

uint64_t
utf16LinePos(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_set_uint64_t(aTHX_ h, "utf16LinePos", 12, &n->utf16LinePos);

        if (items > 1)
        {
            _set_uint64_t(aTHX_ value,/*-*/ (void *) &n->utf16LinePos);
        }
    OUTPUT:
        RETVAL

uint64_t
utf16Offset(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_set_uint64_t(aTHX_ h, "utf16Offset", 11, &n->utf16Offset);

        if (items > 1)
        {
            _set_uint64_t(aTHX_ value,/*-*/ (void *) &n->utf16Offset);
        }
    OUTPUT:
        RETVAL

uint64_t
utf16Length(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationMessage");
        RETVAL = _find_set_uint64_t(aTHX_ h, "utf16Length", 11, &n->utf16Length);

        if (items > 1)
        {
            _set_uint64_t(aTHX_ value,/*-*/ (void *) &n->utf16Length);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__CompilationMessage__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ComputePassTimestampWrite	PREFIX = wgpu

void *
querySet(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassTimestampWrite THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePassTimestampWrite *n = (WGPUComputePassTimestampWrite *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePassTimestampWrite");
        RETVAL = _find_set_void(aTHX_ h, "querySet", 8, &n->querySet, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->querySet, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
queryIndex(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassTimestampWrite THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePassTimestampWrite *n = (WGPUComputePassTimestampWrite *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePassTimestampWrite");
        RETVAL = _find_set_uint32_t(aTHX_ h, "queryIndex", 10, &n->queryIndex);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->queryIndex);
        }
    OUTPUT:
        RETVAL

WGPUComputePassTimestampLocation
location(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassTimestampWrite THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePassTimestampWrite *n = (WGPUComputePassTimestampWrite *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePassTimestampWrite");
        RETVAL = _find_set_enum(aTHX_ h, "location", 8, &n->location);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->location);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ComputePassTimestampWrite__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ConstantEntry	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ConstantEntry THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUConstantEntry *n = (WGPUConstantEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUConstantEntry");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
key(THIS, value = NO_INIT)
        WebGPU::Direct::ConstantEntry THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUConstantEntry *n = (WGPUConstantEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUConstantEntry");
        RETVAL = _find_set_str(aTHX_ h, "key", 3, &n->key);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->key);
        }
    OUTPUT:
        RETVAL

double
value(THIS, value = NO_INIT)
        WebGPU::Direct::ConstantEntry THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUConstantEntry *n = (WGPUConstantEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUConstantEntry");
        RETVAL = _find_set_double(aTHX_ h, "value", 5, &n->value);

        if (items > 1)
        {
            _set_double(aTHX_ value,/*-*/ (void *) &n->value);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ConstantEntry__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Extent3D	PREFIX = wgpu

uint32_t
width(THIS, value = NO_INIT)
        WebGPU::Direct::Extent3D THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUExtent3D *n = (WGPUExtent3D *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUExtent3D");
        RETVAL = _find_set_uint32_t(aTHX_ h, "width", 5, &n->width);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->width);
        }
    OUTPUT:
        RETVAL

uint32_t
height(THIS, value = NO_INIT)
        WebGPU::Direct::Extent3D THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUExtent3D *n = (WGPUExtent3D *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUExtent3D");
        RETVAL = _find_set_uint32_t(aTHX_ h, "height", 6, &n->height);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->height);
        }
    OUTPUT:
        RETVAL

uint32_t
depthOrArrayLayers(THIS, value = NO_INIT)
        WebGPU::Direct::Extent3D THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUExtent3D *n = (WGPUExtent3D *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUExtent3D");
        RETVAL = _find_set_uint32_t(aTHX_ h, "depthOrArrayLayers", 18, &n->depthOrArrayLayers);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->depthOrArrayLayers);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__Extent3D__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::InstanceDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::InstanceDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUInstanceDescriptor *n = (WGPUInstanceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUInstanceDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__InstanceDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Limits	PREFIX = wgpu

uint32_t
maxTextureDimension1D(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxTextureDimension1D", 21, &n->maxTextureDimension1D);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxTextureDimension1D);
        }
    OUTPUT:
        RETVAL

uint32_t
maxTextureDimension2D(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxTextureDimension2D", 21, &n->maxTextureDimension2D);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxTextureDimension2D);
        }
    OUTPUT:
        RETVAL

uint32_t
maxTextureDimension3D(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxTextureDimension3D", 21, &n->maxTextureDimension3D);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxTextureDimension3D);
        }
    OUTPUT:
        RETVAL

uint32_t
maxTextureArrayLayers(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxTextureArrayLayers", 21, &n->maxTextureArrayLayers);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxTextureArrayLayers);
        }
    OUTPUT:
        RETVAL

uint32_t
maxBindGroups(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxBindGroups", 13, &n->maxBindGroups);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxBindGroups);
        }
    OUTPUT:
        RETVAL

uint32_t
maxBindingsPerBindGroup(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxBindingsPerBindGroup", 23, &n->maxBindingsPerBindGroup);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxBindingsPerBindGroup);
        }
    OUTPUT:
        RETVAL

uint32_t
maxDynamicUniformBuffersPerPipelineLayout(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxDynamicUniformBuffersPerPipelineLayout", 41, &n->maxDynamicUniformBuffersPerPipelineLayout);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxDynamicUniformBuffersPerPipelineLayout);
        }
    OUTPUT:
        RETVAL

uint32_t
maxDynamicStorageBuffersPerPipelineLayout(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxDynamicStorageBuffersPerPipelineLayout", 41, &n->maxDynamicStorageBuffersPerPipelineLayout);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxDynamicStorageBuffersPerPipelineLayout);
        }
    OUTPUT:
        RETVAL

uint32_t
maxSampledTexturesPerShaderStage(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxSampledTexturesPerShaderStage", 32, &n->maxSampledTexturesPerShaderStage);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxSampledTexturesPerShaderStage);
        }
    OUTPUT:
        RETVAL

uint32_t
maxSamplersPerShaderStage(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxSamplersPerShaderStage", 25, &n->maxSamplersPerShaderStage);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxSamplersPerShaderStage);
        }
    OUTPUT:
        RETVAL

uint32_t
maxStorageBuffersPerShaderStage(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxStorageBuffersPerShaderStage", 31, &n->maxStorageBuffersPerShaderStage);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxStorageBuffersPerShaderStage);
        }
    OUTPUT:
        RETVAL

uint32_t
maxStorageTexturesPerShaderStage(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxStorageTexturesPerShaderStage", 32, &n->maxStorageTexturesPerShaderStage);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxStorageTexturesPerShaderStage);
        }
    OUTPUT:
        RETVAL

uint32_t
maxUniformBuffersPerShaderStage(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxUniformBuffersPerShaderStage", 31, &n->maxUniformBuffersPerShaderStage);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxUniformBuffersPerShaderStage);
        }
    OUTPUT:
        RETVAL

uint64_t
maxUniformBufferBindingSize(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint64_t(aTHX_ h, "maxUniformBufferBindingSize", 27, &n->maxUniformBufferBindingSize);

        if (items > 1)
        {
            _set_uint64_t(aTHX_ value,/*-*/ (void *) &n->maxUniformBufferBindingSize);
        }
    OUTPUT:
        RETVAL

uint64_t
maxStorageBufferBindingSize(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint64_t(aTHX_ h, "maxStorageBufferBindingSize", 27, &n->maxStorageBufferBindingSize);

        if (items > 1)
        {
            _set_uint64_t(aTHX_ value,/*-*/ (void *) &n->maxStorageBufferBindingSize);
        }
    OUTPUT:
        RETVAL

uint32_t
minUniformBufferOffsetAlignment(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "minUniformBufferOffsetAlignment", 31, &n->minUniformBufferOffsetAlignment);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->minUniformBufferOffsetAlignment);
        }
    OUTPUT:
        RETVAL

uint32_t
minStorageBufferOffsetAlignment(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "minStorageBufferOffsetAlignment", 31, &n->minStorageBufferOffsetAlignment);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->minStorageBufferOffsetAlignment);
        }
    OUTPUT:
        RETVAL

uint32_t
maxVertexBuffers(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxVertexBuffers", 16, &n->maxVertexBuffers);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxVertexBuffers);
        }
    OUTPUT:
        RETVAL

uint64_t
maxBufferSize(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint64_t(aTHX_ h, "maxBufferSize", 13, &n->maxBufferSize);

        if (items > 1)
        {
            _set_uint64_t(aTHX_ value,/*-*/ (void *) &n->maxBufferSize);
        }
    OUTPUT:
        RETVAL

uint32_t
maxVertexAttributes(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxVertexAttributes", 19, &n->maxVertexAttributes);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxVertexAttributes);
        }
    OUTPUT:
        RETVAL

uint32_t
maxVertexBufferArrayStride(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxVertexBufferArrayStride", 26, &n->maxVertexBufferArrayStride);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxVertexBufferArrayStride);
        }
    OUTPUT:
        RETVAL

uint32_t
maxInterStageShaderComponents(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxInterStageShaderComponents", 29, &n->maxInterStageShaderComponents);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxInterStageShaderComponents);
        }
    OUTPUT:
        RETVAL

uint32_t
maxInterStageShaderVariables(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxInterStageShaderVariables", 28, &n->maxInterStageShaderVariables);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxInterStageShaderVariables);
        }
    OUTPUT:
        RETVAL

uint32_t
maxColorAttachments(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxColorAttachments", 19, &n->maxColorAttachments);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxColorAttachments);
        }
    OUTPUT:
        RETVAL

uint32_t
maxColorAttachmentBytesPerSample(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxColorAttachmentBytesPerSample", 32, &n->maxColorAttachmentBytesPerSample);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxColorAttachmentBytesPerSample);
        }
    OUTPUT:
        RETVAL

uint32_t
maxComputeWorkgroupStorageSize(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxComputeWorkgroupStorageSize", 30, &n->maxComputeWorkgroupStorageSize);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxComputeWorkgroupStorageSize);
        }
    OUTPUT:
        RETVAL

uint32_t
maxComputeInvocationsPerWorkgroup(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxComputeInvocationsPerWorkgroup", 33, &n->maxComputeInvocationsPerWorkgroup);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxComputeInvocationsPerWorkgroup);
        }
    OUTPUT:
        RETVAL

uint32_t
maxComputeWorkgroupSizeX(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeX", 24, &n->maxComputeWorkgroupSizeX);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxComputeWorkgroupSizeX);
        }
    OUTPUT:
        RETVAL

uint32_t
maxComputeWorkgroupSizeY(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeY", 24, &n->maxComputeWorkgroupSizeY);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxComputeWorkgroupSizeY);
        }
    OUTPUT:
        RETVAL

uint32_t
maxComputeWorkgroupSizeZ(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeZ", 24, &n->maxComputeWorkgroupSizeZ);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxComputeWorkgroupSizeZ);
        }
    OUTPUT:
        RETVAL

uint32_t
maxComputeWorkgroupsPerDimension(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPULimits");
        RETVAL = _find_set_uint32_t(aTHX_ h, "maxComputeWorkgroupsPerDimension", 32, &n->maxComputeWorkgroupsPerDimension);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->maxComputeWorkgroupsPerDimension);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__Limits__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::MultisampleState	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::MultisampleState THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUMultisampleState *n = (WGPUMultisampleState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUMultisampleState");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
count(THIS, value = NO_INIT)
        WebGPU::Direct::MultisampleState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUMultisampleState *n = (WGPUMultisampleState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUMultisampleState");
        RETVAL = _find_set_uint32_t(aTHX_ h, "count", 5, &n->count);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->count);
        }
    OUTPUT:
        RETVAL

uint32_t
mask(THIS, value = NO_INIT)
        WebGPU::Direct::MultisampleState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUMultisampleState *n = (WGPUMultisampleState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUMultisampleState");
        RETVAL = _find_set_uint32_t(aTHX_ h, "mask", 4, &n->mask);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->mask);
        }
    OUTPUT:
        RETVAL

bool
alphaToCoverageEnabled(THIS, value = NO_INIT)
        WebGPU::Direct::MultisampleState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUMultisampleState *n = (WGPUMultisampleState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUMultisampleState");
        RETVAL = _find_set_bool(aTHX_ h, "alphaToCoverageEnabled", 22, &n->alphaToCoverageEnabled);

        if (items > 1)
        {
            _set_bool(aTHX_ value,/*-*/ (void *) &n->alphaToCoverageEnabled);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__MultisampleState__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Origin3D	PREFIX = wgpu

uint32_t
x(THIS, value = NO_INIT)
        WebGPU::Direct::Origin3D THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUOrigin3D *n = (WGPUOrigin3D *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUOrigin3D");
        RETVAL = _find_set_uint32_t(aTHX_ h, "x", 1, &n->x);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->x);
        }
    OUTPUT:
        RETVAL

uint32_t
y(THIS, value = NO_INIT)
        WebGPU::Direct::Origin3D THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUOrigin3D *n = (WGPUOrigin3D *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUOrigin3D");
        RETVAL = _find_set_uint32_t(aTHX_ h, "y", 1, &n->y);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->y);
        }
    OUTPUT:
        RETVAL

uint32_t
z(THIS, value = NO_INIT)
        WebGPU::Direct::Origin3D THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUOrigin3D *n = (WGPUOrigin3D *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUOrigin3D");
        RETVAL = _find_set_uint32_t(aTHX_ h, "z", 1, &n->z);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->z);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__Origin3D__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::PipelineLayoutDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::PipelineLayoutDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPipelineLayoutDescriptor *n = (WGPUPipelineLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPipelineLayoutDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::PipelineLayoutDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPipelineLayoutDescriptor *n = (WGPUPipelineLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPipelineLayoutDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

uint32_t
bindGroupLayoutCount(THIS, value = NO_INIT)
        WebGPU::Direct::PipelineLayoutDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPipelineLayoutDescriptor *n = (WGPUPipelineLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPipelineLayoutDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "bindGroupLayoutCount", 20, &n->bindGroupLayoutCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->bindGroupLayoutCount);
        }
    OUTPUT:
        RETVAL

void *
bindGroupLayouts(THIS, value = NO_INIT)
        WebGPU::Direct::PipelineLayoutDescriptor THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPipelineLayoutDescriptor *n = (WGPUPipelineLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPipelineLayoutDescriptor");
        RETVAL = _find_set_void(aTHX_ h, "bindGroupLayouts", 16, &n->bindGroupLayouts, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->bindGroupLayouts, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__PipelineLayoutDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::PrimitiveDepthClipControl	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveDepthClipControl THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPrimitiveDepthClipControl *n = (WGPUPrimitiveDepthClipControl *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPrimitiveDepthClipControl");
        RETVAL = _find_set_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

bool
unclippedDepth(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveDepthClipControl THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPrimitiveDepthClipControl *n = (WGPUPrimitiveDepthClipControl *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPrimitiveDepthClipControl");
        RETVAL = _find_set_bool(aTHX_ h, "unclippedDepth", 14, &n->unclippedDepth);

        if (items > 1)
        {
            _set_bool(aTHX_ value,/*-*/ (void *) &n->unclippedDepth);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__PrimitiveDepthClipControl__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::PrimitiveState	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveState THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPrimitiveState *n = (WGPUPrimitiveState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPrimitiveState");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUPrimitiveTopology
topology(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPrimitiveState *n = (WGPUPrimitiveState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPrimitiveState");
        RETVAL = _find_set_enum(aTHX_ h, "topology", 8, &n->topology);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->topology);
        }
    OUTPUT:
        RETVAL

WGPUIndexFormat
stripIndexFormat(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPrimitiveState *n = (WGPUPrimitiveState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPrimitiveState");
        RETVAL = _find_set_enum(aTHX_ h, "stripIndexFormat", 16, &n->stripIndexFormat);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->stripIndexFormat);
        }
    OUTPUT:
        RETVAL

WGPUFrontFace
frontFace(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPrimitiveState *n = (WGPUPrimitiveState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPrimitiveState");
        RETVAL = _find_set_enum(aTHX_ h, "frontFace", 9, &n->frontFace);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->frontFace);
        }
    OUTPUT:
        RETVAL

WGPUCullMode
cullMode(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPrimitiveState *n = (WGPUPrimitiveState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUPrimitiveState");
        RETVAL = _find_set_enum(aTHX_ h, "cullMode", 8, &n->cullMode);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->cullMode);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__PrimitiveState__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::QuerySetDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::QuerySetDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUQuerySetDescriptor *n = (WGPUQuerySetDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUQuerySetDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::QuerySetDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUQuerySetDescriptor *n = (WGPUQuerySetDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUQuerySetDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

WGPUQueryType
type(THIS, value = NO_INIT)
        WebGPU::Direct::QuerySetDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUQuerySetDescriptor *n = (WGPUQuerySetDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUQuerySetDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "type", 4, &n->type);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->type);
        }
    OUTPUT:
        RETVAL

uint32_t
count(THIS, value = NO_INIT)
        WebGPU::Direct::QuerySetDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUQuerySetDescriptor *n = (WGPUQuerySetDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUQuerySetDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "count", 5, &n->count);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->count);
        }
    OUTPUT:
        RETVAL

WGPUPipelineStatisticName
pipelineStatistics(THIS, value = NO_INIT)
        WebGPU::Direct::QuerySetDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUQuerySetDescriptor *n = (WGPUQuerySetDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUQuerySetDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "pipelineStatistics", 18, &n->pipelineStatistics);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->pipelineStatistics);
        }
    OUTPUT:
        RETVAL

uint32_t
pipelineStatisticsCount(THIS, value = NO_INIT)
        WebGPU::Direct::QuerySetDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUQuerySetDescriptor *n = (WGPUQuerySetDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUQuerySetDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "pipelineStatisticsCount", 23, &n->pipelineStatisticsCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->pipelineStatisticsCount);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__QuerySetDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::QueueDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::QueueDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUQueueDescriptor *n = (WGPUQueueDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUQueueDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::QueueDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUQueueDescriptor *n = (WGPUQueueDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUQueueDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__QueueDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderBundleDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleDescriptor *n = (WGPURenderBundleDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleDescriptor *n = (WGPURenderBundleDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderBundleDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderBundleEncoderDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleEncoderDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleEncoderDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

uint32_t
colorFormatsCount(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleEncoderDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "colorFormatsCount", 17, &n->colorFormatsCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->colorFormatsCount);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
colorFormats(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleEncoderDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "colorFormats", 12, &n->colorFormats);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->colorFormats);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
depthStencilFormat(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleEncoderDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "depthStencilFormat", 18, &n->depthStencilFormat);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->depthStencilFormat);
        }
    OUTPUT:
        RETVAL

uint32_t
sampleCount(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleEncoderDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "sampleCount", 11, &n->sampleCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->sampleCount);
        }
    OUTPUT:
        RETVAL

bool
depthReadOnly(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleEncoderDescriptor");
        RETVAL = _find_set_bool(aTHX_ h, "depthReadOnly", 13, &n->depthReadOnly);

        if (items > 1)
        {
            _set_bool(aTHX_ value,/*-*/ (void *) &n->depthReadOnly);
        }
    OUTPUT:
        RETVAL

bool
stencilReadOnly(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderBundleEncoderDescriptor");
        RETVAL = _find_set_bool(aTHX_ h, "stencilReadOnly", 15, &n->stencilReadOnly);

        if (items > 1)
        {
            _set_bool(aTHX_ value,/*-*/ (void *) &n->stencilReadOnly);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderBundleEncoderDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPassDepthStencilAttachment	PREFIX = wgpu

void *
view(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDepthStencilAttachment");
        RETVAL = _find_set_void(aTHX_ h, "view", 4, &n->view, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->view, type_sv);
        }
    OUTPUT:
        RETVAL

WGPULoadOp
depthLoadOp(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDepthStencilAttachment");
        RETVAL = _find_set_enum(aTHX_ h, "depthLoadOp", 11, &n->depthLoadOp);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->depthLoadOp);
        }
    OUTPUT:
        RETVAL

WGPUStoreOp
depthStoreOp(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDepthStencilAttachment");
        RETVAL = _find_set_enum(aTHX_ h, "depthStoreOp", 12, &n->depthStoreOp);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->depthStoreOp);
        }
    OUTPUT:
        RETVAL

float
depthClearValue(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDepthStencilAttachment");
        RETVAL = _find_set_float(aTHX_ h, "depthClearValue", 15, &n->depthClearValue);

        if (items > 1)
        {
            _set_float(aTHX_ value,/*-*/ (void *) &n->depthClearValue);
        }
    OUTPUT:
        RETVAL

bool
depthReadOnly(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDepthStencilAttachment");
        RETVAL = _find_set_bool(aTHX_ h, "depthReadOnly", 13, &n->depthReadOnly);

        if (items > 1)
        {
            _set_bool(aTHX_ value,/*-*/ (void *) &n->depthReadOnly);
        }
    OUTPUT:
        RETVAL

WGPULoadOp
stencilLoadOp(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDepthStencilAttachment");
        RETVAL = _find_set_enum(aTHX_ h, "stencilLoadOp", 13, &n->stencilLoadOp);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->stencilLoadOp);
        }
    OUTPUT:
        RETVAL

WGPUStoreOp
stencilStoreOp(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDepthStencilAttachment");
        RETVAL = _find_set_enum(aTHX_ h, "stencilStoreOp", 14, &n->stencilStoreOp);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->stencilStoreOp);
        }
    OUTPUT:
        RETVAL

uint32_t
stencilClearValue(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDepthStencilAttachment");
        RETVAL = _find_set_uint32_t(aTHX_ h, "stencilClearValue", 17, &n->stencilClearValue);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->stencilClearValue);
        }
    OUTPUT:
        RETVAL

bool
stencilReadOnly(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDepthStencilAttachment");
        RETVAL = _find_set_bool(aTHX_ h, "stencilReadOnly", 15, &n->stencilReadOnly);

        if (items > 1)
        {
            _set_bool(aTHX_ value,/*-*/ (void *) &n->stencilReadOnly);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassDepthStencilAttachment__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPassDescriptorMaxDrawCount	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptorMaxDrawCount THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptorMaxDrawCount *n = (WGPURenderPassDescriptorMaxDrawCount *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptorMaxDrawCount");
        RETVAL = _find_set_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
maxDrawCount(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptorMaxDrawCount THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptorMaxDrawCount *n = (WGPURenderPassDescriptorMaxDrawCount *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptorMaxDrawCount");
        RETVAL = _find_set_uint64_t(aTHX_ h, "maxDrawCount", 12, &n->maxDrawCount);

        if (items > 1)
        {
            _set_uint64_t(aTHX_ value,/*-*/ (void *) &n->maxDrawCount);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassDescriptorMaxDrawCount__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPassTimestampWrite	PREFIX = wgpu

void *
querySet(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassTimestampWrite THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassTimestampWrite *n = (WGPURenderPassTimestampWrite *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassTimestampWrite");
        RETVAL = _find_set_void(aTHX_ h, "querySet", 8, &n->querySet, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->querySet, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
queryIndex(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassTimestampWrite THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassTimestampWrite *n = (WGPURenderPassTimestampWrite *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassTimestampWrite");
        RETVAL = _find_set_uint32_t(aTHX_ h, "queryIndex", 10, &n->queryIndex);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->queryIndex);
        }
    OUTPUT:
        RETVAL

WGPURenderPassTimestampLocation
location(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassTimestampWrite THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassTimestampWrite *n = (WGPURenderPassTimestampWrite *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassTimestampWrite");
        RETVAL = _find_set_enum(aTHX_ h, "location", 8, &n->location);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->location);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassTimestampWrite__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RequestAdapterOptions	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::RequestAdapterOptions THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURequestAdapterOptions *n = (WGPURequestAdapterOptions *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURequestAdapterOptions");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

void *
compatibleSurface(THIS, value = NO_INIT)
        WebGPU::Direct::RequestAdapterOptions THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURequestAdapterOptions *n = (WGPURequestAdapterOptions *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURequestAdapterOptions");
        RETVAL = _find_set_void(aTHX_ h, "compatibleSurface", 17, &n->compatibleSurface, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->compatibleSurface, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUPowerPreference
powerPreference(THIS, value = NO_INIT)
        WebGPU::Direct::RequestAdapterOptions THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURequestAdapterOptions *n = (WGPURequestAdapterOptions *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURequestAdapterOptions");
        RETVAL = _find_set_enum(aTHX_ h, "powerPreference", 15, &n->powerPreference);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->powerPreference);
        }
    OUTPUT:
        RETVAL

bool
forceFallbackAdapter(THIS, value = NO_INIT)
        WebGPU::Direct::RequestAdapterOptions THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURequestAdapterOptions *n = (WGPURequestAdapterOptions *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURequestAdapterOptions");
        RETVAL = _find_set_bool(aTHX_ h, "forceFallbackAdapter", 20, &n->forceFallbackAdapter);

        if (items > 1)
        {
            _set_bool(aTHX_ value,/*-*/ (void *) &n->forceFallbackAdapter);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RequestAdapterOptions__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SamplerBindingLayout	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerBindingLayout THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerBindingLayout *n = (WGPUSamplerBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerBindingLayout");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUSamplerBindingType
type(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerBindingLayout THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerBindingLayout *n = (WGPUSamplerBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerBindingLayout");
        RETVAL = _find_set_enum(aTHX_ h, "type", 4, &n->type);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->type);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SamplerBindingLayout__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SamplerDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

WGPUAddressMode
addressModeU(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "addressModeU", 12, &n->addressModeU);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->addressModeU);
        }
    OUTPUT:
        RETVAL

WGPUAddressMode
addressModeV(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "addressModeV", 12, &n->addressModeV);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->addressModeV);
        }
    OUTPUT:
        RETVAL

WGPUAddressMode
addressModeW(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "addressModeW", 12, &n->addressModeW);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->addressModeW);
        }
    OUTPUT:
        RETVAL

WGPUFilterMode
magFilter(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "magFilter", 9, &n->magFilter);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->magFilter);
        }
    OUTPUT:
        RETVAL

WGPUFilterMode
minFilter(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "minFilter", 9, &n->minFilter);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->minFilter);
        }
    OUTPUT:
        RETVAL

WGPUMipmapFilterMode
mipmapFilter(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "mipmapFilter", 12, &n->mipmapFilter);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->mipmapFilter);
        }
    OUTPUT:
        RETVAL

float
lodMinClamp(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_set_float(aTHX_ h, "lodMinClamp", 11, &n->lodMinClamp);

        if (items > 1)
        {
            _set_float(aTHX_ value,/*-*/ (void *) &n->lodMinClamp);
        }
    OUTPUT:
        RETVAL

float
lodMaxClamp(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_set_float(aTHX_ h, "lodMaxClamp", 11, &n->lodMaxClamp);

        if (items > 1)
        {
            _set_float(aTHX_ value,/*-*/ (void *) &n->lodMaxClamp);
        }
    OUTPUT:
        RETVAL

WGPUCompareFunction
compare(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "compare", 7, &n->compare);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->compare);
        }
    OUTPUT:
        RETVAL

uint16_t
maxAnisotropy(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSamplerDescriptor");
        RETVAL = _find_set_uint16_t(aTHX_ h, "maxAnisotropy", 13, &n->maxAnisotropy);

        if (items > 1)
        {
            _set_uint16_t(aTHX_ value,/*-*/ (void *) &n->maxAnisotropy);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SamplerDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ShaderModuleCompilationHint	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleCompilationHint THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleCompilationHint *n = (WGPUShaderModuleCompilationHint *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleCompilationHint");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
entryPoint(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleCompilationHint THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleCompilationHint *n = (WGPUShaderModuleCompilationHint *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleCompilationHint");
        RETVAL = _find_set_str(aTHX_ h, "entryPoint", 10, &n->entryPoint);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->entryPoint);
        }
    OUTPUT:
        RETVAL

void *
layout(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleCompilationHint THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleCompilationHint *n = (WGPUShaderModuleCompilationHint *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleCompilationHint");
        RETVAL = _find_set_void(aTHX_ h, "layout", 6, &n->layout, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->layout, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ShaderModuleCompilationHint__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ShaderModuleSPIRVDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleSPIRVDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleSPIRVDescriptor *n = (WGPUShaderModuleSPIRVDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleSPIRVDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
codeSize(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleSPIRVDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleSPIRVDescriptor *n = (WGPUShaderModuleSPIRVDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleSPIRVDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "codeSize", 8, &n->codeSize);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->codeSize);
        }
    OUTPUT:
        RETVAL

uint32_t
code(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleSPIRVDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleSPIRVDescriptor *n = (WGPUShaderModuleSPIRVDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleSPIRVDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "code", 4, &n->code);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->code);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ShaderModuleSPIRVDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ShaderModuleWGSLDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleWGSLDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleWGSLDescriptor *n = (WGPUShaderModuleWGSLDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleWGSLDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
code(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleWGSLDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleWGSLDescriptor *n = (WGPUShaderModuleWGSLDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleWGSLDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "code", 4, &n->code);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->code);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ShaderModuleWGSLDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::StencilFaceState	PREFIX = wgpu

WGPUCompareFunction
compare(THIS, value = NO_INIT)
        WebGPU::Direct::StencilFaceState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUStencilFaceState *n = (WGPUStencilFaceState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUStencilFaceState");
        RETVAL = _find_set_enum(aTHX_ h, "compare", 7, &n->compare);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->compare);
        }
    OUTPUT:
        RETVAL

WGPUStencilOperation
failOp(THIS, value = NO_INIT)
        WebGPU::Direct::StencilFaceState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUStencilFaceState *n = (WGPUStencilFaceState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUStencilFaceState");
        RETVAL = _find_set_enum(aTHX_ h, "failOp", 6, &n->failOp);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->failOp);
        }
    OUTPUT:
        RETVAL

WGPUStencilOperation
depthFailOp(THIS, value = NO_INIT)
        WebGPU::Direct::StencilFaceState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUStencilFaceState *n = (WGPUStencilFaceState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUStencilFaceState");
        RETVAL = _find_set_enum(aTHX_ h, "depthFailOp", 11, &n->depthFailOp);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->depthFailOp);
        }
    OUTPUT:
        RETVAL

WGPUStencilOperation
passOp(THIS, value = NO_INIT)
        WebGPU::Direct::StencilFaceState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUStencilFaceState *n = (WGPUStencilFaceState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUStencilFaceState");
        RETVAL = _find_set_enum(aTHX_ h, "passOp", 6, &n->passOp);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->passOp);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__StencilFaceState__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::StorageTextureBindingLayout	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::StorageTextureBindingLayout THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUStorageTextureBindingLayout *n = (WGPUStorageTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUStorageTextureBindingLayout");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUStorageTextureAccess
access(THIS, value = NO_INIT)
        WebGPU::Direct::StorageTextureBindingLayout THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUStorageTextureBindingLayout *n = (WGPUStorageTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUStorageTextureBindingLayout");
        RETVAL = _find_set_enum(aTHX_ h, "access", 6, &n->access);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->access);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::StorageTextureBindingLayout THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUStorageTextureBindingLayout *n = (WGPUStorageTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUStorageTextureBindingLayout");
        RETVAL = _find_set_enum(aTHX_ h, "format", 6, &n->format);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->format);
        }
    OUTPUT:
        RETVAL

WGPUTextureViewDimension
viewDimension(THIS, value = NO_INIT)
        WebGPU::Direct::StorageTextureBindingLayout THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUStorageTextureBindingLayout *n = (WGPUStorageTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUStorageTextureBindingLayout");
        RETVAL = _find_set_enum(aTHX_ h, "viewDimension", 13, &n->viewDimension);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->viewDimension);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__StorageTextureBindingLayout__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptor *n = (WGPUSurfaceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptor *n = (WGPUSurfaceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromAndroidNativeWindow *n = (WGPUSurfaceDescriptorFromAndroidNativeWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromAndroidNativeWindow");
        RETVAL = _find_set_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

void *
window(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromAndroidNativeWindow *n = (WGPUSurfaceDescriptorFromAndroidNativeWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromAndroidNativeWindow");
        RETVAL = _find_set_void(aTHX_ h, "window", 6, &n->window, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->window, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromAndroidNativeWindow__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromCanvasHTMLSelector *n = (WGPUSurfaceDescriptorFromCanvasHTMLSelector *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromCanvasHTMLSelector");
        RETVAL = _find_set_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
selector(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromCanvasHTMLSelector *n = (WGPUSurfaceDescriptorFromCanvasHTMLSelector *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromCanvasHTMLSelector");
        RETVAL = _find_set_str(aTHX_ h, "selector", 8, &n->selector);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->selector);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromCanvasHTMLSelector__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromMetalLayer	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromMetalLayer THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromMetalLayer *n = (WGPUSurfaceDescriptorFromMetalLayer *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromMetalLayer");
        RETVAL = _find_set_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

void *
layer(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromMetalLayer THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromMetalLayer *n = (WGPUSurfaceDescriptorFromMetalLayer *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromMetalLayer");
        RETVAL = _find_set_void(aTHX_ h, "layer", 5, &n->layer, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->layer, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromMetalLayer__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromWaylandSurface	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromWaylandSurface THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromWaylandSurface *n = (WGPUSurfaceDescriptorFromWaylandSurface *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromWaylandSurface");
        RETVAL = _find_set_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

void *
display(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromWaylandSurface THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromWaylandSurface *n = (WGPUSurfaceDescriptorFromWaylandSurface *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromWaylandSurface");
        RETVAL = _find_set_void(aTHX_ h, "display", 7, &n->display, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->display, type_sv);
        }
    OUTPUT:
        RETVAL

void *
surface(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromWaylandSurface THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromWaylandSurface *n = (WGPUSurfaceDescriptorFromWaylandSurface *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromWaylandSurface");
        RETVAL = _find_set_void(aTHX_ h, "surface", 7, &n->surface, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->surface, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromWaylandSurface__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromWindowsHWND	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromWindowsHWND THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromWindowsHWND *n = (WGPUSurfaceDescriptorFromWindowsHWND *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromWindowsHWND");
        RETVAL = _find_set_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

void *
hinstance(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromWindowsHWND THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromWindowsHWND *n = (WGPUSurfaceDescriptorFromWindowsHWND *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromWindowsHWND");
        RETVAL = _find_set_void(aTHX_ h, "hinstance", 9, &n->hinstance, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->hinstance, type_sv);
        }
    OUTPUT:
        RETVAL

void *
hwnd(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromWindowsHWND THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromWindowsHWND *n = (WGPUSurfaceDescriptorFromWindowsHWND *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromWindowsHWND");
        RETVAL = _find_set_void(aTHX_ h, "hwnd", 4, &n->hwnd, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->hwnd, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromWindowsHWND__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromXcbWindow	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromXcbWindow THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromXcbWindow *n = (WGPUSurfaceDescriptorFromXcbWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromXcbWindow");
        RETVAL = _find_set_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

void *
connection(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromXcbWindow THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromXcbWindow *n = (WGPUSurfaceDescriptorFromXcbWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromXcbWindow");
        RETVAL = _find_set_void(aTHX_ h, "connection", 10, &n->connection, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->connection, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
window(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromXcbWindow THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromXcbWindow *n = (WGPUSurfaceDescriptorFromXcbWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromXcbWindow");
        RETVAL = _find_set_uint32_t(aTHX_ h, "window", 6, &n->window);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->window);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromXcbWindow__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromXlibWindow	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromXlibWindow THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromXlibWindow *n = (WGPUSurfaceDescriptorFromXlibWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromXlibWindow");
        RETVAL = _find_set_obj(aTHX_ h, "chain", 5, &n->chain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->chain, type_sv);
        }
    OUTPUT:
        RETVAL

void *
display(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromXlibWindow THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromXlibWindow *n = (WGPUSurfaceDescriptorFromXlibWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromXlibWindow");
        RETVAL = _find_set_void(aTHX_ h, "display", 7, &n->display, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->display, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
window(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromXlibWindow THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromXlibWindow *n = (WGPUSurfaceDescriptorFromXlibWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSurfaceDescriptorFromXlibWindow");
        RETVAL = _find_set_uint32_t(aTHX_ h, "window", 6, &n->window);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->window);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromXlibWindow__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SwapChainDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSwapChainDescriptor *n = (WGPUSwapChainDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSwapChainDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSwapChainDescriptor *n = (WGPUSwapChainDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSwapChainDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

WGPUTextureUsageFlags
usage(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSwapChainDescriptor *n = (WGPUSwapChainDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSwapChainDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "usage", 5, &n->usage);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->usage);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSwapChainDescriptor *n = (WGPUSwapChainDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSwapChainDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "format", 6, &n->format);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->format);
        }
    OUTPUT:
        RETVAL

uint32_t
width(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSwapChainDescriptor *n = (WGPUSwapChainDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSwapChainDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "width", 5, &n->width);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->width);
        }
    OUTPUT:
        RETVAL

uint32_t
height(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSwapChainDescriptor *n = (WGPUSwapChainDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSwapChainDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "height", 6, &n->height);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->height);
        }
    OUTPUT:
        RETVAL

WGPUPresentMode
presentMode(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSwapChainDescriptor *n = (WGPUSwapChainDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSwapChainDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "presentMode", 11, &n->presentMode);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->presentMode);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SwapChainDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::TextureBindingLayout	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::TextureBindingLayout THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureBindingLayout *n = (WGPUTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureBindingLayout");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureSampleType
sampleType(THIS, value = NO_INIT)
        WebGPU::Direct::TextureBindingLayout THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureBindingLayout *n = (WGPUTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureBindingLayout");
        RETVAL = _find_set_enum(aTHX_ h, "sampleType", 10, &n->sampleType);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->sampleType);
        }
    OUTPUT:
        RETVAL

WGPUTextureViewDimension
viewDimension(THIS, value = NO_INIT)
        WebGPU::Direct::TextureBindingLayout THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureBindingLayout *n = (WGPUTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureBindingLayout");
        RETVAL = _find_set_enum(aTHX_ h, "viewDimension", 13, &n->viewDimension);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->viewDimension);
        }
    OUTPUT:
        RETVAL

bool
multisampled(THIS, value = NO_INIT)
        WebGPU::Direct::TextureBindingLayout THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureBindingLayout *n = (WGPUTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureBindingLayout");
        RETVAL = _find_set_bool(aTHX_ h, "multisampled", 12, &n->multisampled);

        if (items > 1)
        {
            _set_bool(aTHX_ value,/*-*/ (void *) &n->multisampled);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__TextureBindingLayout__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::TextureDataLayout	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDataLayout THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDataLayout *n = (WGPUTextureDataLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDataLayout");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

uint64_t
offset(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDataLayout THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDataLayout *n = (WGPUTextureDataLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDataLayout");
        RETVAL = _find_set_uint64_t(aTHX_ h, "offset", 6, &n->offset);

        if (items > 1)
        {
            _set_uint64_t(aTHX_ value,/*-*/ (void *) &n->offset);
        }
    OUTPUT:
        RETVAL

uint32_t
bytesPerRow(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDataLayout THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDataLayout *n = (WGPUTextureDataLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDataLayout");
        RETVAL = _find_set_uint32_t(aTHX_ h, "bytesPerRow", 11, &n->bytesPerRow);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->bytesPerRow);
        }
    OUTPUT:
        RETVAL

uint32_t
rowsPerImage(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDataLayout THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDataLayout *n = (WGPUTextureDataLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDataLayout");
        RETVAL = _find_set_uint32_t(aTHX_ h, "rowsPerImage", 12, &n->rowsPerImage);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->rowsPerImage);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__TextureDataLayout__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::TextureViewDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureViewDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureViewDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureViewDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "format", 6, &n->format);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->format);
        }
    OUTPUT:
        RETVAL

WGPUTextureViewDimension
dimension(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureViewDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "dimension", 9, &n->dimension);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->dimension);
        }
    OUTPUT:
        RETVAL

uint32_t
baseMipLevel(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureViewDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "baseMipLevel", 12, &n->baseMipLevel);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->baseMipLevel);
        }
    OUTPUT:
        RETVAL

uint32_t
mipLevelCount(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureViewDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "mipLevelCount", 13, &n->mipLevelCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->mipLevelCount);
        }
    OUTPUT:
        RETVAL

uint32_t
baseArrayLayer(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureViewDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "baseArrayLayer", 14, &n->baseArrayLayer);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->baseArrayLayer);
        }
    OUTPUT:
        RETVAL

uint32_t
arrayLayerCount(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureViewDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "arrayLayerCount", 15, &n->arrayLayerCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->arrayLayerCount);
        }
    OUTPUT:
        RETVAL

WGPUTextureAspect
aspect(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureViewDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "aspect", 6, &n->aspect);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->aspect);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__TextureViewDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::VertexAttribute	PREFIX = wgpu

WGPUVertexFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::VertexAttribute THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexAttribute *n = (WGPUVertexAttribute *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexAttribute");
        RETVAL = _find_set_enum(aTHX_ h, "format", 6, &n->format);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->format);
        }
    OUTPUT:
        RETVAL

uint64_t
offset(THIS, value = NO_INIT)
        WebGPU::Direct::VertexAttribute THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexAttribute *n = (WGPUVertexAttribute *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexAttribute");
        RETVAL = _find_set_uint64_t(aTHX_ h, "offset", 6, &n->offset);

        if (items > 1)
        {
            _set_uint64_t(aTHX_ value,/*-*/ (void *) &n->offset);
        }
    OUTPUT:
        RETVAL

uint32_t
shaderLocation(THIS, value = NO_INIT)
        WebGPU::Direct::VertexAttribute THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexAttribute *n = (WGPUVertexAttribute *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexAttribute");
        RETVAL = _find_set_uint32_t(aTHX_ h, "shaderLocation", 14, &n->shaderLocation);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->shaderLocation);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__VertexAttribute__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroupDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupDescriptor *n = (WGPUBindGroupDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupDescriptor *n = (WGPUBindGroupDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

void *
layout(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupDescriptor THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupDescriptor *n = (WGPUBindGroupDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupDescriptor");
        RETVAL = _find_set_void(aTHX_ h, "layout", 6, &n->layout, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->layout, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
entryCount(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupDescriptor *n = (WGPUBindGroupDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "entryCount", 10, &n->entryCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->entryCount);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::BindGroupEntry
entries(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupDescriptor THIS
        WebGPU::Direct::BindGroupEntry value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupDescriptor *n = (WGPUBindGroupDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "entries", 7, &n->entries, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->entries, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BindGroupDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroupLayoutEntry	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutEntry THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupLayoutEntry *n = (WGPUBindGroupLayoutEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutEntry");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
binding(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutEntry THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupLayoutEntry *n = (WGPUBindGroupLayoutEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutEntry");
        RETVAL = _find_set_uint32_t(aTHX_ h, "binding", 7, &n->binding);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->binding);
        }
    OUTPUT:
        RETVAL

WGPUShaderStageFlags
visibility(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutEntry THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupLayoutEntry *n = (WGPUBindGroupLayoutEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutEntry");
        RETVAL = _find_set_uint32_t(aTHX_ h, "visibility", 10, &n->visibility);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->visibility);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::BufferBindingLayout
buffer(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutEntry THIS
        WebGPU::Direct::BufferBindingLayout value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupLayoutEntry *n = (WGPUBindGroupLayoutEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutEntry");
        RETVAL = _find_set_obj(aTHX_ h, "buffer", 6, &n->buffer, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->buffer, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::SamplerBindingLayout
sampler(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutEntry THIS
        WebGPU::Direct::SamplerBindingLayout value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupLayoutEntry *n = (WGPUBindGroupLayoutEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutEntry");
        RETVAL = _find_set_obj(aTHX_ h, "sampler", 7, &n->sampler, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->sampler, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::TextureBindingLayout
texture(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutEntry THIS
        WebGPU::Direct::TextureBindingLayout value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupLayoutEntry *n = (WGPUBindGroupLayoutEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutEntry");
        RETVAL = _find_set_obj(aTHX_ h, "texture", 7, &n->texture, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->texture, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::StorageTextureBindingLayout
storageTexture(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutEntry THIS
        WebGPU::Direct::StorageTextureBindingLayout value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupLayoutEntry *n = (WGPUBindGroupLayoutEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutEntry");
        RETVAL = _find_set_obj(aTHX_ h, "storageTexture", 14, &n->storageTexture, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->storageTexture, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BindGroupLayoutEntry__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BlendState	PREFIX = wgpu

WebGPU::Direct::BlendComponent
color(THIS, value = NO_INIT)
        WebGPU::Direct::BlendState THIS
        WebGPU::Direct::BlendComponent value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBlendState *n = (WGPUBlendState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBlendState");
        RETVAL = _find_set_obj(aTHX_ h, "color", 5, &n->color, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->color, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::BlendComponent
alpha(THIS, value = NO_INIT)
        WebGPU::Direct::BlendState THIS
        WebGPU::Direct::BlendComponent value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBlendState *n = (WGPUBlendState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBlendState");
        RETVAL = _find_set_obj(aTHX_ h, "alpha", 5, &n->alpha, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->alpha, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BlendState__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CompilationInfo	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationInfo THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationInfo *n = (WGPUCompilationInfo *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationInfo");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
messageCount(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationInfo THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationInfo *n = (WGPUCompilationInfo *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationInfo");
        RETVAL = _find_set_uint32_t(aTHX_ h, "messageCount", 12, &n->messageCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->messageCount);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::CompilationMessage
messages(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationInfo THIS
        WebGPU::Direct::CompilationMessage value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationInfo *n = (WGPUCompilationInfo *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUCompilationInfo");
        RETVAL = _find_set_obj(aTHX_ h, "messages", 8, &n->messages, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->messages, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__CompilationInfo__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ComputePassDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePassDescriptor *n = (WGPUComputePassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePassDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePassDescriptor *n = (WGPUComputePassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePassDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

uint32_t
timestampWriteCount(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePassDescriptor *n = (WGPUComputePassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePassDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "timestampWriteCount", 19, &n->timestampWriteCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->timestampWriteCount);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::ComputePassTimestampWrite
timestampWrites(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassDescriptor THIS
        WebGPU::Direct::ComputePassTimestampWrite value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePassDescriptor *n = (WGPUComputePassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePassDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "timestampWrites", 15, &n->timestampWrites, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->timestampWrites, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ComputePassDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::DepthStencilState	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_set_enum(aTHX_ h, "format", 6, &n->format);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->format);
        }
    OUTPUT:
        RETVAL

bool
depthWriteEnabled(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_set_bool(aTHX_ h, "depthWriteEnabled", 17, &n->depthWriteEnabled);

        if (items > 1)
        {
            _set_bool(aTHX_ value,/*-*/ (void *) &n->depthWriteEnabled);
        }
    OUTPUT:
        RETVAL

WGPUCompareFunction
depthCompare(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_set_enum(aTHX_ h, "depthCompare", 12, &n->depthCompare);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->depthCompare);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::StencilFaceState
stencilFront(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        WebGPU::Direct::StencilFaceState value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_set_obj(aTHX_ h, "stencilFront", 12, &n->stencilFront, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->stencilFront, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::StencilFaceState
stencilBack(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        WebGPU::Direct::StencilFaceState value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_set_obj(aTHX_ h, "stencilBack", 11, &n->stencilBack, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->stencilBack, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
stencilReadMask(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_set_uint32_t(aTHX_ h, "stencilReadMask", 15, &n->stencilReadMask);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->stencilReadMask);
        }
    OUTPUT:
        RETVAL

uint32_t
stencilWriteMask(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_set_uint32_t(aTHX_ h, "stencilWriteMask", 16, &n->stencilWriteMask);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->stencilWriteMask);
        }
    OUTPUT:
        RETVAL

int32_t
depthBias(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_set_int32_t(aTHX_ h, "depthBias", 9, &n->depthBias);

        if (items > 1)
        {
            _set_int32_t(aTHX_ value,/*-*/ (void *) &n->depthBias);
        }
    OUTPUT:
        RETVAL

float
depthBiasSlopeScale(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_set_float(aTHX_ h, "depthBiasSlopeScale", 19, &n->depthBiasSlopeScale);

        if (items > 1)
        {
            _set_float(aTHX_ value,/*-*/ (void *) &n->depthBiasSlopeScale);
        }
    OUTPUT:
        RETVAL

float
depthBiasClamp(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDepthStencilState");
        RETVAL = _find_set_float(aTHX_ h, "depthBiasClamp", 14, &n->depthBiasClamp);

        if (items > 1)
        {
            _set_float(aTHX_ value,/*-*/ (void *) &n->depthBiasClamp);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__DepthStencilState__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ImageCopyBuffer	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyBuffer THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUImageCopyBuffer *n = (WGPUImageCopyBuffer *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUImageCopyBuffer");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::TextureDataLayout
layout(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyBuffer THIS
        WebGPU::Direct::TextureDataLayout value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUImageCopyBuffer *n = (WGPUImageCopyBuffer *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUImageCopyBuffer");
        RETVAL = _find_set_obj(aTHX_ h, "layout", 6, &n->layout, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->layout, type_sv);
        }
    OUTPUT:
        RETVAL

void *
buffer(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyBuffer THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUImageCopyBuffer *n = (WGPUImageCopyBuffer *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUImageCopyBuffer");
        RETVAL = _find_set_void(aTHX_ h, "buffer", 6, &n->buffer, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->buffer, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ImageCopyBuffer__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ImageCopyTexture	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyTexture THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUImageCopyTexture *n = (WGPUImageCopyTexture *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUImageCopyTexture");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

void *
texture(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyTexture THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUImageCopyTexture *n = (WGPUImageCopyTexture *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUImageCopyTexture");
        RETVAL = _find_set_void(aTHX_ h, "texture", 7, &n->texture, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->texture, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
mipLevel(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyTexture THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUImageCopyTexture *n = (WGPUImageCopyTexture *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUImageCopyTexture");
        RETVAL = _find_set_uint32_t(aTHX_ h, "mipLevel", 8, &n->mipLevel);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->mipLevel);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::Origin3D
origin(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyTexture THIS
        WebGPU::Direct::Origin3D value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUImageCopyTexture *n = (WGPUImageCopyTexture *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUImageCopyTexture");
        RETVAL = _find_set_obj(aTHX_ h, "origin", 6, &n->origin, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->origin, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureAspect
aspect(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyTexture THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUImageCopyTexture *n = (WGPUImageCopyTexture *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUImageCopyTexture");
        RETVAL = _find_set_enum(aTHX_ h, "aspect", 6, &n->aspect);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->aspect);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ImageCopyTexture__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ProgrammableStageDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ProgrammableStageDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUProgrammableStageDescriptor *n = (WGPUProgrammableStageDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUProgrammableStageDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

void *
module(THIS, value = NO_INIT)
        WebGPU::Direct::ProgrammableStageDescriptor THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUProgrammableStageDescriptor *n = (WGPUProgrammableStageDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUProgrammableStageDescriptor");
        RETVAL = _find_set_void(aTHX_ h, "module", 6, &n->module, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->module, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
entryPoint(THIS, value = NO_INIT)
        WebGPU::Direct::ProgrammableStageDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUProgrammableStageDescriptor *n = (WGPUProgrammableStageDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUProgrammableStageDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "entryPoint", 10, &n->entryPoint);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->entryPoint);
        }
    OUTPUT:
        RETVAL

uint32_t
constantCount(THIS, value = NO_INIT)
        WebGPU::Direct::ProgrammableStageDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUProgrammableStageDescriptor *n = (WGPUProgrammableStageDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUProgrammableStageDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "constantCount", 13, &n->constantCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->constantCount);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::ConstantEntry
constants(THIS, value = NO_INIT)
        WebGPU::Direct::ProgrammableStageDescriptor THIS
        WebGPU::Direct::ConstantEntry value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUProgrammableStageDescriptor *n = (WGPUProgrammableStageDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUProgrammableStageDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "constants", 9, &n->constants, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->constants, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ProgrammableStageDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPassColorAttachment	PREFIX = wgpu

void *
view(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassColorAttachment THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassColorAttachment *n = (WGPURenderPassColorAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassColorAttachment");
        RETVAL = _find_set_void(aTHX_ h, "view", 4, &n->view, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->view, type_sv);
        }
    OUTPUT:
        RETVAL

void *
resolveTarget(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassColorAttachment THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassColorAttachment *n = (WGPURenderPassColorAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassColorAttachment");
        RETVAL = _find_set_void(aTHX_ h, "resolveTarget", 13, &n->resolveTarget, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->resolveTarget, type_sv);
        }
    OUTPUT:
        RETVAL

WGPULoadOp
loadOp(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassColorAttachment THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassColorAttachment *n = (WGPURenderPassColorAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassColorAttachment");
        RETVAL = _find_set_enum(aTHX_ h, "loadOp", 6, &n->loadOp);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->loadOp);
        }
    OUTPUT:
        RETVAL

WGPUStoreOp
storeOp(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassColorAttachment THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassColorAttachment *n = (WGPURenderPassColorAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassColorAttachment");
        RETVAL = _find_set_enum(aTHX_ h, "storeOp", 7, &n->storeOp);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->storeOp);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::Color
clearValue(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassColorAttachment THIS
        WebGPU::Direct::Color value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassColorAttachment *n = (WGPURenderPassColorAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassColorAttachment");
        RETVAL = _find_set_obj(aTHX_ h, "clearValue", 10, &n->clearValue, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->clearValue, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassColorAttachment__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RequiredLimits	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::RequiredLimits THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURequiredLimits *n = (WGPURequiredLimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURequiredLimits");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::Limits
limits(THIS, value = NO_INIT)
        WebGPU::Direct::RequiredLimits THIS
        WebGPU::Direct::Limits value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURequiredLimits *n = (WGPURequiredLimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURequiredLimits");
        RETVAL = _find_set_obj(aTHX_ h, "limits", 6, &n->limits, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->limits, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RequiredLimits__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ShaderModuleDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleDescriptor *n = (WGPUShaderModuleDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleDescriptor *n = (WGPUShaderModuleDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

uint32_t
hintCount(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleDescriptor *n = (WGPUShaderModuleDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "hintCount", 9, &n->hintCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->hintCount);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::ShaderModuleCompilationHint
hints(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleDescriptor THIS
        WebGPU::Direct::ShaderModuleCompilationHint value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleDescriptor *n = (WGPUShaderModuleDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUShaderModuleDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "hints", 5, &n->hints, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->hints, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ShaderModuleDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SupportedLimits	PREFIX = wgpu

WebGPU::Direct::ChainedStructOut
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::SupportedLimits THIS
        WebGPU::Direct::ChainedStructOut value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSupportedLimits *n = (WGPUSupportedLimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSupportedLimits");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::Limits
limits(THIS, value = NO_INIT)
        WebGPU::Direct::SupportedLimits THIS
        WebGPU::Direct::Limits value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSupportedLimits *n = (WGPUSupportedLimits *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUSupportedLimits");
        RETVAL = _find_set_obj(aTHX_ h, "limits", 6, &n->limits, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->limits, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SupportedLimits__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::TextureDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

WGPUTextureUsageFlags
usage(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "usage", 5, &n->usage);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->usage);
        }
    OUTPUT:
        RETVAL

WGPUTextureDimension
dimension(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "dimension", 9, &n->dimension);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->dimension);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::Extent3D
size(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        WebGPU::Direct::Extent3D value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "size", 4, &n->size, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->size, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "format", 6, &n->format);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->format);
        }
    OUTPUT:
        RETVAL

uint32_t
mipLevelCount(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "mipLevelCount", 13, &n->mipLevelCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->mipLevelCount);
        }
    OUTPUT:
        RETVAL

uint32_t
sampleCount(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "sampleCount", 11, &n->sampleCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->sampleCount);
        }
    OUTPUT:
        RETVAL

uint32_t
viewFormatCount(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "viewFormatCount", 15, &n->viewFormatCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->viewFormatCount);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
viewFormats(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUTextureDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "viewFormats", 11, &n->viewFormats);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->viewFormats);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__TextureDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::VertexBufferLayout	PREFIX = wgpu

uint64_t
arrayStride(THIS, value = NO_INIT)
        WebGPU::Direct::VertexBufferLayout THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexBufferLayout *n = (WGPUVertexBufferLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexBufferLayout");
        RETVAL = _find_set_uint64_t(aTHX_ h, "arrayStride", 11, &n->arrayStride);

        if (items > 1)
        {
            _set_uint64_t(aTHX_ value,/*-*/ (void *) &n->arrayStride);
        }
    OUTPUT:
        RETVAL

WGPUVertexStepMode
stepMode(THIS, value = NO_INIT)
        WebGPU::Direct::VertexBufferLayout THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexBufferLayout *n = (WGPUVertexBufferLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexBufferLayout");
        RETVAL = _find_set_enum(aTHX_ h, "stepMode", 8, &n->stepMode);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->stepMode);
        }
    OUTPUT:
        RETVAL

uint32_t
attributeCount(THIS, value = NO_INIT)
        WebGPU::Direct::VertexBufferLayout THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexBufferLayout *n = (WGPUVertexBufferLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexBufferLayout");
        RETVAL = _find_set_uint32_t(aTHX_ h, "attributeCount", 14, &n->attributeCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->attributeCount);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::VertexAttribute
attributes(THIS, value = NO_INIT)
        WebGPU::Direct::VertexBufferLayout THIS
        WebGPU::Direct::VertexAttribute value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexBufferLayout *n = (WGPUVertexBufferLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexBufferLayout");
        RETVAL = _find_set_obj(aTHX_ h, "attributes", 10, &n->attributes, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->attributes, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__VertexBufferLayout__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroupLayoutDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupLayoutDescriptor *n = (WGPUBindGroupLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupLayoutDescriptor *n = (WGPUBindGroupLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

uint32_t
entryCount(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupLayoutDescriptor *n = (WGPUBindGroupLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "entryCount", 10, &n->entryCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->entryCount);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::BindGroupLayoutEntry
entries(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutDescriptor THIS
        WebGPU::Direct::BindGroupLayoutEntry value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupLayoutDescriptor *n = (WGPUBindGroupLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUBindGroupLayoutDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "entries", 7, &n->entries, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->entries, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BindGroupLayoutDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ColorTargetState	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ColorTargetState THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUColorTargetState *n = (WGPUColorTargetState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUColorTargetState");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::ColorTargetState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUColorTargetState *n = (WGPUColorTargetState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUColorTargetState");
        RETVAL = _find_set_enum(aTHX_ h, "format", 6, &n->format);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->format);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::BlendState
blend(THIS, value = NO_INIT)
        WebGPU::Direct::ColorTargetState THIS
        WebGPU::Direct::BlendState value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUColorTargetState *n = (WGPUColorTargetState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUColorTargetState");
        RETVAL = _find_set_obj(aTHX_ h, "blend", 5, &n->blend, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->blend, type_sv);
        }
    OUTPUT:
        RETVAL

WGPUColorWriteMaskFlags
writeMask(THIS, value = NO_INIT)
        WebGPU::Direct::ColorTargetState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUColorTargetState *n = (WGPUColorTargetState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUColorTargetState");
        RETVAL = _find_set_uint32_t(aTHX_ h, "writeMask", 9, &n->writeMask);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->writeMask);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ColorTargetState__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ComputePipelineDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePipelineDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePipelineDescriptor *n = (WGPUComputePipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePipelineDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePipelineDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePipelineDescriptor *n = (WGPUComputePipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePipelineDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

void *
layout(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePipelineDescriptor THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePipelineDescriptor *n = (WGPUComputePipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePipelineDescriptor");
        RETVAL = _find_set_void(aTHX_ h, "layout", 6, &n->layout, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->layout, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::ProgrammableStageDescriptor
compute(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePipelineDescriptor THIS
        WebGPU::Direct::ProgrammableStageDescriptor value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePipelineDescriptor *n = (WGPUComputePipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUComputePipelineDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "compute", 7, &n->compute, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->compute, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ComputePipelineDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::DeviceDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDeviceDescriptor *n = (WGPUDeviceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDeviceDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDeviceDescriptor *n = (WGPUDeviceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDeviceDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

uint32_t
requiredFeaturesCount(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDeviceDescriptor *n = (WGPUDeviceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDeviceDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "requiredFeaturesCount", 21, &n->requiredFeaturesCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->requiredFeaturesCount);
        }
    OUTPUT:
        RETVAL

WGPUFeatureName
requiredFeatures(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDeviceDescriptor *n = (WGPUDeviceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDeviceDescriptor");
        RETVAL = _find_set_enum(aTHX_ h, "requiredFeatures", 16, &n->requiredFeatures);

        if (items > 1)
        {
            _set_enum(aTHX_ value,/*-*/ (void *) &n->requiredFeatures);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::RequiredLimits
requiredLimits(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        WebGPU::Direct::RequiredLimits value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDeviceDescriptor *n = (WGPUDeviceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDeviceDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "requiredLimits", 14, &n->requiredLimits, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->requiredLimits, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::QueueDescriptor
defaultQueue(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        WebGPU::Direct::QueueDescriptor value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDeviceDescriptor *n = (WGPUDeviceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUDeviceDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "defaultQueue", 12, &n->defaultQueue, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->defaultQueue, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__DeviceDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPassDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

uint32_t
colorAttachmentCount(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "colorAttachmentCount", 20, &n->colorAttachmentCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->colorAttachmentCount);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::RenderPassColorAttachment
colorAttachments(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        WebGPU::Direct::RenderPassColorAttachment value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "colorAttachments", 16, &n->colorAttachments, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->colorAttachments, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::RenderPassDepthStencilAttachment
depthStencilAttachment(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        WebGPU::Direct::RenderPassDepthStencilAttachment value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "depthStencilAttachment", 22, &n->depthStencilAttachment, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->depthStencilAttachment, type_sv);
        }
    OUTPUT:
        RETVAL

void *
occlusionQuerySet(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptor");
        RETVAL = _find_set_void(aTHX_ h, "occlusionQuerySet", 17, &n->occlusionQuerySet, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->occlusionQuerySet, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
timestampWriteCount(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptor");
        RETVAL = _find_set_uint32_t(aTHX_ h, "timestampWriteCount", 19, &n->timestampWriteCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->timestampWriteCount);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::RenderPassTimestampWrite
timestampWrites(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        WebGPU::Direct::RenderPassTimestampWrite value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPassDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "timestampWrites", 15, &n->timestampWrites, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->timestampWrites, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassDescriptor__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::VertexState	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexState *n = (WGPUVertexState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexState");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

void *
module(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexState *n = (WGPUVertexState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexState");
        RETVAL = _find_set_void(aTHX_ h, "module", 6, &n->module, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->module, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
entryPoint(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexState *n = (WGPUVertexState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexState");
        RETVAL = _find_set_str(aTHX_ h, "entryPoint", 10, &n->entryPoint);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->entryPoint);
        }
    OUTPUT:
        RETVAL

uint32_t
constantCount(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexState *n = (WGPUVertexState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexState");
        RETVAL = _find_set_uint32_t(aTHX_ h, "constantCount", 13, &n->constantCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->constantCount);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::ConstantEntry
constants(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        WebGPU::Direct::ConstantEntry value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexState *n = (WGPUVertexState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexState");
        RETVAL = _find_set_obj(aTHX_ h, "constants", 9, &n->constants, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->constants, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
bufferCount(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexState *n = (WGPUVertexState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexState");
        RETVAL = _find_set_uint32_t(aTHX_ h, "bufferCount", 11, &n->bufferCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->bufferCount);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::VertexBufferLayout
buffers(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        WebGPU::Direct::VertexBufferLayout value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexState *n = (WGPUVertexState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUVertexState");
        RETVAL = _find_set_obj(aTHX_ h, "buffers", 7, &n->buffers, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->buffers, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__VertexState__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::FragmentState	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUFragmentState *n = (WGPUFragmentState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUFragmentState");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

void *
module(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUFragmentState *n = (WGPUFragmentState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUFragmentState");
        RETVAL = _find_set_void(aTHX_ h, "module", 6, &n->module, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->module, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
entryPoint(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUFragmentState *n = (WGPUFragmentState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUFragmentState");
        RETVAL = _find_set_str(aTHX_ h, "entryPoint", 10, &n->entryPoint);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->entryPoint);
        }
    OUTPUT:
        RETVAL

uint32_t
constantCount(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUFragmentState *n = (WGPUFragmentState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUFragmentState");
        RETVAL = _find_set_uint32_t(aTHX_ h, "constantCount", 13, &n->constantCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->constantCount);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::ConstantEntry
constants(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        WebGPU::Direct::ConstantEntry value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUFragmentState *n = (WGPUFragmentState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUFragmentState");
        RETVAL = _find_set_obj(aTHX_ h, "constants", 9, &n->constants, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->constants, type_sv);
        }
    OUTPUT:
        RETVAL

uint32_t
targetCount(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUFragmentState *n = (WGPUFragmentState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUFragmentState");
        RETVAL = _find_set_uint32_t(aTHX_ h, "targetCount", 11, &n->targetCount);

        if (items > 1)
        {
            _set_uint32_t(aTHX_ value,/*-*/ (void *) &n->targetCount);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::ColorTargetState
targets(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        WebGPU::Direct::ColorTargetState value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUFragmentState *n = (WGPUFragmentState *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPUFragmentState");
        RETVAL = _find_set_obj(aTHX_ h, "targets", 7, &n->targets, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->targets, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__FragmentState__pack( THIS );
        


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPipelineDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPipelineDescriptor *n = (WGPURenderPipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPipelineDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "nextInChain", 11, &n->nextInChain, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->nextInChain, type_sv);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        SV *value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPipelineDescriptor *n = (WGPURenderPipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPipelineDescriptor");
        RETVAL = _find_set_str(aTHX_ h, "label", 5, &n->label);

        if (items > 1)
        {
            _set_str(aTHX_ value,/*-*/ (void *) &n->label);
        }
    OUTPUT:
        RETVAL

void *
layout(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPipelineDescriptor *n = (WGPURenderPipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPipelineDescriptor");
        RETVAL = _find_set_void(aTHX_ h, "layout", 6, &n->layout, type_sv);

        if (items > 1)
        {
            _set_void(aTHX_ value,/**/ (void *) &n->layout, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::VertexState
vertex(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        WebGPU::Direct::VertexState value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPipelineDescriptor *n = (WGPURenderPipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPipelineDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "vertex", 6, &n->vertex, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->vertex, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::PrimitiveState
primitive(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        WebGPU::Direct::PrimitiveState value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPipelineDescriptor *n = (WGPURenderPipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPipelineDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "primitive", 9, &n->primitive, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->primitive, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::DepthStencilState
depthStencil(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        WebGPU::Direct::DepthStencilState value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPipelineDescriptor *n = (WGPURenderPipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPipelineDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "depthStencil", 12, &n->depthStencil, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->depthStencil, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::MultisampleState
multisample(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        WebGPU::Direct::MultisampleState value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPipelineDescriptor *n = (WGPURenderPipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPipelineDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "multisample", 11, &n->multisample, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->multisample, type_sv);
        }
    OUTPUT:
        RETVAL

WebGPU::Direct::FragmentState
fragment(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        WebGPU::Direct::FragmentState value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPipelineDescriptor *n = (WGPURenderPipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        SV *type_sv = newSVpvs("WGPURenderPipelineDescriptor");
        RETVAL = _find_set_obj(aTHX_ h, "fragment", 8, &n->fragment, type_sv);

        if (items > 1)
        {
            _set_obj(aTHX_ value,/**/ (void *) &n->fragment, type_sv);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPipelineDescriptor__pack( THIS );
        


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

