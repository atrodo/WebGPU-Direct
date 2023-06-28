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

SV *
next(THIS, value = NO_INIT)
        WebGPU::Direct::ChainedStruct THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUChainedStruct *n = (WGPUChainedStruct *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "next", 4, (void **) &n->next , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              SV **f;
              SvREFCNT_inc(value);
              f = hv_store(h, "next", 4, value, 0);

              if ( !f )
              {
                SvREFCNT_dec(value);
                croak("Could not save value to hash for %s in type %s", "next", "WebGPU::Direct::ChainedStruct");
              }
              {
                MAGIC *mg = mg_find(value, PERL_MAGIC_ext);
                warn("mg: %zX\n", (size_t)mg);
              }
              _set_objptr(aTHX_ value,/**/ (void *) &n->next , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUSType
sType(THIS, value = NO_INIT)
        WebGPU::Direct::ChainedStruct THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUChainedStruct *n = (WGPUChainedStruct *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "sType", 5,  &n->sType );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->sType );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ChainedStruct__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ChainedStruct__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUChainedStruct *n = (WGPUChainedStruct *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUChainedStruct) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ChainedStructOut	PREFIX = wgpu

SV *
next(THIS, value = NO_INIT)
        WebGPU::Direct::ChainedStructOut THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUChainedStructOut *n = (WGPUChainedStructOut *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "next", 4, (void **) &n->next , newSVpvs("WebGPU::Direct::ChainedStructOut"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->next , newSVpvs("WebGPU::Direct::ChainedStructOut"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUSType
sType(THIS, value = NO_INIT)
        WebGPU::Direct::ChainedStructOut THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUChainedStructOut *n = (WGPUChainedStructOut *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "sType", 5,  &n->sType );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->sType );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ChainedStructOut__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ChainedStructOut__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUChainedStructOut *n = (WGPUChainedStructOut *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUChainedStructOut) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::AdapterProperties	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStructOut"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStructOut"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
vendorID(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "vendorID", 8,  &n->vendorID );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->vendorID );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
vendorName(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "vendorName", 10,  &n->vendorName );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->vendorName );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
architecture(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "architecture", 12,  &n->architecture );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->architecture );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
deviceID(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "deviceID", 8,  &n->deviceID );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->deviceID );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
name(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "name", 4,  &n->name );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->name );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
driverDescription(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "driverDescription", 17,  &n->driverDescription );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->driverDescription );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUAdapterType
adapterType(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "adapterType", 11,  &n->adapterType );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->adapterType );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUBackendType
backendType(THIS, value = NO_INIT)
        WebGPU::Direct::AdapterProperties THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "backendType", 11,  &n->backendType );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->backendType );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__AdapterProperties__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__AdapterProperties__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUAdapterProperties) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroupEntry	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupEntry *n = (WGPUBindGroupEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
binding(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupEntry *n = (WGPUBindGroupEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "binding", 7,  &n->binding );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->binding );

            _unpack(THIS);
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
        RETVAL =   _find_set_void(aTHX_ h, "buffer", 6,  &n->buffer , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->buffer , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint64_t
offset(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupEntry *n = (WGPUBindGroupEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint64_t(aTHX_ h, "offset", 6,  &n->offset );
;

        if (items > 1)
        {
              _set_uint64_t(aTHX_ value,/**/ (void *) &n->offset );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint64_t
size(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupEntry *n = (WGPUBindGroupEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint64_t(aTHX_ h, "size", 4,  &n->size );
;

        if (items > 1)
        {
              _set_uint64_t(aTHX_ value,/**/ (void *) &n->size );

            _unpack(THIS);
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
        RETVAL =   _find_set_void(aTHX_ h, "sampler", 7,  &n->sampler , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->sampler , newSVpvs("void *"));

            _unpack(THIS);
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
        RETVAL =   _find_set_void(aTHX_ h, "textureView", 11,  &n->textureView , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->textureView , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BindGroupEntry__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BindGroupEntry__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUBindGroupEntry *n = (WGPUBindGroupEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUBindGroupEntry) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BlendComponent	PREFIX = wgpu

WGPUBlendOperation
operation(THIS, value = NO_INIT)
        WebGPU::Direct::BlendComponent THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBlendComponent *n = (WGPUBlendComponent *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "operation", 9,  &n->operation );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->operation );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUBlendFactor
srcFactor(THIS, value = NO_INIT)
        WebGPU::Direct::BlendComponent THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBlendComponent *n = (WGPUBlendComponent *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "srcFactor", 9,  &n->srcFactor );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->srcFactor );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUBlendFactor
dstFactor(THIS, value = NO_INIT)
        WebGPU::Direct::BlendComponent THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBlendComponent *n = (WGPUBlendComponent *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "dstFactor", 9,  &n->dstFactor );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->dstFactor );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BlendComponent__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BlendComponent__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUBlendComponent *n = (WGPUBlendComponent *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUBlendComponent) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BufferBindingLayout	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::BufferBindingLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBufferBindingLayout *n = (WGPUBufferBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUBufferBindingType
type(THIS, value = NO_INIT)
        WebGPU::Direct::BufferBindingLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBufferBindingLayout *n = (WGPUBufferBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "type", 4,  &n->type );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->type );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

bool
hasDynamicOffset(THIS, value = NO_INIT)
        WebGPU::Direct::BufferBindingLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBufferBindingLayout *n = (WGPUBufferBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_bool(aTHX_ h, "hasDynamicOffset", 16,  &n->hasDynamicOffset );
;

        if (items > 1)
        {
              _set_bool(aTHX_ value,/**/ (void *) &n->hasDynamicOffset );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint64_t
minBindingSize(THIS, value = NO_INIT)
        WebGPU::Direct::BufferBindingLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBufferBindingLayout *n = (WGPUBufferBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint64_t(aTHX_ h, "minBindingSize", 14,  &n->minBindingSize );
;

        if (items > 1)
        {
              _set_uint64_t(aTHX_ value,/**/ (void *) &n->minBindingSize );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BufferBindingLayout__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BufferBindingLayout__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUBufferBindingLayout *n = (WGPUBufferBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUBufferBindingLayout) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BufferDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::BufferDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBufferDescriptor *n = (WGPUBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::BufferDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBufferDescriptor *n = (WGPUBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUBufferUsageFlags
usage(THIS, value = NO_INIT)
        WebGPU::Direct::BufferDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBufferDescriptor *n = (WGPUBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "usage", 5,  &n->usage );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->usage );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint64_t
size(THIS, value = NO_INIT)
        WebGPU::Direct::BufferDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBufferDescriptor *n = (WGPUBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint64_t(aTHX_ h, "size", 4,  &n->size );
;

        if (items > 1)
        {
              _set_uint64_t(aTHX_ value,/**/ (void *) &n->size );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

bool
mappedAtCreation(THIS, value = NO_INIT)
        WebGPU::Direct::BufferDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBufferDescriptor *n = (WGPUBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_bool(aTHX_ h, "mappedAtCreation", 16,  &n->mappedAtCreation );
;

        if (items > 1)
        {
              _set_bool(aTHX_ value,/**/ (void *) &n->mappedAtCreation );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BufferDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BufferDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUBufferDescriptor *n = (WGPUBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUBufferDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Color	PREFIX = wgpu

double
r(THIS, value = NO_INIT)
        WebGPU::Direct::Color THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUColor *n = (WGPUColor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_double(aTHX_ h, "r", 1,  &n->r );
;

        if (items > 1)
        {
              _set_double(aTHX_ value,/**/ (void *) &n->r );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

double
g(THIS, value = NO_INIT)
        WebGPU::Direct::Color THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUColor *n = (WGPUColor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_double(aTHX_ h, "g", 1,  &n->g );
;

        if (items > 1)
        {
              _set_double(aTHX_ value,/**/ (void *) &n->g );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

double
b(THIS, value = NO_INIT)
        WebGPU::Direct::Color THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUColor *n = (WGPUColor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_double(aTHX_ h, "b", 1,  &n->b );
;

        if (items > 1)
        {
              _set_double(aTHX_ value,/**/ (void *) &n->b );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

double
a(THIS, value = NO_INIT)
        WebGPU::Direct::Color THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUColor *n = (WGPUColor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_double(aTHX_ h, "a", 1,  &n->a );
;

        if (items > 1)
        {
              _set_double(aTHX_ value,/**/ (void *) &n->a );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__Color__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__Color__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUColor *n = (WGPUColor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUColor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CommandBufferDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::CommandBufferDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCommandBufferDescriptor *n = (WGPUCommandBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::CommandBufferDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCommandBufferDescriptor *n = (WGPUCommandBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__CommandBufferDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__CommandBufferDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUCommandBufferDescriptor *n = (WGPUCommandBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUCommandBufferDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CommandEncoderDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::CommandEncoderDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCommandEncoderDescriptor *n = (WGPUCommandEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::CommandEncoderDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCommandEncoderDescriptor *n = (WGPUCommandEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__CommandEncoderDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__CommandEncoderDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUCommandEncoderDescriptor *n = (WGPUCommandEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUCommandEncoderDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CompilationMessage	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
message(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "message", 7,  &n->message );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->message );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUCompilationMessageType
type(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "type", 4,  &n->type );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->type );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint64_t
lineNum(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint64_t(aTHX_ h, "lineNum", 7,  &n->lineNum );
;

        if (items > 1)
        {
              _set_uint64_t(aTHX_ value,/**/ (void *) &n->lineNum );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint64_t
linePos(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint64_t(aTHX_ h, "linePos", 7,  &n->linePos );
;

        if (items > 1)
        {
              _set_uint64_t(aTHX_ value,/**/ (void *) &n->linePos );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint64_t
offset(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint64_t(aTHX_ h, "offset", 6,  &n->offset );
;

        if (items > 1)
        {
              _set_uint64_t(aTHX_ value,/**/ (void *) &n->offset );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint64_t
length(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint64_t(aTHX_ h, "length", 6,  &n->length );
;

        if (items > 1)
        {
              _set_uint64_t(aTHX_ value,/**/ (void *) &n->length );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint64_t
utf16LinePos(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint64_t(aTHX_ h, "utf16LinePos", 12,  &n->utf16LinePos );
;

        if (items > 1)
        {
              _set_uint64_t(aTHX_ value,/**/ (void *) &n->utf16LinePos );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint64_t
utf16Offset(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint64_t(aTHX_ h, "utf16Offset", 11,  &n->utf16Offset );
;

        if (items > 1)
        {
              _set_uint64_t(aTHX_ value,/**/ (void *) &n->utf16Offset );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint64_t
utf16Length(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationMessage THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint64_t(aTHX_ h, "utf16Length", 11,  &n->utf16Length );
;

        if (items > 1)
        {
              _set_uint64_t(aTHX_ value,/**/ (void *) &n->utf16Length );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__CompilationMessage__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__CompilationMessage__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUCompilationMessage) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ComputePassTimestampWrite	PREFIX = wgpu

void *
querySet(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassTimestampWrite THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePassTimestampWrite *n = (WGPUComputePassTimestampWrite *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_void(aTHX_ h, "querySet", 8,  &n->querySet , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->querySet , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
queryIndex(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassTimestampWrite THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePassTimestampWrite *n = (WGPUComputePassTimestampWrite *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "queryIndex", 10,  &n->queryIndex );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->queryIndex );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUComputePassTimestampLocation
location(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassTimestampWrite THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePassTimestampWrite *n = (WGPUComputePassTimestampWrite *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "location", 8,  &n->location );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->location );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ComputePassTimestampWrite__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ComputePassTimestampWrite__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUComputePassTimestampWrite *n = (WGPUComputePassTimestampWrite *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUComputePassTimestampWrite) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ConstantEntry	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ConstantEntry THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUConstantEntry *n = (WGPUConstantEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
key(THIS, value = NO_INIT)
        WebGPU::Direct::ConstantEntry THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUConstantEntry *n = (WGPUConstantEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "key", 3,  &n->key );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->key );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

double
value(THIS, value = NO_INIT)
        WebGPU::Direct::ConstantEntry THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUConstantEntry *n = (WGPUConstantEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_double(aTHX_ h, "value", 5,  &n->value );
;

        if (items > 1)
        {
              _set_double(aTHX_ value,/**/ (void *) &n->value );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ConstantEntry__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ConstantEntry__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUConstantEntry *n = (WGPUConstantEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUConstantEntry) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Extent3D	PREFIX = wgpu

uint32_t
width(THIS, value = NO_INIT)
        WebGPU::Direct::Extent3D THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUExtent3D *n = (WGPUExtent3D *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "width", 5,  &n->width );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->width );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
height(THIS, value = NO_INIT)
        WebGPU::Direct::Extent3D THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUExtent3D *n = (WGPUExtent3D *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "height", 6,  &n->height );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->height );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
depthOrArrayLayers(THIS, value = NO_INIT)
        WebGPU::Direct::Extent3D THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUExtent3D *n = (WGPUExtent3D *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "depthOrArrayLayers", 18,  &n->depthOrArrayLayers );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->depthOrArrayLayers );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__Extent3D__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__Extent3D__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUExtent3D *n = (WGPUExtent3D *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUExtent3D) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::InstanceDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::InstanceDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUInstanceDescriptor *n = (WGPUInstanceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__InstanceDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__InstanceDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUInstanceDescriptor *n = (WGPUInstanceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUInstanceDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Limits	PREFIX = wgpu

uint32_t
maxTextureDimension1D(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxTextureDimension1D", 21,  &n->maxTextureDimension1D );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxTextureDimension1D );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxTextureDimension2D(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxTextureDimension2D", 21,  &n->maxTextureDimension2D );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxTextureDimension2D );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxTextureDimension3D(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxTextureDimension3D", 21,  &n->maxTextureDimension3D );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxTextureDimension3D );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxTextureArrayLayers(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxTextureArrayLayers", 21,  &n->maxTextureArrayLayers );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxTextureArrayLayers );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxBindGroups(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxBindGroups", 13,  &n->maxBindGroups );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxBindGroups );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxBindingsPerBindGroup(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxBindingsPerBindGroup", 23,  &n->maxBindingsPerBindGroup );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxBindingsPerBindGroup );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxDynamicUniformBuffersPerPipelineLayout(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxDynamicUniformBuffersPerPipelineLayout", 41,  &n->maxDynamicUniformBuffersPerPipelineLayout );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxDynamicUniformBuffersPerPipelineLayout );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxDynamicStorageBuffersPerPipelineLayout(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxDynamicStorageBuffersPerPipelineLayout", 41,  &n->maxDynamicStorageBuffersPerPipelineLayout );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxDynamicStorageBuffersPerPipelineLayout );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxSampledTexturesPerShaderStage(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxSampledTexturesPerShaderStage", 32,  &n->maxSampledTexturesPerShaderStage );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxSampledTexturesPerShaderStage );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxSamplersPerShaderStage(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxSamplersPerShaderStage", 25,  &n->maxSamplersPerShaderStage );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxSamplersPerShaderStage );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxStorageBuffersPerShaderStage(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxStorageBuffersPerShaderStage", 31,  &n->maxStorageBuffersPerShaderStage );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxStorageBuffersPerShaderStage );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxStorageTexturesPerShaderStage(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxStorageTexturesPerShaderStage", 32,  &n->maxStorageTexturesPerShaderStage );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxStorageTexturesPerShaderStage );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxUniformBuffersPerShaderStage(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxUniformBuffersPerShaderStage", 31,  &n->maxUniformBuffersPerShaderStage );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxUniformBuffersPerShaderStage );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint64_t
maxUniformBufferBindingSize(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint64_t(aTHX_ h, "maxUniformBufferBindingSize", 27,  &n->maxUniformBufferBindingSize );
;

        if (items > 1)
        {
              _set_uint64_t(aTHX_ value,/**/ (void *) &n->maxUniformBufferBindingSize );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint64_t
maxStorageBufferBindingSize(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint64_t(aTHX_ h, "maxStorageBufferBindingSize", 27,  &n->maxStorageBufferBindingSize );
;

        if (items > 1)
        {
              _set_uint64_t(aTHX_ value,/**/ (void *) &n->maxStorageBufferBindingSize );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
minUniformBufferOffsetAlignment(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "minUniformBufferOffsetAlignment", 31,  &n->minUniformBufferOffsetAlignment );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->minUniformBufferOffsetAlignment );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
minStorageBufferOffsetAlignment(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "minStorageBufferOffsetAlignment", 31,  &n->minStorageBufferOffsetAlignment );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->minStorageBufferOffsetAlignment );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxVertexBuffers(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxVertexBuffers", 16,  &n->maxVertexBuffers );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxVertexBuffers );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint64_t
maxBufferSize(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint64_t(aTHX_ h, "maxBufferSize", 13,  &n->maxBufferSize );
;

        if (items > 1)
        {
              _set_uint64_t(aTHX_ value,/**/ (void *) &n->maxBufferSize );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxVertexAttributes(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxVertexAttributes", 19,  &n->maxVertexAttributes );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxVertexAttributes );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxVertexBufferArrayStride(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxVertexBufferArrayStride", 26,  &n->maxVertexBufferArrayStride );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxVertexBufferArrayStride );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxInterStageShaderComponents(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxInterStageShaderComponents", 29,  &n->maxInterStageShaderComponents );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxInterStageShaderComponents );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxInterStageShaderVariables(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxInterStageShaderVariables", 28,  &n->maxInterStageShaderVariables );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxInterStageShaderVariables );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxColorAttachments(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxColorAttachments", 19,  &n->maxColorAttachments );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxColorAttachments );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxColorAttachmentBytesPerSample(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxColorAttachmentBytesPerSample", 32,  &n->maxColorAttachmentBytesPerSample );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxColorAttachmentBytesPerSample );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxComputeWorkgroupStorageSize(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxComputeWorkgroupStorageSize", 30,  &n->maxComputeWorkgroupStorageSize );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxComputeWorkgroupStorageSize );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxComputeInvocationsPerWorkgroup(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxComputeInvocationsPerWorkgroup", 33,  &n->maxComputeInvocationsPerWorkgroup );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxComputeInvocationsPerWorkgroup );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxComputeWorkgroupSizeX(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeX", 24,  &n->maxComputeWorkgroupSizeX );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxComputeWorkgroupSizeX );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxComputeWorkgroupSizeY(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeY", 24,  &n->maxComputeWorkgroupSizeY );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxComputeWorkgroupSizeY );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxComputeWorkgroupSizeZ(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeZ", 24,  &n->maxComputeWorkgroupSizeZ );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxComputeWorkgroupSizeZ );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
maxComputeWorkgroupsPerDimension(THIS, value = NO_INIT)
        WebGPU::Direct::Limits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "maxComputeWorkgroupsPerDimension", 32,  &n->maxComputeWorkgroupsPerDimension );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->maxComputeWorkgroupsPerDimension );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__Limits__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__Limits__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPULimits) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::MultisampleState	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::MultisampleState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUMultisampleState *n = (WGPUMultisampleState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
count(THIS, value = NO_INIT)
        WebGPU::Direct::MultisampleState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUMultisampleState *n = (WGPUMultisampleState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "count", 5,  &n->count );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->count );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
mask(THIS, value = NO_INIT)
        WebGPU::Direct::MultisampleState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUMultisampleState *n = (WGPUMultisampleState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "mask", 4,  &n->mask );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->mask );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

bool
alphaToCoverageEnabled(THIS, value = NO_INIT)
        WebGPU::Direct::MultisampleState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUMultisampleState *n = (WGPUMultisampleState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_bool(aTHX_ h, "alphaToCoverageEnabled", 22,  &n->alphaToCoverageEnabled );
;

        if (items > 1)
        {
              _set_bool(aTHX_ value,/**/ (void *) &n->alphaToCoverageEnabled );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__MultisampleState__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__MultisampleState__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUMultisampleState *n = (WGPUMultisampleState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUMultisampleState) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Origin3D	PREFIX = wgpu

uint32_t
x(THIS, value = NO_INIT)
        WebGPU::Direct::Origin3D THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUOrigin3D *n = (WGPUOrigin3D *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "x", 1,  &n->x );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->x );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
y(THIS, value = NO_INIT)
        WebGPU::Direct::Origin3D THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUOrigin3D *n = (WGPUOrigin3D *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "y", 1,  &n->y );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->y );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
z(THIS, value = NO_INIT)
        WebGPU::Direct::Origin3D THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUOrigin3D *n = (WGPUOrigin3D *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "z", 1,  &n->z );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->z );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__Origin3D__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__Origin3D__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUOrigin3D *n = (WGPUOrigin3D *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUOrigin3D) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::PipelineLayoutDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::PipelineLayoutDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPipelineLayoutDescriptor *n = (WGPUPipelineLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::PipelineLayoutDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPipelineLayoutDescriptor *n = (WGPUPipelineLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
bindGroupLayoutCount(THIS, value = NO_INIT)
        WebGPU::Direct::PipelineLayoutDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPipelineLayoutDescriptor *n = (WGPUPipelineLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "bindGroupLayoutCount", 20,  &n->bindGroupLayoutCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->bindGroupLayoutCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
bindGroupLayouts(THIS, value = NO_INIT)
        WebGPU::Direct::PipelineLayoutDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPipelineLayoutDescriptor *n = (WGPUPipelineLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_void(aTHX_ h, "bindGroupLayouts", 16,  &n->bindGroupLayouts , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->bindGroupLayouts , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__PipelineLayoutDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__PipelineLayoutDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUPipelineLayoutDescriptor *n = (WGPUPipelineLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUPipelineLayoutDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::PrimitiveDepthClipControl	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveDepthClipControl THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPrimitiveDepthClipControl *n = (WGPUPrimitiveDepthClipControl *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

bool
unclippedDepth(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveDepthClipControl THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPrimitiveDepthClipControl *n = (WGPUPrimitiveDepthClipControl *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_bool(aTHX_ h, "unclippedDepth", 14,  &n->unclippedDepth );
;

        if (items > 1)
        {
              _set_bool(aTHX_ value,/**/ (void *) &n->unclippedDepth );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__PrimitiveDepthClipControl__pack( THIS );
        WebGPU__Direct__ChainedStruct__pack( /*asdf*/ THIS );
 //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__PrimitiveDepthClipControl__unpack( THIS );
        WebGPU__Direct__ChainedStruct__unpack( /*asdf*/ THIS );
 //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUPrimitiveDepthClipControl *n = (WGPUPrimitiveDepthClipControl *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUPrimitiveDepthClipControl) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::PrimitiveState	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPrimitiveState *n = (WGPUPrimitiveState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUPrimitiveTopology
topology(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPrimitiveState *n = (WGPUPrimitiveState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "topology", 8,  &n->topology );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->topology );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUIndexFormat
stripIndexFormat(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPrimitiveState *n = (WGPUPrimitiveState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "stripIndexFormat", 16,  &n->stripIndexFormat );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->stripIndexFormat );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUFrontFace
frontFace(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPrimitiveState *n = (WGPUPrimitiveState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "frontFace", 9,  &n->frontFace );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->frontFace );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUCullMode
cullMode(THIS, value = NO_INIT)
        WebGPU::Direct::PrimitiveState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPrimitiveState *n = (WGPUPrimitiveState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "cullMode", 8,  &n->cullMode );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->cullMode );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__PrimitiveState__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__PrimitiveState__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUPrimitiveState *n = (WGPUPrimitiveState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUPrimitiveState) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::QuerySetDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::QuerySetDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUQuerySetDescriptor *n = (WGPUQuerySetDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::QuerySetDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUQuerySetDescriptor *n = (WGPUQuerySetDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUQueryType
type(THIS, value = NO_INIT)
        WebGPU::Direct::QuerySetDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUQuerySetDescriptor *n = (WGPUQuerySetDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "type", 4,  &n->type );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->type );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
count(THIS, value = NO_INIT)
        WebGPU::Direct::QuerySetDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUQuerySetDescriptor *n = (WGPUQuerySetDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "count", 5,  &n->count );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->count );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
pipelineStatistics(THIS, value = NO_INIT)
        WebGPU::Direct::QuerySetDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUQuerySetDescriptor *n = (WGPUQuerySetDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   // "pipelineStatistics" is a ptr type WGPUPipelineStatisticName, and that's not quite right yet, using opaque
  _find_set_void(aTHX_ h, "pipelineStatistics", 18,  &n->pipelineStatistics , NULL);
;

        if (items > 1)
        {
              // "pipelineStatistics" is a ptr type WGPUPipelineStatisticName, and that's not quite right yet, using opaque
  _set_void(aTHX_ value,/**/ (void *) &n->pipelineStatistics , NULL);

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
pipelineStatisticsCount(THIS, value = NO_INIT)
        WebGPU::Direct::QuerySetDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUQuerySetDescriptor *n = (WGPUQuerySetDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "pipelineStatisticsCount", 23,  &n->pipelineStatisticsCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->pipelineStatisticsCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__QuerySetDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__QuerySetDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUQuerySetDescriptor *n = (WGPUQuerySetDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUQuerySetDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::QueueDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::QueueDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUQueueDescriptor *n = (WGPUQueueDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::QueueDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUQueueDescriptor *n = (WGPUQueueDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__QueueDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__QueueDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUQueueDescriptor *n = (WGPUQueueDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUQueueDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderBundleDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleDescriptor *n = (WGPURenderBundleDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleDescriptor *n = (WGPURenderBundleDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderBundleDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderBundleDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPURenderBundleDescriptor *n = (WGPURenderBundleDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPURenderBundleDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderBundleEncoderDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
colorFormatsCount(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "colorFormatsCount", 17,  &n->colorFormatsCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->colorFormatsCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
colorFormats(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   // "colorFormats" is a ptr type WGPUTextureFormat, and that's not quite right yet, using opaque
  _find_set_void(aTHX_ h, "colorFormats", 12,  &n->colorFormats , NULL);
;

        if (items > 1)
        {
              // "colorFormats" is a ptr type WGPUTextureFormat, and that's not quite right yet, using opaque
  _set_void(aTHX_ value,/**/ (void *) &n->colorFormats , NULL);

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
depthStencilFormat(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "depthStencilFormat", 18,  &n->depthStencilFormat );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->depthStencilFormat );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
sampleCount(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "sampleCount", 11,  &n->sampleCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->sampleCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

bool
depthReadOnly(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_bool(aTHX_ h, "depthReadOnly", 13,  &n->depthReadOnly );
;

        if (items > 1)
        {
              _set_bool(aTHX_ value,/**/ (void *) &n->depthReadOnly );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

bool
stencilReadOnly(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_bool(aTHX_ h, "stencilReadOnly", 15,  &n->stencilReadOnly );
;

        if (items > 1)
        {
              _set_bool(aTHX_ value,/**/ (void *) &n->stencilReadOnly );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderBundleEncoderDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderBundleEncoderDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPURenderBundleEncoderDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPassDepthStencilAttachment	PREFIX = wgpu

void *
view(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_void(aTHX_ h, "view", 4,  &n->view , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->view , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPULoadOp
depthLoadOp(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "depthLoadOp", 11,  &n->depthLoadOp );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->depthLoadOp );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUStoreOp
depthStoreOp(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "depthStoreOp", 12,  &n->depthStoreOp );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->depthStoreOp );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

float
depthClearValue(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_float(aTHX_ h, "depthClearValue", 15,  &n->depthClearValue );
;

        if (items > 1)
        {
              _set_float(aTHX_ value,/**/ (void *) &n->depthClearValue );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

bool
depthReadOnly(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_bool(aTHX_ h, "depthReadOnly", 13,  &n->depthReadOnly );
;

        if (items > 1)
        {
              _set_bool(aTHX_ value,/**/ (void *) &n->depthReadOnly );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPULoadOp
stencilLoadOp(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "stencilLoadOp", 13,  &n->stencilLoadOp );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->stencilLoadOp );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUStoreOp
stencilStoreOp(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "stencilStoreOp", 14,  &n->stencilStoreOp );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->stencilStoreOp );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
stencilClearValue(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "stencilClearValue", 17,  &n->stencilClearValue );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->stencilClearValue );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

bool
stencilReadOnly(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_bool(aTHX_ h, "stencilReadOnly", 15,  &n->stencilReadOnly );
;

        if (items > 1)
        {
              _set_bool(aTHX_ value,/**/ (void *) &n->stencilReadOnly );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassDepthStencilAttachment__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassDepthStencilAttachment__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPURenderPassDepthStencilAttachment) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPassDescriptorMaxDrawCount	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptorMaxDrawCount THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptorMaxDrawCount *n = (WGPURenderPassDescriptorMaxDrawCount *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint64_t
maxDrawCount(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptorMaxDrawCount THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptorMaxDrawCount *n = (WGPURenderPassDescriptorMaxDrawCount *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint64_t(aTHX_ h, "maxDrawCount", 12,  &n->maxDrawCount );
;

        if (items > 1)
        {
              _set_uint64_t(aTHX_ value,/**/ (void *) &n->maxDrawCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassDescriptorMaxDrawCount__pack( THIS );
        WebGPU__Direct__ChainedStruct__pack( /*asdf*/ THIS );
 //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassDescriptorMaxDrawCount__unpack( THIS );
        WebGPU__Direct__ChainedStruct__unpack( /*asdf*/ THIS );
 //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPURenderPassDescriptorMaxDrawCount *n = (WGPURenderPassDescriptorMaxDrawCount *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPURenderPassDescriptorMaxDrawCount) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPassTimestampWrite	PREFIX = wgpu

void *
querySet(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassTimestampWrite THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassTimestampWrite *n = (WGPURenderPassTimestampWrite *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_void(aTHX_ h, "querySet", 8,  &n->querySet , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->querySet , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
queryIndex(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassTimestampWrite THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassTimestampWrite *n = (WGPURenderPassTimestampWrite *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "queryIndex", 10,  &n->queryIndex );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->queryIndex );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPURenderPassTimestampLocation
location(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassTimestampWrite THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassTimestampWrite *n = (WGPURenderPassTimestampWrite *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "location", 8,  &n->location );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->location );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassTimestampWrite__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassTimestampWrite__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPURenderPassTimestampWrite *n = (WGPURenderPassTimestampWrite *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPURenderPassTimestampWrite) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RequestAdapterOptions	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::RequestAdapterOptions THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURequestAdapterOptions *n = (WGPURequestAdapterOptions *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
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
        RETVAL =   _find_set_void(aTHX_ h, "compatibleSurface", 17,  &n->compatibleSurface , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->compatibleSurface , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUPowerPreference
powerPreference(THIS, value = NO_INIT)
        WebGPU::Direct::RequestAdapterOptions THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURequestAdapterOptions *n = (WGPURequestAdapterOptions *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "powerPreference", 15,  &n->powerPreference );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->powerPreference );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

bool
forceFallbackAdapter(THIS, value = NO_INIT)
        WebGPU::Direct::RequestAdapterOptions THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURequestAdapterOptions *n = (WGPURequestAdapterOptions *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_bool(aTHX_ h, "forceFallbackAdapter", 20,  &n->forceFallbackAdapter );
;

        if (items > 1)
        {
              _set_bool(aTHX_ value,/**/ (void *) &n->forceFallbackAdapter );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RequestAdapterOptions__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RequestAdapterOptions__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPURequestAdapterOptions *n = (WGPURequestAdapterOptions *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPURequestAdapterOptions) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SamplerBindingLayout	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerBindingLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerBindingLayout *n = (WGPUSamplerBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUSamplerBindingType
type(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerBindingLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerBindingLayout *n = (WGPUSamplerBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "type", 4,  &n->type );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->type );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SamplerBindingLayout__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SamplerBindingLayout__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUSamplerBindingLayout *n = (WGPUSamplerBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUSamplerBindingLayout) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SamplerDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUAddressMode
addressModeU(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "addressModeU", 12,  &n->addressModeU );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->addressModeU );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUAddressMode
addressModeV(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "addressModeV", 12,  &n->addressModeV );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->addressModeV );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUAddressMode
addressModeW(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "addressModeW", 12,  &n->addressModeW );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->addressModeW );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUFilterMode
magFilter(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "magFilter", 9,  &n->magFilter );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->magFilter );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUFilterMode
minFilter(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "minFilter", 9,  &n->minFilter );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->minFilter );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUMipmapFilterMode
mipmapFilter(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "mipmapFilter", 12,  &n->mipmapFilter );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->mipmapFilter );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

float
lodMinClamp(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_float(aTHX_ h, "lodMinClamp", 11,  &n->lodMinClamp );
;

        if (items > 1)
        {
              _set_float(aTHX_ value,/**/ (void *) &n->lodMinClamp );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

float
lodMaxClamp(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_float(aTHX_ h, "lodMaxClamp", 11,  &n->lodMaxClamp );
;

        if (items > 1)
        {
              _set_float(aTHX_ value,/**/ (void *) &n->lodMaxClamp );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUCompareFunction
compare(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "compare", 7,  &n->compare );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->compare );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint16_t
maxAnisotropy(THIS, value = NO_INIT)
        WebGPU::Direct::SamplerDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint16_t(aTHX_ h, "maxAnisotropy", 13,  &n->maxAnisotropy );
;

        if (items > 1)
        {
              _set_uint16_t(aTHX_ value,/**/ (void *) &n->maxAnisotropy );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SamplerDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SamplerDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUSamplerDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ShaderModuleCompilationHint	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleCompilationHint THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleCompilationHint *n = (WGPUShaderModuleCompilationHint *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
entryPoint(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleCompilationHint THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleCompilationHint *n = (WGPUShaderModuleCompilationHint *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->entryPoint );

            _unpack(THIS);
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
        RETVAL =   _find_set_void(aTHX_ h, "layout", 6,  &n->layout , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->layout , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ShaderModuleCompilationHint__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ShaderModuleCompilationHint__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUShaderModuleCompilationHint *n = (WGPUShaderModuleCompilationHint *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUShaderModuleCompilationHint) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ShaderModuleSPIRVDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleSPIRVDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleSPIRVDescriptor *n = (WGPUShaderModuleSPIRVDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
codeSize(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleSPIRVDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleSPIRVDescriptor *n = (WGPUShaderModuleSPIRVDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "codeSize", 8,  &n->codeSize );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->codeSize );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
code(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleSPIRVDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleSPIRVDescriptor *n = (WGPUShaderModuleSPIRVDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   // "code" is a ptr type uint32_t, and that's not quite right yet, using opaque
  _find_set_void(aTHX_ h, "code", 4,  &n->code , NULL);
;

        if (items > 1)
        {
              // "code" is a ptr type uint32_t, and that's not quite right yet, using opaque
  _set_void(aTHX_ value,/**/ (void *) &n->code , NULL);

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ShaderModuleSPIRVDescriptor__pack( THIS );
        WebGPU__Direct__ChainedStruct__pack( /*asdf*/ THIS );
 //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ShaderModuleSPIRVDescriptor__unpack( THIS );
        WebGPU__Direct__ChainedStruct__unpack( /*asdf*/ THIS );
 //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUShaderModuleSPIRVDescriptor *n = (WGPUShaderModuleSPIRVDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUShaderModuleSPIRVDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ShaderModuleWGSLDescriptor	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleWGSLDescriptor THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleWGSLDescriptor *n = (WGPUShaderModuleWGSLDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
code(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleWGSLDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleWGSLDescriptor *n = (WGPUShaderModuleWGSLDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "code", 4,  &n->code );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->code );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ShaderModuleWGSLDescriptor__pack( THIS );
        WebGPU__Direct__ChainedStruct__pack( /*asdf*/ THIS );
 //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ShaderModuleWGSLDescriptor__unpack( THIS );
        WebGPU__Direct__ChainedStruct__unpack( /*asdf*/ THIS );
 //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUShaderModuleWGSLDescriptor *n = (WGPUShaderModuleWGSLDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUShaderModuleWGSLDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::StencilFaceState	PREFIX = wgpu

WGPUCompareFunction
compare(THIS, value = NO_INIT)
        WebGPU::Direct::StencilFaceState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUStencilFaceState *n = (WGPUStencilFaceState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "compare", 7,  &n->compare );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->compare );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUStencilOperation
failOp(THIS, value = NO_INIT)
        WebGPU::Direct::StencilFaceState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUStencilFaceState *n = (WGPUStencilFaceState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "failOp", 6,  &n->failOp );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->failOp );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUStencilOperation
depthFailOp(THIS, value = NO_INIT)
        WebGPU::Direct::StencilFaceState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUStencilFaceState *n = (WGPUStencilFaceState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "depthFailOp", 11,  &n->depthFailOp );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->depthFailOp );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUStencilOperation
passOp(THIS, value = NO_INIT)
        WebGPU::Direct::StencilFaceState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUStencilFaceState *n = (WGPUStencilFaceState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "passOp", 6,  &n->passOp );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->passOp );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__StencilFaceState__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__StencilFaceState__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUStencilFaceState *n = (WGPUStencilFaceState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUStencilFaceState) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::StorageTextureBindingLayout	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::StorageTextureBindingLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUStorageTextureBindingLayout *n = (WGPUStorageTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUStorageTextureAccess
access(THIS, value = NO_INIT)
        WebGPU::Direct::StorageTextureBindingLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUStorageTextureBindingLayout *n = (WGPUStorageTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "access", 6,  &n->access );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->access );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::StorageTextureBindingLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUStorageTextureBindingLayout *n = (WGPUStorageTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "format", 6,  &n->format );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->format );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUTextureViewDimension
viewDimension(THIS, value = NO_INIT)
        WebGPU::Direct::StorageTextureBindingLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUStorageTextureBindingLayout *n = (WGPUStorageTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "viewDimension", 13,  &n->viewDimension );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->viewDimension );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__StorageTextureBindingLayout__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__StorageTextureBindingLayout__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUStorageTextureBindingLayout *n = (WGPUStorageTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUStorageTextureBindingLayout) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptor *n = (WGPUSurfaceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptor *n = (WGPUSurfaceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUSurfaceDescriptor *n = (WGPUSurfaceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUSurfaceDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromAndroidNativeWindow *n = (WGPUSurfaceDescriptorFromAndroidNativeWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
window(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromAndroidNativeWindow *n = (WGPUSurfaceDescriptorFromAndroidNativeWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_void(aTHX_ h, "window", 6,  &n->window , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->window , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromAndroidNativeWindow__pack( THIS );
        WebGPU__Direct__ChainedStruct__pack( /*asdf*/ THIS );
 //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromAndroidNativeWindow__unpack( THIS );
        WebGPU__Direct__ChainedStruct__unpack( /*asdf*/ THIS );
 //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUSurfaceDescriptorFromAndroidNativeWindow *n = (WGPUSurfaceDescriptorFromAndroidNativeWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUSurfaceDescriptorFromAndroidNativeWindow) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromCanvasHTMLSelector *n = (WGPUSurfaceDescriptorFromCanvasHTMLSelector *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
selector(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromCanvasHTMLSelector *n = (WGPUSurfaceDescriptorFromCanvasHTMLSelector *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "selector", 8,  &n->selector );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->selector );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromCanvasHTMLSelector__pack( THIS );
        WebGPU__Direct__ChainedStruct__pack( /*asdf*/ THIS );
 //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromCanvasHTMLSelector__unpack( THIS );
        WebGPU__Direct__ChainedStruct__unpack( /*asdf*/ THIS );
 //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUSurfaceDescriptorFromCanvasHTMLSelector *n = (WGPUSurfaceDescriptorFromCanvasHTMLSelector *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUSurfaceDescriptorFromCanvasHTMLSelector) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromMetalLayer	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromMetalLayer THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromMetalLayer *n = (WGPUSurfaceDescriptorFromMetalLayer *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
layer(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromMetalLayer THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromMetalLayer *n = (WGPUSurfaceDescriptorFromMetalLayer *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_void(aTHX_ h, "layer", 5,  &n->layer , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->layer , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromMetalLayer__pack( THIS );
        WebGPU__Direct__ChainedStruct__pack( /*asdf*/ THIS );
 //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromMetalLayer__unpack( THIS );
        WebGPU__Direct__ChainedStruct__unpack( /*asdf*/ THIS );
 //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUSurfaceDescriptorFromMetalLayer *n = (WGPUSurfaceDescriptorFromMetalLayer *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUSurfaceDescriptorFromMetalLayer) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromWaylandSurface	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromWaylandSurface THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromWaylandSurface *n = (WGPUSurfaceDescriptorFromWaylandSurface *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
display(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromWaylandSurface THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromWaylandSurface *n = (WGPUSurfaceDescriptorFromWaylandSurface *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_void(aTHX_ h, "display", 7,  &n->display , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->display , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
surface(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromWaylandSurface THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromWaylandSurface *n = (WGPUSurfaceDescriptorFromWaylandSurface *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_void(aTHX_ h, "surface", 7,  &n->surface , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->surface , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromWaylandSurface__pack( THIS );
        WebGPU__Direct__ChainedStruct__pack( /*asdf*/ THIS );
 //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromWaylandSurface__unpack( THIS );
        WebGPU__Direct__ChainedStruct__unpack( /*asdf*/ THIS );
 //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUSurfaceDescriptorFromWaylandSurface *n = (WGPUSurfaceDescriptorFromWaylandSurface *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUSurfaceDescriptorFromWaylandSurface) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromWindowsHWND	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromWindowsHWND THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromWindowsHWND *n = (WGPUSurfaceDescriptorFromWindowsHWND *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
hinstance(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromWindowsHWND THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromWindowsHWND *n = (WGPUSurfaceDescriptorFromWindowsHWND *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_void(aTHX_ h, "hinstance", 9,  &n->hinstance , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->hinstance , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
hwnd(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromWindowsHWND THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromWindowsHWND *n = (WGPUSurfaceDescriptorFromWindowsHWND *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_void(aTHX_ h, "hwnd", 4,  &n->hwnd , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->hwnd , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromWindowsHWND__pack( THIS );
        WebGPU__Direct__ChainedStruct__pack( /*asdf*/ THIS );
 //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromWindowsHWND__unpack( THIS );
        WebGPU__Direct__ChainedStruct__unpack( /*asdf*/ THIS );
 //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUSurfaceDescriptorFromWindowsHWND *n = (WGPUSurfaceDescriptorFromWindowsHWND *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUSurfaceDescriptorFromWindowsHWND) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromXcbWindow	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromXcbWindow THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromXcbWindow *n = (WGPUSurfaceDescriptorFromXcbWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
connection(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromXcbWindow THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromXcbWindow *n = (WGPUSurfaceDescriptorFromXcbWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_void(aTHX_ h, "connection", 10,  &n->connection , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->connection , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
window(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromXcbWindow THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromXcbWindow *n = (WGPUSurfaceDescriptorFromXcbWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "window", 6,  &n->window );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->window );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromXcbWindow__pack( THIS );
        WebGPU__Direct__ChainedStruct__pack( /*asdf*/ THIS );
 //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromXcbWindow__unpack( THIS );
        WebGPU__Direct__ChainedStruct__unpack( /*asdf*/ THIS );
 //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUSurfaceDescriptorFromXcbWindow *n = (WGPUSurfaceDescriptorFromXcbWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUSurfaceDescriptorFromXcbWindow) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SurfaceDescriptorFromXlibWindow	PREFIX = wgpu

WebGPU::Direct::ChainedStruct
chain(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromXlibWindow THIS
        WebGPU::Direct::ChainedStruct value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromXlibWindow *n = (WGPUSurfaceDescriptorFromXlibWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
display(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromXlibWindow THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromXlibWindow *n = (WGPUSurfaceDescriptorFromXlibWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_void(aTHX_ h, "display", 7,  &n->display , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->display , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
window(THIS, value = NO_INIT)
        WebGPU::Direct::SurfaceDescriptorFromXlibWindow THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSurfaceDescriptorFromXlibWindow *n = (WGPUSurfaceDescriptorFromXlibWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "window", 6,  &n->window );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->window );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromXlibWindow__pack( THIS );
        WebGPU__Direct__ChainedStruct__pack( /*asdf*/ THIS );
 //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SurfaceDescriptorFromXlibWindow__unpack( THIS );
        WebGPU__Direct__ChainedStruct__unpack( /*asdf*/ THIS );
 //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUSurfaceDescriptorFromXlibWindow *n = (WGPUSurfaceDescriptorFromXlibWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUSurfaceDescriptorFromXlibWindow) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SwapChainDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSwapChainDescriptor *n = (WGPUSwapChainDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSwapChainDescriptor *n = (WGPUSwapChainDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUTextureUsageFlags
usage(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSwapChainDescriptor *n = (WGPUSwapChainDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "usage", 5,  &n->usage );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->usage );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSwapChainDescriptor *n = (WGPUSwapChainDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "format", 6,  &n->format );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->format );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
width(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSwapChainDescriptor *n = (WGPUSwapChainDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "width", 5,  &n->width );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->width );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
height(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSwapChainDescriptor *n = (WGPUSwapChainDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "height", 6,  &n->height );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->height );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUPresentMode
presentMode(THIS, value = NO_INIT)
        WebGPU::Direct::SwapChainDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSwapChainDescriptor *n = (WGPUSwapChainDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "presentMode", 11,  &n->presentMode );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->presentMode );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SwapChainDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SwapChainDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUSwapChainDescriptor *n = (WGPUSwapChainDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUSwapChainDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::TextureBindingLayout	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::TextureBindingLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureBindingLayout *n = (WGPUTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUTextureSampleType
sampleType(THIS, value = NO_INIT)
        WebGPU::Direct::TextureBindingLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureBindingLayout *n = (WGPUTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "sampleType", 10,  &n->sampleType );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->sampleType );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUTextureViewDimension
viewDimension(THIS, value = NO_INIT)
        WebGPU::Direct::TextureBindingLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureBindingLayout *n = (WGPUTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "viewDimension", 13,  &n->viewDimension );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->viewDimension );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

bool
multisampled(THIS, value = NO_INIT)
        WebGPU::Direct::TextureBindingLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureBindingLayout *n = (WGPUTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_bool(aTHX_ h, "multisampled", 12,  &n->multisampled );
;

        if (items > 1)
        {
              _set_bool(aTHX_ value,/**/ (void *) &n->multisampled );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__TextureBindingLayout__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__TextureBindingLayout__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUTextureBindingLayout *n = (WGPUTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUTextureBindingLayout) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::TextureDataLayout	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDataLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDataLayout *n = (WGPUTextureDataLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint64_t
offset(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDataLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDataLayout *n = (WGPUTextureDataLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint64_t(aTHX_ h, "offset", 6,  &n->offset );
;

        if (items > 1)
        {
              _set_uint64_t(aTHX_ value,/**/ (void *) &n->offset );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
bytesPerRow(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDataLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDataLayout *n = (WGPUTextureDataLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "bytesPerRow", 11,  &n->bytesPerRow );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->bytesPerRow );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
rowsPerImage(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDataLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDataLayout *n = (WGPUTextureDataLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "rowsPerImage", 12,  &n->rowsPerImage );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->rowsPerImage );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__TextureDataLayout__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__TextureDataLayout__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUTextureDataLayout *n = (WGPUTextureDataLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUTextureDataLayout) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::TextureViewDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "format", 6,  &n->format );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->format );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUTextureViewDimension
dimension(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "dimension", 9,  &n->dimension );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->dimension );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
baseMipLevel(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "baseMipLevel", 12,  &n->baseMipLevel );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->baseMipLevel );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
mipLevelCount(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "mipLevelCount", 13,  &n->mipLevelCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->mipLevelCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
baseArrayLayer(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "baseArrayLayer", 14,  &n->baseArrayLayer );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->baseArrayLayer );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
arrayLayerCount(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "arrayLayerCount", 15,  &n->arrayLayerCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->arrayLayerCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUTextureAspect
aspect(THIS, value = NO_INIT)
        WebGPU::Direct::TextureViewDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "aspect", 6,  &n->aspect );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->aspect );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__TextureViewDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__TextureViewDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUTextureViewDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::VertexAttribute	PREFIX = wgpu

WGPUVertexFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::VertexAttribute THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexAttribute *n = (WGPUVertexAttribute *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "format", 6,  &n->format );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->format );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint64_t
offset(THIS, value = NO_INIT)
        WebGPU::Direct::VertexAttribute THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexAttribute *n = (WGPUVertexAttribute *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint64_t(aTHX_ h, "offset", 6,  &n->offset );
;

        if (items > 1)
        {
              _set_uint64_t(aTHX_ value,/**/ (void *) &n->offset );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
shaderLocation(THIS, value = NO_INIT)
        WebGPU::Direct::VertexAttribute THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexAttribute *n = (WGPUVertexAttribute *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "shaderLocation", 14,  &n->shaderLocation );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->shaderLocation );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__VertexAttribute__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__VertexAttribute__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUVertexAttribute *n = (WGPUVertexAttribute *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUVertexAttribute) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroupDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupDescriptor *n = (WGPUBindGroupDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupDescriptor *n = (WGPUBindGroupDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
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
        RETVAL =   _find_set_void(aTHX_ h, "layout", 6,  &n->layout , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->layout , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
entryCount(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupDescriptor *n = (WGPUBindGroupDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "entryCount", 10,  &n->entryCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->entryCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
entries(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupDescriptor *n = (WGPUBindGroupDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "entries", 7, (void **) &n->entries , newSVpvs("WebGPU::Direct::BindGroupEntry"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->entries , newSVpvs("WebGPU::Direct::BindGroupEntry"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BindGroupDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BindGroupDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUBindGroupDescriptor *n = (WGPUBindGroupDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUBindGroupDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroupLayoutEntry	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutEntry THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupLayoutEntry *n = (WGPUBindGroupLayoutEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
binding(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutEntry THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupLayoutEntry *n = (WGPUBindGroupLayoutEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "binding", 7,  &n->binding );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->binding );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUShaderStageFlags
visibility(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutEntry THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupLayoutEntry *n = (WGPUBindGroupLayoutEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "visibility", 10,  &n->visibility );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->visibility );

            _unpack(THIS);
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
        RETVAL =   _find_set_obj(aTHX_ h, "buffer", 6,  &n->buffer , newSVpvs("WebGPU::Direct::BufferBindingLayout"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->buffer , newSVpvs("WebGPU::Direct::BufferBindingLayout"));

            _unpack(THIS);
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
        RETVAL =   _find_set_obj(aTHX_ h, "sampler", 7,  &n->sampler , newSVpvs("WebGPU::Direct::SamplerBindingLayout"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->sampler , newSVpvs("WebGPU::Direct::SamplerBindingLayout"));

            _unpack(THIS);
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
        RETVAL =   _find_set_obj(aTHX_ h, "texture", 7,  &n->texture , newSVpvs("WebGPU::Direct::TextureBindingLayout"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->texture , newSVpvs("WebGPU::Direct::TextureBindingLayout"));

            _unpack(THIS);
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
        RETVAL =   _find_set_obj(aTHX_ h, "storageTexture", 14,  &n->storageTexture , newSVpvs("WebGPU::Direct::StorageTextureBindingLayout"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->storageTexture , newSVpvs("WebGPU::Direct::StorageTextureBindingLayout"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BindGroupLayoutEntry__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BindGroupLayoutEntry__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUBindGroupLayoutEntry *n = (WGPUBindGroupLayoutEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUBindGroupLayoutEntry) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BlendState	PREFIX = wgpu

WebGPU::Direct::BlendComponent
color(THIS, value = NO_INIT)
        WebGPU::Direct::BlendState THIS
        WebGPU::Direct::BlendComponent value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBlendState *n = (WGPUBlendState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_obj(aTHX_ h, "color", 5,  &n->color , newSVpvs("WebGPU::Direct::BlendComponent"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->color , newSVpvs("WebGPU::Direct::BlendComponent"));

            _unpack(THIS);
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
        RETVAL =   _find_set_obj(aTHX_ h, "alpha", 5,  &n->alpha , newSVpvs("WebGPU::Direct::BlendComponent"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->alpha , newSVpvs("WebGPU::Direct::BlendComponent"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BlendState__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BlendState__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUBlendState *n = (WGPUBlendState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUBlendState) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CompilationInfo	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationInfo THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationInfo *n = (WGPUCompilationInfo *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
messageCount(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationInfo THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationInfo *n = (WGPUCompilationInfo *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "messageCount", 12,  &n->messageCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->messageCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
messages(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationInfo THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationInfo *n = (WGPUCompilationInfo *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "messages", 8, (void **) &n->messages , newSVpvs("WebGPU::Direct::CompilationMessage"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->messages , newSVpvs("WebGPU::Direct::CompilationMessage"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__CompilationInfo__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__CompilationInfo__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUCompilationInfo *n = (WGPUCompilationInfo *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUCompilationInfo) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ComputePassDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePassDescriptor *n = (WGPUComputePassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePassDescriptor *n = (WGPUComputePassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
timestampWriteCount(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePassDescriptor *n = (WGPUComputePassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "timestampWriteCount", 19,  &n->timestampWriteCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->timestampWriteCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
timestampWrites(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePassDescriptor *n = (WGPUComputePassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "timestampWrites", 15, (void **) &n->timestampWrites , newSVpvs("WebGPU::Direct::ComputePassTimestampWrite"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->timestampWrites , newSVpvs("WebGPU::Direct::ComputePassTimestampWrite"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ComputePassDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ComputePassDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUComputePassDescriptor *n = (WGPUComputePassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUComputePassDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::DepthStencilState	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "format", 6,  &n->format );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->format );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

bool
depthWriteEnabled(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_bool(aTHX_ h, "depthWriteEnabled", 17,  &n->depthWriteEnabled );
;

        if (items > 1)
        {
              _set_bool(aTHX_ value,/**/ (void *) &n->depthWriteEnabled );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUCompareFunction
depthCompare(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "depthCompare", 12,  &n->depthCompare );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->depthCompare );

            _unpack(THIS);
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
        RETVAL =   _find_set_obj(aTHX_ h, "stencilFront", 12,  &n->stencilFront , newSVpvs("WebGPU::Direct::StencilFaceState"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->stencilFront , newSVpvs("WebGPU::Direct::StencilFaceState"));

            _unpack(THIS);
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
        RETVAL =   _find_set_obj(aTHX_ h, "stencilBack", 11,  &n->stencilBack , newSVpvs("WebGPU::Direct::StencilFaceState"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->stencilBack , newSVpvs("WebGPU::Direct::StencilFaceState"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
stencilReadMask(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "stencilReadMask", 15,  &n->stencilReadMask );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->stencilReadMask );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
stencilWriteMask(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "stencilWriteMask", 16,  &n->stencilWriteMask );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->stencilWriteMask );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

int32_t
depthBias(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_int32_t(aTHX_ h, "depthBias", 9,  &n->depthBias );
;

        if (items > 1)
        {
              _set_int32_t(aTHX_ value,/**/ (void *) &n->depthBias );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

float
depthBiasSlopeScale(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_float(aTHX_ h, "depthBiasSlopeScale", 19,  &n->depthBiasSlopeScale );
;

        if (items > 1)
        {
              _set_float(aTHX_ value,/**/ (void *) &n->depthBiasSlopeScale );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

float
depthBiasClamp(THIS, value = NO_INIT)
        WebGPU::Direct::DepthStencilState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_float(aTHX_ h, "depthBiasClamp", 14,  &n->depthBiasClamp );
;

        if (items > 1)
        {
              _set_float(aTHX_ value,/**/ (void *) &n->depthBiasClamp );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__DepthStencilState__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__DepthStencilState__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUDepthStencilState) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ImageCopyBuffer	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyBuffer THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUImageCopyBuffer *n = (WGPUImageCopyBuffer *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
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
        RETVAL =   _find_set_obj(aTHX_ h, "layout", 6,  &n->layout , newSVpvs("WebGPU::Direct::TextureDataLayout"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->layout , newSVpvs("WebGPU::Direct::TextureDataLayout"));

            _unpack(THIS);
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
        RETVAL =   _find_set_void(aTHX_ h, "buffer", 6,  &n->buffer , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->buffer , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ImageCopyBuffer__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ImageCopyBuffer__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUImageCopyBuffer *n = (WGPUImageCopyBuffer *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUImageCopyBuffer) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ImageCopyTexture	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyTexture THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUImageCopyTexture *n = (WGPUImageCopyTexture *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
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
        RETVAL =   _find_set_void(aTHX_ h, "texture", 7,  &n->texture , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->texture , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
mipLevel(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyTexture THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUImageCopyTexture *n = (WGPUImageCopyTexture *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "mipLevel", 8,  &n->mipLevel );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->mipLevel );

            _unpack(THIS);
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
        RETVAL =   _find_set_obj(aTHX_ h, "origin", 6,  &n->origin , newSVpvs("WebGPU::Direct::Origin3D"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->origin , newSVpvs("WebGPU::Direct::Origin3D"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUTextureAspect
aspect(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyTexture THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUImageCopyTexture *n = (WGPUImageCopyTexture *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "aspect", 6,  &n->aspect );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->aspect );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ImageCopyTexture__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ImageCopyTexture__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUImageCopyTexture *n = (WGPUImageCopyTexture *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUImageCopyTexture) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ProgrammableStageDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ProgrammableStageDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUProgrammableStageDescriptor *n = (WGPUProgrammableStageDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
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
        RETVAL =   _find_set_void(aTHX_ h, "module", 6,  &n->module , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->module , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
entryPoint(THIS, value = NO_INIT)
        WebGPU::Direct::ProgrammableStageDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUProgrammableStageDescriptor *n = (WGPUProgrammableStageDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->entryPoint );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
constantCount(THIS, value = NO_INIT)
        WebGPU::Direct::ProgrammableStageDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUProgrammableStageDescriptor *n = (WGPUProgrammableStageDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "constantCount", 13,  &n->constantCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->constantCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
constants(THIS, value = NO_INIT)
        WebGPU::Direct::ProgrammableStageDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUProgrammableStageDescriptor *n = (WGPUProgrammableStageDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "constants", 9, (void **) &n->constants , newSVpvs("WebGPU::Direct::ConstantEntry"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->constants , newSVpvs("WebGPU::Direct::ConstantEntry"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ProgrammableStageDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ProgrammableStageDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUProgrammableStageDescriptor *n = (WGPUProgrammableStageDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUProgrammableStageDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPassColorAttachment	PREFIX = wgpu

void *
view(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassColorAttachment THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassColorAttachment *n = (WGPURenderPassColorAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_void(aTHX_ h, "view", 4,  &n->view , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->view , newSVpvs("void *"));

            _unpack(THIS);
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
        RETVAL =   _find_set_void(aTHX_ h, "resolveTarget", 13,  &n->resolveTarget , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->resolveTarget , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPULoadOp
loadOp(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassColorAttachment THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassColorAttachment *n = (WGPURenderPassColorAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "loadOp", 6,  &n->loadOp );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->loadOp );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUStoreOp
storeOp(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassColorAttachment THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassColorAttachment *n = (WGPURenderPassColorAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "storeOp", 7,  &n->storeOp );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->storeOp );

            _unpack(THIS);
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
        RETVAL =   _find_set_obj(aTHX_ h, "clearValue", 10,  &n->clearValue , newSVpvs("WebGPU::Direct::Color"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->clearValue , newSVpvs("WebGPU::Direct::Color"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassColorAttachment__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassColorAttachment__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPURenderPassColorAttachment *n = (WGPURenderPassColorAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPURenderPassColorAttachment) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RequiredLimits	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::RequiredLimits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURequiredLimits *n = (WGPURequiredLimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
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
        RETVAL =   _find_set_obj(aTHX_ h, "limits", 6,  &n->limits , newSVpvs("WebGPU::Direct::Limits"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->limits , newSVpvs("WebGPU::Direct::Limits"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RequiredLimits__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RequiredLimits__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPURequiredLimits *n = (WGPURequiredLimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPURequiredLimits) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ShaderModuleDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleDescriptor *n = (WGPUShaderModuleDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleDescriptor *n = (WGPUShaderModuleDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
hintCount(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleDescriptor *n = (WGPUShaderModuleDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "hintCount", 9,  &n->hintCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->hintCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
hints(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleDescriptor *n = (WGPUShaderModuleDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "hints", 5, (void **) &n->hints , newSVpvs("WebGPU::Direct::ShaderModuleCompilationHint"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->hints , newSVpvs("WebGPU::Direct::ShaderModuleCompilationHint"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ShaderModuleDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ShaderModuleDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUShaderModuleDescriptor *n = (WGPUShaderModuleDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUShaderModuleDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SupportedLimits	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::SupportedLimits THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUSupportedLimits *n = (WGPUSupportedLimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStructOut"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStructOut"));

            _unpack(THIS);
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
        RETVAL =   _find_set_obj(aTHX_ h, "limits", 6,  &n->limits , newSVpvs("WebGPU::Direct::Limits"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->limits , newSVpvs("WebGPU::Direct::Limits"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SupportedLimits__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__SupportedLimits__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUSupportedLimits *n = (WGPUSupportedLimits *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUSupportedLimits) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::TextureDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUTextureUsageFlags
usage(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "usage", 5,  &n->usage );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->usage );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUTextureDimension
dimension(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "dimension", 9,  &n->dimension );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->dimension );

            _unpack(THIS);
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
        RETVAL =   _find_set_obj(aTHX_ h, "size", 4,  &n->size , newSVpvs("WebGPU::Direct::Extent3D"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->size , newSVpvs("WebGPU::Direct::Extent3D"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "format", 6,  &n->format );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->format );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
mipLevelCount(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "mipLevelCount", 13,  &n->mipLevelCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->mipLevelCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
sampleCount(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "sampleCount", 11,  &n->sampleCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->sampleCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
viewFormatCount(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "viewFormatCount", 15,  &n->viewFormatCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->viewFormatCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
viewFormats(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   // "viewFormats" is a ptr type WGPUTextureFormat, and that's not quite right yet, using opaque
  _find_set_void(aTHX_ h, "viewFormats", 11,  &n->viewFormats , NULL);
;

        if (items > 1)
        {
              // "viewFormats" is a ptr type WGPUTextureFormat, and that's not quite right yet, using opaque
  _set_void(aTHX_ value,/**/ (void *) &n->viewFormats , NULL);

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__TextureDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__TextureDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUTextureDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::VertexBufferLayout	PREFIX = wgpu

uint64_t
arrayStride(THIS, value = NO_INIT)
        WebGPU::Direct::VertexBufferLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexBufferLayout *n = (WGPUVertexBufferLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint64_t(aTHX_ h, "arrayStride", 11,  &n->arrayStride );
;

        if (items > 1)
        {
              _set_uint64_t(aTHX_ value,/**/ (void *) &n->arrayStride );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUVertexStepMode
stepMode(THIS, value = NO_INIT)
        WebGPU::Direct::VertexBufferLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexBufferLayout *n = (WGPUVertexBufferLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "stepMode", 8,  &n->stepMode );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->stepMode );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
attributeCount(THIS, value = NO_INIT)
        WebGPU::Direct::VertexBufferLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexBufferLayout *n = (WGPUVertexBufferLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "attributeCount", 14,  &n->attributeCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->attributeCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
attributes(THIS, value = NO_INIT)
        WebGPU::Direct::VertexBufferLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexBufferLayout *n = (WGPUVertexBufferLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "attributes", 10, (void **) &n->attributes , newSVpvs("WebGPU::Direct::VertexAttribute"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->attributes , newSVpvs("WebGPU::Direct::VertexAttribute"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__VertexBufferLayout__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__VertexBufferLayout__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUVertexBufferLayout *n = (WGPUVertexBufferLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUVertexBufferLayout) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroupLayoutDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupLayoutDescriptor *n = (WGPUBindGroupLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupLayoutDescriptor *n = (WGPUBindGroupLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
entryCount(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupLayoutDescriptor *n = (WGPUBindGroupLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "entryCount", 10,  &n->entryCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->entryCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
entries(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupLayoutDescriptor *n = (WGPUBindGroupLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "entries", 7, (void **) &n->entries , newSVpvs("WebGPU::Direct::BindGroupLayoutEntry"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->entries , newSVpvs("WebGPU::Direct::BindGroupLayoutEntry"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BindGroupLayoutDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__BindGroupLayoutDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUBindGroupLayoutDescriptor *n = (WGPUBindGroupLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUBindGroupLayoutDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ColorTargetState	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ColorTargetState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUColorTargetState *n = (WGPUColorTargetState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUTextureFormat
format(THIS, value = NO_INIT)
        WebGPU::Direct::ColorTargetState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUColorTargetState *n = (WGPUColorTargetState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "format", 6,  &n->format );
;

        if (items > 1)
        {
              _set_enum(aTHX_ value,/**/ (void *) &n->format );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
blend(THIS, value = NO_INIT)
        WebGPU::Direct::ColorTargetState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUColorTargetState *n = (WGPUColorTargetState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "blend", 5, (void **) &n->blend , newSVpvs("WebGPU::Direct::BlendState"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->blend , newSVpvs("WebGPU::Direct::BlendState"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

WGPUColorWriteMaskFlags
writeMask(THIS, value = NO_INIT)
        WebGPU::Direct::ColorTargetState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUColorTargetState *n = (WGPUColorTargetState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "writeMask", 9,  &n->writeMask );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->writeMask );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ColorTargetState__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ColorTargetState__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUColorTargetState *n = (WGPUColorTargetState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUColorTargetState) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ComputePipelineDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePipelineDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePipelineDescriptor *n = (WGPUComputePipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePipelineDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePipelineDescriptor *n = (WGPUComputePipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
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
        RETVAL =   _find_set_void(aTHX_ h, "layout", 6,  &n->layout , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->layout , newSVpvs("void *"));

            _unpack(THIS);
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
        RETVAL =   _find_set_obj(aTHX_ h, "compute", 7,  &n->compute , newSVpvs("WebGPU::Direct::ProgrammableStageDescriptor"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->compute , newSVpvs("WebGPU::Direct::ProgrammableStageDescriptor"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ComputePipelineDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__ComputePipelineDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUComputePipelineDescriptor *n = (WGPUComputePipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUComputePipelineDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::DeviceDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDeviceDescriptor *n = (WGPUDeviceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDeviceDescriptor *n = (WGPUDeviceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
requiredFeaturesCount(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDeviceDescriptor *n = (WGPUDeviceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "requiredFeaturesCount", 21,  &n->requiredFeaturesCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->requiredFeaturesCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
requiredFeatures(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDeviceDescriptor *n = (WGPUDeviceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   // "requiredFeatures" is a ptr type WGPUFeatureName, and that's not quite right yet, using opaque
  _find_set_void(aTHX_ h, "requiredFeatures", 16,  &n->requiredFeatures , NULL);
;

        if (items > 1)
        {
              // "requiredFeatures" is a ptr type WGPUFeatureName, and that's not quite right yet, using opaque
  _set_void(aTHX_ value,/**/ (void *) &n->requiredFeatures , NULL);

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
requiredLimits(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDeviceDescriptor *n = (WGPUDeviceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "requiredLimits", 14, (void **) &n->requiredLimits , newSVpvs("WebGPU::Direct::RequiredLimits"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->requiredLimits , newSVpvs("WebGPU::Direct::RequiredLimits"));

            _unpack(THIS);
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
        RETVAL =   _find_set_obj(aTHX_ h, "defaultQueue", 12,  &n->defaultQueue , newSVpvs("WebGPU::Direct::QueueDescriptor"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->defaultQueue , newSVpvs("WebGPU::Direct::QueueDescriptor"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__DeviceDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__DeviceDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUDeviceDescriptor *n = (WGPUDeviceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUDeviceDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPassDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
colorAttachmentCount(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "colorAttachmentCount", 20,  &n->colorAttachmentCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->colorAttachmentCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
colorAttachments(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "colorAttachments", 16, (void **) &n->colorAttachments , newSVpvs("WebGPU::Direct::RenderPassColorAttachment"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->colorAttachments , newSVpvs("WebGPU::Direct::RenderPassColorAttachment"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
depthStencilAttachment(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "depthStencilAttachment", 22, (void **) &n->depthStencilAttachment , newSVpvs("WebGPU::Direct::RenderPassDepthStencilAttachment"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->depthStencilAttachment , newSVpvs("WebGPU::Direct::RenderPassDepthStencilAttachment"));

            _unpack(THIS);
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
        RETVAL =   _find_set_void(aTHX_ h, "occlusionQuerySet", 17,  &n->occlusionQuerySet , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->occlusionQuerySet , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
timestampWriteCount(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "timestampWriteCount", 19,  &n->timestampWriteCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->timestampWriteCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
timestampWrites(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "timestampWrites", 15, (void **) &n->timestampWrites , newSVpvs("WebGPU::Direct::RenderPassTimestampWrite"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->timestampWrites , newSVpvs("WebGPU::Direct::RenderPassTimestampWrite"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPassDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPURenderPassDescriptor) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::VertexState	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexState *n = (WGPUVertexState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
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
        RETVAL =   _find_set_void(aTHX_ h, "module", 6,  &n->module , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->module , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
entryPoint(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexState *n = (WGPUVertexState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->entryPoint );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
constantCount(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexState *n = (WGPUVertexState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "constantCount", 13,  &n->constantCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->constantCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
constants(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexState *n = (WGPUVertexState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "constants", 9, (void **) &n->constants , newSVpvs("WebGPU::Direct::ConstantEntry"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->constants , newSVpvs("WebGPU::Direct::ConstantEntry"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
bufferCount(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexState *n = (WGPUVertexState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "bufferCount", 11,  &n->bufferCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->bufferCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
buffers(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexState *n = (WGPUVertexState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "buffers", 7, (void **) &n->buffers , newSVpvs("WebGPU::Direct::VertexBufferLayout"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->buffers , newSVpvs("WebGPU::Direct::VertexBufferLayout"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__VertexState__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__VertexState__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUVertexState *n = (WGPUVertexState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUVertexState) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::FragmentState	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUFragmentState *n = (WGPUFragmentState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
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
        RETVAL =   _find_set_void(aTHX_ h, "module", 6,  &n->module , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->module , newSVpvs("void *"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
entryPoint(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUFragmentState *n = (WGPUFragmentState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->entryPoint );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
constantCount(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUFragmentState *n = (WGPUFragmentState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "constantCount", 13,  &n->constantCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->constantCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
constants(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUFragmentState *n = (WGPUFragmentState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "constants", 9, (void **) &n->constants , newSVpvs("WebGPU::Direct::ConstantEntry"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->constants , newSVpvs("WebGPU::Direct::ConstantEntry"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

uint32_t
targetCount(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUFragmentState *n = (WGPUFragmentState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_uint32_t(aTHX_ h, "targetCount", 11,  &n->targetCount );
;

        if (items > 1)
        {
              _set_uint32_t(aTHX_ value,/**/ (void *) &n->targetCount );

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
targets(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUFragmentState *n = (WGPUFragmentState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "targets", 7, (void **) &n->targets , newSVpvs("WebGPU::Direct::ColorTargetState"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->targets , newSVpvs("WebGPU::Direct::ColorTargetState"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__FragmentState__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__FragmentState__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPUFragmentState *n = (WGPUFragmentState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPUFragmentState) );
    OUTPUT:
        RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPipelineDescriptor	PREFIX = wgpu

SV *
nextInChain(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPipelineDescriptor *n = (WGPURenderPipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

char const  * 
label(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPipelineDescriptor *n = (WGPURenderPipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_str(aTHX_ h, "label", 5,  &n->label );
;

        if (items > 1)
        {
              _set_str(aTHX_ value,/**/ (void *) &n->label );

            _unpack(THIS);
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
        RETVAL =   _find_set_void(aTHX_ h, "layout", 6,  &n->layout , newSVpvs("void *"));
;

        if (items > 1)
        {
              _set_void(aTHX_ value,/**/ (void *) &n->layout , newSVpvs("void *"));

            _unpack(THIS);
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
        RETVAL =   _find_set_obj(aTHX_ h, "vertex", 6,  &n->vertex , newSVpvs("WebGPU::Direct::VertexState"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->vertex , newSVpvs("WebGPU::Direct::VertexState"));

            _unpack(THIS);
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
        RETVAL =   _find_set_obj(aTHX_ h, "primitive", 9,  &n->primitive , newSVpvs("WebGPU::Direct::PrimitiveState"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->primitive , newSVpvs("WebGPU::Direct::PrimitiveState"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
depthStencil(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPipelineDescriptor *n = (WGPURenderPipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "depthStencil", 12, (void **) &n->depthStencil , newSVpvs("WebGPU::Direct::DepthStencilState"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->depthStencil , newSVpvs("WebGPU::Direct::DepthStencilState"));

            _unpack(THIS);
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
        RETVAL =   _find_set_obj(aTHX_ h, "multisample", 11,  &n->multisample , newSVpvs("WebGPU::Direct::MultisampleState"));
;

        if (items > 1)
        {
              _set_obj(aTHX_ value,/**/ (void *) &n->multisample , newSVpvs("WebGPU::Direct::MultisampleState"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

SV *
fragment(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPipelineDescriptor *n = (WGPURenderPipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_objptr(aTHX_ h, "fragment", 8, (void **) &n->fragment , newSVpvs("WebGPU::Direct::FragmentState"));
;

        if (items > 1)
        {
              _set_objptr(aTHX_ value,/**/ (void *) &n->fragment , newSVpvs("WebGPU::Direct::FragmentState"));

            _unpack(THIS);
        }
    OUTPUT:
        RETVAL

void
pack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPipelineDescriptor__pack( THIS );
         //

void
unpack(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WebGPU__Direct__RenderPipelineDescriptor__unpack( THIS );
         //

SV *
bytes(THIS)
        SV *THIS
    PROTOTYPE: $
    CODE:
        WGPURenderPipelineDescriptor *n = (WGPURenderPipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL = newSVpvn((const char *const) n, sizeof(WGPURenderPipelineDescriptor) );
    OUTPUT:
        RETVAL


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

