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
        CV * callback
        SV * userdata
    CODE:
      WGPURequestDeviceCallback c = &WebGPU__Direct__RequestDeviceCallback__callback;
      cb_data c_userdata = {
        .guard1 = CB_GUARD,
        .guard2 = CB_GUARD,
        .perlsub = callback,
        .data = userdata,
      };
      wgpuAdapterRequestDevice(adapter, descriptor, c, &c_userdata);



void 
wgpuAdapterReference(adapter)
        WGPUAdapter adapter


void 
wgpuAdapterRelease(adapter)
        WGPUAdapter adapter


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroup	PREFIX = wgpuBindGroup


void 
wgpuBindGroupSetLabel(bindGroup, label)
        WGPUBindGroup bindGroup
        char const * label


void 
wgpuBindGroupReference(bindGroup)
        WGPUBindGroup bindGroup


void 
wgpuBindGroupRelease(bindGroup)
        WGPUBindGroup bindGroup


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroupLayout	PREFIX = wgpuBindGroupLayout


void 
wgpuBindGroupLayoutSetLabel(bindGroupLayout, label)
        WGPUBindGroupLayout bindGroupLayout
        char const * label


void 
wgpuBindGroupLayoutReference(bindGroupLayout)
        WGPUBindGroupLayout bindGroupLayout


void 
wgpuBindGroupLayoutRelease(bindGroupLayout)
        WGPUBindGroupLayout bindGroupLayout


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


WGPUBufferUsageFlags 
wgpuBufferGetUsage(buffer)
        WGPUBuffer buffer


void 
wgpuBufferMapAsync(buffer, mode, offset, size, callback, userdata)
        WGPUBuffer buffer
        WGPUMapModeFlags mode
        size_t offset
        size_t size
        CV * callback
        SV * userdata
    CODE:
      WGPUBufferMapCallback c = &WebGPU__Direct__BufferMapCallback__callback;
      cb_data c_userdata = {
        .guard1 = CB_GUARD,
        .guard2 = CB_GUARD,
        .perlsub = callback,
        .data = userdata,
      };
      wgpuBufferMapAsync(buffer, mode, offset, size, c, &c_userdata);



void 
wgpuBufferSetLabel(buffer, label)
        WGPUBuffer buffer
        char const * label


void 
wgpuBufferUnmap(buffer)
        WGPUBuffer buffer


void 
wgpuBufferReference(buffer)
        WGPUBuffer buffer


void 
wgpuBufferRelease(buffer)
        WGPUBuffer buffer


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CommandBuffer	PREFIX = wgpuCommandBuffer


void 
wgpuCommandBufferSetLabel(commandBuffer, label)
        WGPUCommandBuffer commandBuffer
        char const * label


void 
wgpuCommandBufferReference(commandBuffer)
        WGPUCommandBuffer commandBuffer


void 
wgpuCommandBufferRelease(commandBuffer)
        WGPUCommandBuffer commandBuffer


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


void 
wgpuCommandEncoderReference(commandEncoder)
        WGPUCommandEncoder commandEncoder


void 
wgpuCommandEncoderRelease(commandEncoder)
        WGPUCommandEncoder commandEncoder


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
        size_t dynamicOffsetCount
        uint32_t const * dynamicOffsets


void 
wgpuComputePassEncoderSetLabel(computePassEncoder, label)
        WGPUComputePassEncoder computePassEncoder
        char const * label


void 
wgpuComputePassEncoderSetPipeline(computePassEncoder, pipeline)
        WGPUComputePassEncoder computePassEncoder
        WGPUComputePipeline pipeline


void 
wgpuComputePassEncoderReference(computePassEncoder)
        WGPUComputePassEncoder computePassEncoder


void 
wgpuComputePassEncoderRelease(computePassEncoder)
        WGPUComputePassEncoder computePassEncoder


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ComputePipeline	PREFIX = wgpuComputePipeline


WGPUBindGroupLayout 
wgpuComputePipelineGetBindGroupLayout(computePipeline, groupIndex)
        WGPUComputePipeline computePipeline
        uint32_t groupIndex


void 
wgpuComputePipelineSetLabel(computePipeline, label)
        WGPUComputePipeline computePipeline
        char const * label


void 
wgpuComputePipelineReference(computePipeline)
        WGPUComputePipeline computePipeline


void 
wgpuComputePipelineRelease(computePipeline)
        WGPUComputePipeline computePipeline


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
        CV * callback
        SV * userdata
    CODE:
      WGPUCreateComputePipelineAsyncCallback c = &WebGPU__Direct__CreateComputePipelineAsyncCallback__callback;
      cb_data c_userdata = {
        .guard1 = CB_GUARD,
        .guard2 = CB_GUARD,
        .perlsub = callback,
        .data = userdata,
      };
      wgpuDeviceCreateComputePipelineAsync(device, descriptor, c, &c_userdata);



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
        CV * callback
        SV * userdata
    CODE:
      WGPUCreateRenderPipelineAsyncCallback c = &WebGPU__Direct__CreateRenderPipelineAsyncCallback__callback;
      cb_data c_userdata = {
        .guard1 = CB_GUARD,
        .guard2 = CB_GUARD,
        .perlsub = callback,
        .data = userdata,
      };
      wgpuDeviceCreateRenderPipelineAsync(device, descriptor, c, &c_userdata);



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


void 
wgpuDevicePopErrorScope(device, callback, userdata)
        WGPUDevice device
        CV * callback
        SV * userdata
    CODE:
      WGPUErrorCallback c = &WebGPU__Direct__ErrorCallback__callback;
      cb_data c_userdata = {
        .guard1 = CB_GUARD,
        .guard2 = CB_GUARD,
        .perlsub = callback,
        .data = userdata,
      };
      wgpuDevicePopErrorScope(device, c, &c_userdata);



void 
wgpuDevicePushErrorScope(device, filter)
        WGPUDevice device
        WGPUErrorFilter filter


void 
wgpuDeviceSetLabel(device, label)
        WGPUDevice device
        char const * label


void 
wgpuDeviceSetUncapturedErrorCallback(device, callback, userdata)
        WGPUDevice device
        CV * callback
        SV * userdata
    CODE:
      WGPUErrorCallback c = &WebGPU__Direct__ErrorCallback__callback;
      cb_data c_userdata = {
        .guard1 = CB_GUARD,
        .guard2 = CB_GUARD,
        .perlsub = callback,
        .data = userdata,
      };
      wgpuDeviceSetUncapturedErrorCallback(device, c, &c_userdata);



void 
wgpuDeviceReference(device)
        WGPUDevice device


void 
wgpuDeviceRelease(device)
        WGPUDevice device


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
        CV * callback
        SV * userdata
    CODE:
      WGPURequestAdapterCallback c = &WebGPU__Direct__RequestAdapterCallback__callback;
      cb_data c_userdata = {
        .guard1 = CB_GUARD,
        .guard2 = CB_GUARD,
        .perlsub = callback,
        .data = userdata,
      };
      wgpuInstanceRequestAdapter(instance, options, c, &c_userdata);



void 
wgpuInstanceReference(instance)
        WGPUInstance instance


void 
wgpuInstanceRelease(instance)
        WGPUInstance instance


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::PipelineLayout	PREFIX = wgpuPipelineLayout


void 
wgpuPipelineLayoutSetLabel(pipelineLayout, label)
        WGPUPipelineLayout pipelineLayout
        char const * label


void 
wgpuPipelineLayoutReference(pipelineLayout)
        WGPUPipelineLayout pipelineLayout


void 
wgpuPipelineLayoutRelease(pipelineLayout)
        WGPUPipelineLayout pipelineLayout


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


void 
wgpuQuerySetReference(querySet)
        WGPUQuerySet querySet


void 
wgpuQuerySetRelease(querySet)
        WGPUQuerySet querySet


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Queue	PREFIX = wgpuQueue


void 
wgpuQueueOnSubmittedWorkDone(queue, callback, userdata)
        WGPUQueue queue
        CV * callback
        SV * userdata
    CODE:
      WGPUQueueWorkDoneCallback c = &WebGPU__Direct__QueueWorkDoneCallback__callback;
      cb_data c_userdata = {
        .guard1 = CB_GUARD,
        .guard2 = CB_GUARD,
        .perlsub = callback,
        .data = userdata,
      };
      wgpuQueueOnSubmittedWorkDone(queue, c, &c_userdata);



void 
wgpuQueueSetLabel(queue, label)
        WGPUQueue queue
        char const * label


void 
wgpuQueueSubmit(queue, commandCount, commands)
        WGPUQueue queue
        size_t commandCount
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


void 
wgpuQueueReference(queue)
        WGPUQueue queue


void 
wgpuQueueRelease(queue)
        WGPUQueue queue


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderBundle	PREFIX = wgpuRenderBundle


void 
wgpuRenderBundleSetLabel(renderBundle, label)
        WGPURenderBundle renderBundle
        char const * label


void 
wgpuRenderBundleReference(renderBundle)
        WGPURenderBundle renderBundle


void 
wgpuRenderBundleRelease(renderBundle)
        WGPURenderBundle renderBundle


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
        size_t dynamicOffsetCount
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


void 
wgpuRenderBundleEncoderReference(renderBundleEncoder)
        WGPURenderBundleEncoder renderBundleEncoder


void 
wgpuRenderBundleEncoderRelease(renderBundleEncoder)
        WGPURenderBundleEncoder renderBundleEncoder


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
        size_t bundleCount
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
        size_t dynamicOffsetCount
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


void 
wgpuRenderPassEncoderReference(renderPassEncoder)
        WGPURenderPassEncoder renderPassEncoder


void 
wgpuRenderPassEncoderRelease(renderPassEncoder)
        WGPURenderPassEncoder renderPassEncoder


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPipeline	PREFIX = wgpuRenderPipeline


WGPUBindGroupLayout 
wgpuRenderPipelineGetBindGroupLayout(renderPipeline, groupIndex)
        WGPURenderPipeline renderPipeline
        uint32_t groupIndex


void 
wgpuRenderPipelineSetLabel(renderPipeline, label)
        WGPURenderPipeline renderPipeline
        char const * label


void 
wgpuRenderPipelineReference(renderPipeline)
        WGPURenderPipeline renderPipeline


void 
wgpuRenderPipelineRelease(renderPipeline)
        WGPURenderPipeline renderPipeline


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Sampler	PREFIX = wgpuSampler


void 
wgpuSamplerSetLabel(sampler, label)
        WGPUSampler sampler
        char const * label


void 
wgpuSamplerReference(sampler)
        WGPUSampler sampler


void 
wgpuSamplerRelease(sampler)
        WGPUSampler sampler


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ShaderModule	PREFIX = wgpuShaderModule


void 
wgpuShaderModuleGetCompilationInfo(shaderModule, callback, userdata)
        WGPUShaderModule shaderModule
        CV * callback
        SV * userdata
    CODE:
      WGPUCompilationInfoCallback c = &WebGPU__Direct__CompilationInfoCallback__callback;
      cb_data c_userdata = {
        .guard1 = CB_GUARD,
        .guard2 = CB_GUARD,
        .perlsub = callback,
        .data = userdata,
      };
      wgpuShaderModuleGetCompilationInfo(shaderModule, c, &c_userdata);



void 
wgpuShaderModuleSetLabel(shaderModule, label)
        WGPUShaderModule shaderModule
        char const * label


void 
wgpuShaderModuleReference(shaderModule)
        WGPUShaderModule shaderModule


void 
wgpuShaderModuleRelease(shaderModule)
        WGPUShaderModule shaderModule


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Surface	PREFIX = wgpuSurface


WGPUTextureFormat 
wgpuSurfaceGetPreferredFormat(surface, adapter)
        WGPUSurface surface
        WGPUAdapter adapter


void 
wgpuSurfaceReference(surface)
        WGPUSurface surface


void 
wgpuSurfaceRelease(surface)
        WGPUSurface surface


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SwapChain	PREFIX = wgpuSwapChain


WGPUTextureView 
wgpuSwapChainGetCurrentTextureView(swapChain)
        WGPUSwapChain swapChain


void 
wgpuSwapChainPresent(swapChain)
        WGPUSwapChain swapChain


void 
wgpuSwapChainReference(swapChain)
        WGPUSwapChain swapChain


void 
wgpuSwapChainRelease(swapChain)
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


WGPUTextureUsageFlags 
wgpuTextureGetUsage(texture)
        WGPUTexture texture


uint32_t 
wgpuTextureGetWidth(texture)
        WGPUTexture texture


void 
wgpuTextureSetLabel(texture, label)
        WGPUTexture texture
        char const * label


void 
wgpuTextureReference(texture)
        WGPUTexture texture


void 
wgpuTextureRelease(texture)
        WGPUTexture texture


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::TextureView	PREFIX = wgpuTextureView


void 
wgpuTextureViewSetLabel(textureView, label)
        WGPUTextureView textureView
        char const * label


void 
wgpuTextureViewReference(textureView)
        WGPUTextureView textureView


void 
wgpuTextureViewRelease(textureView)
        WGPUTextureView textureView


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
              _store_objptr(aTHX_ h, "next", 4, (void **) &n->next , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "sType", 5,  &n->sType , value);

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
              _store_objptr(aTHX_ h, "next", 4, (void **) &n->next , newSVpvs("WebGPU::Direct::ChainedStructOut"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "sType", 5,  &n->sType , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStructOut"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "vendorID", 8,  &n->vendorID , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "vendorName", 10,  &n->vendorName , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "architecture", 12,  &n->architecture , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "deviceID", 8,  &n->deviceID , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "name", 4,  &n->name , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "driverDescription", 17,  &n->driverDescription , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "adapterType", 11,  &n->adapterType , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "backendType", 11,  &n->backendType , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "binding", 7,  &n->binding , value);

        }
    OUTPUT:
        RETVAL

SV *
buffer(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupEntry *n = (WGPUBindGroupEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_opaque(aTHX_ h, "buffer", 6, (void **) &n->buffer , newSVpvs("WebGPU::Direct::Buffer"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "buffer", 6, (void **) &n->buffer , newSVpvs("WebGPU::Direct::Buffer"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint64_t(aTHX_ h, "offset", 6,  &n->offset , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint64_t(aTHX_ h, "size", 4,  &n->size , value);

        }
    OUTPUT:
        RETVAL

SV *
sampler(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupEntry *n = (WGPUBindGroupEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_opaque(aTHX_ h, "sampler", 7, (void **) &n->sampler , newSVpvs("WebGPU::Direct::Sampler"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "sampler", 7, (void **) &n->sampler , newSVpvs("WebGPU::Direct::Sampler"), value);

        }
    OUTPUT:
        RETVAL

SV *
textureView(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupEntry THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupEntry *n = (WGPUBindGroupEntry *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_opaque(aTHX_ h, "textureView", 11, (void **) &n->textureView , newSVpvs("WebGPU::Direct::TextureView"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "textureView", 11, (void **) &n->textureView , newSVpvs("WebGPU::Direct::TextureView"), value);

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

SV *
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
              _store_enum(aTHX_ h, "operation", 9,  &n->operation , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "srcFactor", 9,  &n->srcFactor , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "dstFactor", 9,  &n->dstFactor , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "type", 4,  &n->type , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_bool(aTHX_ h, "hasDynamicOffset", 16,  &n->hasDynamicOffset , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint64_t(aTHX_ h, "minBindingSize", 14,  &n->minBindingSize , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "usage", 5,  &n->usage , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint64_t(aTHX_ h, "size", 4,  &n->size , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_bool(aTHX_ h, "mappedAtCreation", 16,  &n->mappedAtCreation , value);

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

SV *
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
              _store_double(aTHX_ h, "r", 1,  &n->r , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_double(aTHX_ h, "g", 1,  &n->g , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_double(aTHX_ h, "b", 1,  &n->b , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_double(aTHX_ h, "a", 1,  &n->a , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "message", 7,  &n->message , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "type", 4,  &n->type , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint64_t(aTHX_ h, "lineNum", 7,  &n->lineNum , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint64_t(aTHX_ h, "linePos", 7,  &n->linePos , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint64_t(aTHX_ h, "offset", 6,  &n->offset , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint64_t(aTHX_ h, "length", 6,  &n->length , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint64_t(aTHX_ h, "utf16LinePos", 12,  &n->utf16LinePos , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint64_t(aTHX_ h, "utf16Offset", 11,  &n->utf16Offset , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint64_t(aTHX_ h, "utf16Length", 11,  &n->utf16Length , value);

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

SV *
querySet(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassTimestampWrite THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePassTimestampWrite *n = (WGPUComputePassTimestampWrite *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_opaque(aTHX_ h, "querySet", 8, (void **) &n->querySet , newSVpvs("WebGPU::Direct::QuerySet"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "querySet", 8, (void **) &n->querySet , newSVpvs("WebGPU::Direct::QuerySet"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "queryIndex", 10,  &n->queryIndex , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "location", 8,  &n->location , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "key", 3,  &n->key , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_double(aTHX_ h, "value", 5,  &n->value , value);

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

SV *
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
              _store_uint32_t(aTHX_ h, "width", 5,  &n->width , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "height", 6,  &n->height , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "depthOrArrayLayers", 18,  &n->depthOrArrayLayers , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

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

SV *
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
              _store_uint32_t(aTHX_ h, "maxTextureDimension1D", 21,  &n->maxTextureDimension1D , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxTextureDimension2D", 21,  &n->maxTextureDimension2D , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxTextureDimension3D", 21,  &n->maxTextureDimension3D , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxTextureArrayLayers", 21,  &n->maxTextureArrayLayers , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxBindGroups", 13,  &n->maxBindGroups , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxBindingsPerBindGroup", 23,  &n->maxBindingsPerBindGroup , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxDynamicUniformBuffersPerPipelineLayout", 41,  &n->maxDynamicUniformBuffersPerPipelineLayout , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxDynamicStorageBuffersPerPipelineLayout", 41,  &n->maxDynamicStorageBuffersPerPipelineLayout , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxSampledTexturesPerShaderStage", 32,  &n->maxSampledTexturesPerShaderStage , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxSamplersPerShaderStage", 25,  &n->maxSamplersPerShaderStage , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxStorageBuffersPerShaderStage", 31,  &n->maxStorageBuffersPerShaderStage , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxStorageTexturesPerShaderStage", 32,  &n->maxStorageTexturesPerShaderStage , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxUniformBuffersPerShaderStage", 31,  &n->maxUniformBuffersPerShaderStage , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint64_t(aTHX_ h, "maxUniformBufferBindingSize", 27,  &n->maxUniformBufferBindingSize , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint64_t(aTHX_ h, "maxStorageBufferBindingSize", 27,  &n->maxStorageBufferBindingSize , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "minUniformBufferOffsetAlignment", 31,  &n->minUniformBufferOffsetAlignment , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "minStorageBufferOffsetAlignment", 31,  &n->minStorageBufferOffsetAlignment , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxVertexBuffers", 16,  &n->maxVertexBuffers , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint64_t(aTHX_ h, "maxBufferSize", 13,  &n->maxBufferSize , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxVertexAttributes", 19,  &n->maxVertexAttributes , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxVertexBufferArrayStride", 26,  &n->maxVertexBufferArrayStride , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxInterStageShaderComponents", 29,  &n->maxInterStageShaderComponents , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxInterStageShaderVariables", 28,  &n->maxInterStageShaderVariables , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxColorAttachments", 19,  &n->maxColorAttachments , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxColorAttachmentBytesPerSample", 32,  &n->maxColorAttachmentBytesPerSample , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxComputeWorkgroupStorageSize", 30,  &n->maxComputeWorkgroupStorageSize , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxComputeInvocationsPerWorkgroup", 33,  &n->maxComputeInvocationsPerWorkgroup , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeX", 24,  &n->maxComputeWorkgroupSizeX , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeY", 24,  &n->maxComputeWorkgroupSizeY , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeZ", 24,  &n->maxComputeWorkgroupSizeZ , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "maxComputeWorkgroupsPerDimension", 32,  &n->maxComputeWorkgroupsPerDimension , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "count", 5,  &n->count , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "mask", 4,  &n->mask , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_bool(aTHX_ h, "alphaToCoverageEnabled", 22,  &n->alphaToCoverageEnabled , value);

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

SV *
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
              _store_uint32_t(aTHX_ h, "x", 1,  &n->x , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "y", 1,  &n->y , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "z", 1,  &n->z , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

        }
    OUTPUT:
        RETVAL

SV *
bindGroupLayoutCount(THIS, value = NO_INIT)
        WebGPU::Direct::PipelineLayoutDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUPipelineLayoutDescriptor *n = (WGPUPipelineLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_size_t(aTHX_ h, "bindGroupLayoutCount", 20,  &n->bindGroupLayoutCount );
;

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "bindGroupLayoutCount", 20,  &n->bindGroupLayoutCount , value);

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
        RETVAL =   _find_set_opaque(aTHX_ h, "bindGroupLayouts", 16, (void **) &n->bindGroupLayouts , newSVpvs("WebGPU::Direct::BindGroupLayout"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "bindGroupLayouts", 16, (void **) &n->bindGroupLayouts , newSVpvs("WebGPU::Direct::BindGroupLayout"), value);

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

SV *
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
              _store_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_bool(aTHX_ h, "unclippedDepth", 14,  &n->unclippedDepth , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "topology", 8,  &n->topology , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "stripIndexFormat", 16,  &n->stripIndexFormat , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "frontFace", 9,  &n->frontFace , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "cullMode", 8,  &n->cullMode , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "type", 4,  &n->type , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "count", 5,  &n->count , value);

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
  _find_set_void(aTHX_ h, "pipelineStatistics", 18,  &n->pipelineStatistics );
;

        if (items > 1)
        {
              // "pipelineStatistics" is a ptr type WGPUPipelineStatisticName, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "pipelineStatistics", 18,  &n->pipelineStatistics , value);

        }
    OUTPUT:
        RETVAL

SV *
pipelineStatisticsCount(THIS, value = NO_INIT)
        WebGPU::Direct::QuerySetDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUQuerySetDescriptor *n = (WGPUQuerySetDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_size_t(aTHX_ h, "pipelineStatisticsCount", 23,  &n->pipelineStatisticsCount );
;

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "pipelineStatisticsCount", 23,  &n->pipelineStatisticsCount , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

        }
    OUTPUT:
        RETVAL

SV *
colorFormatsCount(THIS, value = NO_INIT)
        WebGPU::Direct::RenderBundleEncoderDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_size_t(aTHX_ h, "colorFormatsCount", 17,  &n->colorFormatsCount );
;

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "colorFormatsCount", 17,  &n->colorFormatsCount , value);

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
  _find_set_void(aTHX_ h, "colorFormats", 12,  &n->colorFormats );
;

        if (items > 1)
        {
              // "colorFormats" is a ptr type WGPUTextureFormat, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "colorFormats", 12,  &n->colorFormats , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "depthStencilFormat", 18,  &n->depthStencilFormat , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "sampleCount", 11,  &n->sampleCount , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_bool(aTHX_ h, "depthReadOnly", 13,  &n->depthReadOnly , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_bool(aTHX_ h, "stencilReadOnly", 15,  &n->stencilReadOnly , value);

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

SV *
view(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDepthStencilAttachment THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_opaque(aTHX_ h, "view", 4, (void **) &n->view , newSVpvs("WebGPU::Direct::TextureView"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "view", 4, (void **) &n->view , newSVpvs("WebGPU::Direct::TextureView"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "depthLoadOp", 11,  &n->depthLoadOp , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "depthStoreOp", 12,  &n->depthStoreOp , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_float(aTHX_ h, "depthClearValue", 15,  &n->depthClearValue , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_bool(aTHX_ h, "depthReadOnly", 13,  &n->depthReadOnly , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "stencilLoadOp", 13,  &n->stencilLoadOp , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "stencilStoreOp", 14,  &n->stencilStoreOp , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "stencilClearValue", 17,  &n->stencilClearValue , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_bool(aTHX_ h, "stencilReadOnly", 15,  &n->stencilReadOnly , value);

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

SV *
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
              _store_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint64_t(aTHX_ h, "maxDrawCount", 12,  &n->maxDrawCount , value);

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

SV *
querySet(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassTimestampWrite THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassTimestampWrite *n = (WGPURenderPassTimestampWrite *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_opaque(aTHX_ h, "querySet", 8, (void **) &n->querySet , newSVpvs("WebGPU::Direct::QuerySet"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "querySet", 8, (void **) &n->querySet , newSVpvs("WebGPU::Direct::QuerySet"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "queryIndex", 10,  &n->queryIndex , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "location", 8,  &n->location , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
compatibleSurface(THIS, value = NO_INIT)
        WebGPU::Direct::RequestAdapterOptions THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURequestAdapterOptions *n = (WGPURequestAdapterOptions *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_opaque(aTHX_ h, "compatibleSurface", 17, (void **) &n->compatibleSurface , newSVpvs("WebGPU::Direct::Surface"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "compatibleSurface", 17, (void **) &n->compatibleSurface , newSVpvs("WebGPU::Direct::Surface"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "powerPreference", 15,  &n->powerPreference , value);

        }
    OUTPUT:
        RETVAL

SV *
backendType(THIS, value = NO_INIT)
        WebGPU::Direct::RequestAdapterOptions THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURequestAdapterOptions *n = (WGPURequestAdapterOptions *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_enum(aTHX_ h, "backendType", 11,  &n->backendType );
;

        if (items > 1)
        {
              _store_enum(aTHX_ h, "backendType", 11,  &n->backendType , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_bool(aTHX_ h, "forceFallbackAdapter", 20,  &n->forceFallbackAdapter , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "type", 4,  &n->type , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "addressModeU", 12,  &n->addressModeU , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "addressModeV", 12,  &n->addressModeV , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "addressModeW", 12,  &n->addressModeW , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "magFilter", 9,  &n->magFilter , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "minFilter", 9,  &n->minFilter , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "mipmapFilter", 12,  &n->mipmapFilter , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_float(aTHX_ h, "lodMinClamp", 11,  &n->lodMinClamp , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_float(aTHX_ h, "lodMaxClamp", 11,  &n->lodMaxClamp , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "compare", 7,  &n->compare , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint16_t(aTHX_ h, "maxAnisotropy", 13,  &n->maxAnisotropy , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint , value);

        }
    OUTPUT:
        RETVAL

SV *
layout(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleCompilationHint THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleCompilationHint *n = (WGPUShaderModuleCompilationHint *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_opaque(aTHX_ h, "layout", 6, (void **) &n->layout , newSVpvs("WebGPU::Direct::PipelineLayout"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "layout", 6, (void **) &n->layout , newSVpvs("WebGPU::Direct::PipelineLayout"), value);

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

SV *
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
              _store_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "codeSize", 8,  &n->codeSize , value);

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
  _find_set_void(aTHX_ h, "code", 4,  &n->code );
;

        if (items > 1)
        {
              // "code" is a ptr type uint32_t, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "code", 4,  &n->code , value);

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

SV *
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
              _store_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "code", 4,  &n->code , value);

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

SV *
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
              _store_enum(aTHX_ h, "compare", 7,  &n->compare , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "failOp", 6,  &n->failOp , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "depthFailOp", 11,  &n->depthFailOp , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "passOp", 6,  &n->passOp , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "access", 6,  &n->access , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "format", 6,  &n->format , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "viewDimension", 13,  &n->viewDimension , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

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

SV *
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
              _store_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

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
        RETVAL =   // "window" is a ptr type void, and that's not quite right yet, using opaque
  _find_set_void(aTHX_ h, "window", 6,  &n->window );
;

        if (items > 1)
        {
              // "window" is a ptr type void, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "window", 6,  &n->window , value);

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

SV *
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
              _store_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "selector", 8,  &n->selector , value);

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

SV *
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
              _store_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

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
        RETVAL =   // "layer" is a ptr type void, and that's not quite right yet, using opaque
  _find_set_void(aTHX_ h, "layer", 5,  &n->layer );
;

        if (items > 1)
        {
              // "layer" is a ptr type void, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "layer", 5,  &n->layer , value);

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

SV *
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
              _store_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

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
        RETVAL =   // "display" is a ptr type void, and that's not quite right yet, using opaque
  _find_set_void(aTHX_ h, "display", 7,  &n->display );
;

        if (items > 1)
        {
              // "display" is a ptr type void, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "display", 7,  &n->display , value);

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
        RETVAL =   // "surface" is a ptr type void, and that's not quite right yet, using opaque
  _find_set_void(aTHX_ h, "surface", 7,  &n->surface );
;

        if (items > 1)
        {
              // "surface" is a ptr type void, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "surface", 7,  &n->surface , value);

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

SV *
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
              _store_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

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
        RETVAL =   // "hinstance" is a ptr type void, and that's not quite right yet, using opaque
  _find_set_void(aTHX_ h, "hinstance", 9,  &n->hinstance );
;

        if (items > 1)
        {
              // "hinstance" is a ptr type void, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "hinstance", 9,  &n->hinstance , value);

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
        RETVAL =   // "hwnd" is a ptr type void, and that's not quite right yet, using opaque
  _find_set_void(aTHX_ h, "hwnd", 4,  &n->hwnd );
;

        if (items > 1)
        {
              // "hwnd" is a ptr type void, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "hwnd", 4,  &n->hwnd , value);

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

SV *
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
              _store_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

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
        RETVAL =   // "connection" is a ptr type void, and that's not quite right yet, using opaque
  _find_set_void(aTHX_ h, "connection", 10,  &n->connection );
;

        if (items > 1)
        {
              // "connection" is a ptr type void, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "connection", 10,  &n->connection , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "window", 6,  &n->window , value);

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

SV *
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
              _store_obj(aTHX_ h, "chain", 5,  &n->chain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

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
        RETVAL =   // "display" is a ptr type void, and that's not quite right yet, using opaque
  _find_set_void(aTHX_ h, "display", 7,  &n->display );
;

        if (items > 1)
        {
              // "display" is a ptr type void, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "display", 7,  &n->display , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "window", 6,  &n->window , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "usage", 5,  &n->usage , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "format", 6,  &n->format , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "width", 5,  &n->width , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "height", 6,  &n->height , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "presentMode", 11,  &n->presentMode , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "sampleType", 10,  &n->sampleType , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "viewDimension", 13,  &n->viewDimension , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_bool(aTHX_ h, "multisampled", 12,  &n->multisampled , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint64_t(aTHX_ h, "offset", 6,  &n->offset , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "bytesPerRow", 11,  &n->bytesPerRow , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "rowsPerImage", 12,  &n->rowsPerImage , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "format", 6,  &n->format , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "dimension", 9,  &n->dimension , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "baseMipLevel", 12,  &n->baseMipLevel , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "mipLevelCount", 13,  &n->mipLevelCount , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "baseArrayLayer", 14,  &n->baseArrayLayer , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "arrayLayerCount", 15,  &n->arrayLayerCount , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "aspect", 6,  &n->aspect , value);

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

SV *
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
              _store_enum(aTHX_ h, "format", 6,  &n->format , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint64_t(aTHX_ h, "offset", 6,  &n->offset , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "shaderLocation", 14,  &n->shaderLocation , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

        }
    OUTPUT:
        RETVAL

SV *
layout(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupDescriptor *n = (WGPUBindGroupDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_opaque(aTHX_ h, "layout", 6, (void **) &n->layout , newSVpvs("WebGPU::Direct::BindGroupLayout"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "layout", 6, (void **) &n->layout , newSVpvs("WebGPU::Direct::BindGroupLayout"), value);

        }
    OUTPUT:
        RETVAL

SV *
entryCount(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupDescriptor *n = (WGPUBindGroupDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_size_t(aTHX_ h, "entryCount", 10,  &n->entryCount );
;

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "entryCount", 10,  &n->entryCount , value);

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
              _store_objptr(aTHX_ h, "entries", 7, (void **) &n->entries , newSVpvs("WebGPU::Direct::BindGroupEntry"), value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "binding", 7,  &n->binding , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "visibility", 10,  &n->visibility , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_obj(aTHX_ h, "buffer", 6,  &n->buffer , newSVpvs("WebGPU::Direct::BufferBindingLayout"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_obj(aTHX_ h, "sampler", 7,  &n->sampler , newSVpvs("WebGPU::Direct::SamplerBindingLayout"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_obj(aTHX_ h, "texture", 7,  &n->texture , newSVpvs("WebGPU::Direct::TextureBindingLayout"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_obj(aTHX_ h, "storageTexture", 14,  &n->storageTexture , newSVpvs("WebGPU::Direct::StorageTextureBindingLayout"), value);

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

SV *
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
              _store_obj(aTHX_ h, "color", 5,  &n->color , newSVpvs("WebGPU::Direct::BlendComponent"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_obj(aTHX_ h, "alpha", 5,  &n->alpha , newSVpvs("WebGPU::Direct::BlendComponent"), value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
messageCount(THIS, value = NO_INIT)
        WebGPU::Direct::CompilationInfo THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUCompilationInfo *n = (WGPUCompilationInfo *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_size_t(aTHX_ h, "messageCount", 12,  &n->messageCount );
;

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "messageCount", 12,  &n->messageCount , value);

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
              _store_objptr(aTHX_ h, "messages", 8, (void **) &n->messages , newSVpvs("WebGPU::Direct::CompilationMessage"), value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

        }
    OUTPUT:
        RETVAL

SV *
timestampWriteCount(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePassDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePassDescriptor *n = (WGPUComputePassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_size_t(aTHX_ h, "timestampWriteCount", 19,  &n->timestampWriteCount );
;

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "timestampWriteCount", 19,  &n->timestampWriteCount , value);

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
              _store_objptr(aTHX_ h, "timestampWrites", 15, (void **) &n->timestampWrites , newSVpvs("WebGPU::Direct::ComputePassTimestampWrite"), value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "format", 6,  &n->format , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_bool(aTHX_ h, "depthWriteEnabled", 17,  &n->depthWriteEnabled , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "depthCompare", 12,  &n->depthCompare , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_obj(aTHX_ h, "stencilFront", 12,  &n->stencilFront , newSVpvs("WebGPU::Direct::StencilFaceState"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_obj(aTHX_ h, "stencilBack", 11,  &n->stencilBack , newSVpvs("WebGPU::Direct::StencilFaceState"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "stencilReadMask", 15,  &n->stencilReadMask , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "stencilWriteMask", 16,  &n->stencilWriteMask , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_int32_t(aTHX_ h, "depthBias", 9,  &n->depthBias , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_float(aTHX_ h, "depthBiasSlopeScale", 19,  &n->depthBiasSlopeScale , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_float(aTHX_ h, "depthBiasClamp", 14,  &n->depthBiasClamp , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_obj(aTHX_ h, "layout", 6,  &n->layout , newSVpvs("WebGPU::Direct::TextureDataLayout"), value);

        }
    OUTPUT:
        RETVAL

SV *
buffer(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyBuffer THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUImageCopyBuffer *n = (WGPUImageCopyBuffer *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_opaque(aTHX_ h, "buffer", 6, (void **) &n->buffer , newSVpvs("WebGPU::Direct::Buffer"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "buffer", 6, (void **) &n->buffer , newSVpvs("WebGPU::Direct::Buffer"), value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
texture(THIS, value = NO_INIT)
        WebGPU::Direct::ImageCopyTexture THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUImageCopyTexture *n = (WGPUImageCopyTexture *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_opaque(aTHX_ h, "texture", 7, (void **) &n->texture , newSVpvs("WebGPU::Direct::Texture"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "texture", 7, (void **) &n->texture , newSVpvs("WebGPU::Direct::Texture"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "mipLevel", 8,  &n->mipLevel , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_obj(aTHX_ h, "origin", 6,  &n->origin , newSVpvs("WebGPU::Direct::Origin3D"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "aspect", 6,  &n->aspect , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
module(THIS, value = NO_INIT)
        WebGPU::Direct::ProgrammableStageDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUProgrammableStageDescriptor *n = (WGPUProgrammableStageDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_opaque(aTHX_ h, "module", 6, (void **) &n->module , newSVpvs("WebGPU::Direct::ShaderModule"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "module", 6, (void **) &n->module , newSVpvs("WebGPU::Direct::ShaderModule"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint , value);

        }
    OUTPUT:
        RETVAL

SV *
constantCount(THIS, value = NO_INIT)
        WebGPU::Direct::ProgrammableStageDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUProgrammableStageDescriptor *n = (WGPUProgrammableStageDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_size_t(aTHX_ h, "constantCount", 13,  &n->constantCount );
;

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "constantCount", 13,  &n->constantCount , value);

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
              _store_objptr(aTHX_ h, "constants", 9, (void **) &n->constants , newSVpvs("WebGPU::Direct::ConstantEntry"), value);

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

SV *
view(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassColorAttachment THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassColorAttachment *n = (WGPURenderPassColorAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_opaque(aTHX_ h, "view", 4, (void **) &n->view , newSVpvs("WebGPU::Direct::TextureView"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "view", 4, (void **) &n->view , newSVpvs("WebGPU::Direct::TextureView"), value);

        }
    OUTPUT:
        RETVAL

SV *
resolveTarget(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassColorAttachment THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassColorAttachment *n = (WGPURenderPassColorAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_opaque(aTHX_ h, "resolveTarget", 13, (void **) &n->resolveTarget , newSVpvs("WebGPU::Direct::TextureView"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "resolveTarget", 13, (void **) &n->resolveTarget , newSVpvs("WebGPU::Direct::TextureView"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "loadOp", 6,  &n->loadOp , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "storeOp", 7,  &n->storeOp , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_obj(aTHX_ h, "clearValue", 10,  &n->clearValue , newSVpvs("WebGPU::Direct::Color"), value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_obj(aTHX_ h, "limits", 6,  &n->limits , newSVpvs("WebGPU::Direct::Limits"), value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

        }
    OUTPUT:
        RETVAL

SV *
hintCount(THIS, value = NO_INIT)
        WebGPU::Direct::ShaderModuleDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUShaderModuleDescriptor *n = (WGPUShaderModuleDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_size_t(aTHX_ h, "hintCount", 9,  &n->hintCount );
;

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "hintCount", 9,  &n->hintCount , value);

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
              _store_objptr(aTHX_ h, "hints", 5, (void **) &n->hints , newSVpvs("WebGPU::Direct::ShaderModuleCompilationHint"), value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStructOut"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_obj(aTHX_ h, "limits", 6,  &n->limits , newSVpvs("WebGPU::Direct::Limits"), value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "usage", 5,  &n->usage , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "dimension", 9,  &n->dimension , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_obj(aTHX_ h, "size", 4,  &n->size , newSVpvs("WebGPU::Direct::Extent3D"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "format", 6,  &n->format , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "mipLevelCount", 13,  &n->mipLevelCount , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "sampleCount", 11,  &n->sampleCount , value);

        }
    OUTPUT:
        RETVAL

SV *
viewFormatCount(THIS, value = NO_INIT)
        WebGPU::Direct::TextureDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_size_t(aTHX_ h, "viewFormatCount", 15,  &n->viewFormatCount );
;

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "viewFormatCount", 15,  &n->viewFormatCount , value);

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
  _find_set_void(aTHX_ h, "viewFormats", 11,  &n->viewFormats );
;

        if (items > 1)
        {
              // "viewFormats" is a ptr type WGPUTextureFormat, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "viewFormats", 11,  &n->viewFormats , value);

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

SV *
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
              _store_uint64_t(aTHX_ h, "arrayStride", 11,  &n->arrayStride , value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "stepMode", 8,  &n->stepMode , value);

        }
    OUTPUT:
        RETVAL

SV *
attributeCount(THIS, value = NO_INIT)
        WebGPU::Direct::VertexBufferLayout THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexBufferLayout *n = (WGPUVertexBufferLayout *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_size_t(aTHX_ h, "attributeCount", 14,  &n->attributeCount );
;

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "attributeCount", 14,  &n->attributeCount , value);

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
              _store_objptr(aTHX_ h, "attributes", 10, (void **) &n->attributes , newSVpvs("WebGPU::Direct::VertexAttribute"), value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

        }
    OUTPUT:
        RETVAL

SV *
entryCount(THIS, value = NO_INIT)
        WebGPU::Direct::BindGroupLayoutDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUBindGroupLayoutDescriptor *n = (WGPUBindGroupLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_size_t(aTHX_ h, "entryCount", 10,  &n->entryCount );
;

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "entryCount", 10,  &n->entryCount , value);

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
              _store_objptr(aTHX_ h, "entries", 7, (void **) &n->entries , newSVpvs("WebGPU::Direct::BindGroupLayoutEntry"), value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_enum(aTHX_ h, "format", 6,  &n->format , value);

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
              _store_objptr(aTHX_ h, "blend", 5, (void **) &n->blend , newSVpvs("WebGPU::Direct::BlendState"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_uint32_t(aTHX_ h, "writeMask", 9,  &n->writeMask , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

        }
    OUTPUT:
        RETVAL

SV *
layout(THIS, value = NO_INIT)
        WebGPU::Direct::ComputePipelineDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUComputePipelineDescriptor *n = (WGPUComputePipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_opaque(aTHX_ h, "layout", 6, (void **) &n->layout , newSVpvs("WebGPU::Direct::PipelineLayout"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "layout", 6, (void **) &n->layout , newSVpvs("WebGPU::Direct::PipelineLayout"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_obj(aTHX_ h, "compute", 7,  &n->compute , newSVpvs("WebGPU::Direct::ProgrammableStageDescriptor"), value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

        }
    OUTPUT:
        RETVAL

SV *
requiredFeaturesCount(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDeviceDescriptor *n = (WGPUDeviceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_size_t(aTHX_ h, "requiredFeaturesCount", 21,  &n->requiredFeaturesCount );
;

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "requiredFeaturesCount", 21,  &n->requiredFeaturesCount , value);

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
  _find_set_void(aTHX_ h, "requiredFeatures", 16,  &n->requiredFeatures );
;

        if (items > 1)
        {
              // "requiredFeatures" is a ptr type WGPUFeatureName, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "requiredFeatures", 16,  &n->requiredFeatures , value);

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
              _store_objptr(aTHX_ h, "requiredLimits", 14, (void **) &n->requiredLimits , newSVpvs("WebGPU::Direct::RequiredLimits"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_obj(aTHX_ h, "defaultQueue", 12,  &n->defaultQueue , newSVpvs("WebGPU::Direct::QueueDescriptor"), value);

        }
    OUTPUT:
        RETVAL

SV *
deviceLostCallback(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        void * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDeviceDescriptor *n = (WGPUDeviceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_void(aTHX_ h, "deviceLostCallback", 18,  &n->deviceLostCallback );
;

        if (items > 1)
        {
              _store_void(aTHX_ h, "deviceLostCallback", 18,  &n->deviceLostCallback , value);

        }
    OUTPUT:
        RETVAL

SV *
deviceLostUserdata(THIS, value = NO_INIT)
        WebGPU::Direct::DeviceDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUDeviceDescriptor *n = (WGPUDeviceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   // "deviceLostUserdata" is a ptr type void, and that's not quite right yet, using opaque
  _find_set_void(aTHX_ h, "deviceLostUserdata", 18,  &n->deviceLostUserdata );
;

        if (items > 1)
        {
              // "deviceLostUserdata" is a ptr type void, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "deviceLostUserdata", 18,  &n->deviceLostUserdata , value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

        }
    OUTPUT:
        RETVAL

SV *
colorAttachmentCount(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_size_t(aTHX_ h, "colorAttachmentCount", 20,  &n->colorAttachmentCount );
;

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "colorAttachmentCount", 20,  &n->colorAttachmentCount , value);

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
              _store_objptr(aTHX_ h, "colorAttachments", 16, (void **) &n->colorAttachments , newSVpvs("WebGPU::Direct::RenderPassColorAttachment"), value);

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
              _store_objptr(aTHX_ h, "depthStencilAttachment", 22, (void **) &n->depthStencilAttachment , newSVpvs("WebGPU::Direct::RenderPassDepthStencilAttachment"), value);

        }
    OUTPUT:
        RETVAL

SV *
occlusionQuerySet(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_opaque(aTHX_ h, "occlusionQuerySet", 17, (void **) &n->occlusionQuerySet , newSVpvs("WebGPU::Direct::QuerySet"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "occlusionQuerySet", 17, (void **) &n->occlusionQuerySet , newSVpvs("WebGPU::Direct::QuerySet"), value);

        }
    OUTPUT:
        RETVAL

SV *
timestampWriteCount(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPassDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_size_t(aTHX_ h, "timestampWriteCount", 19,  &n->timestampWriteCount );
;

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "timestampWriteCount", 19,  &n->timestampWriteCount , value);

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
              _store_objptr(aTHX_ h, "timestampWrites", 15, (void **) &n->timestampWrites , newSVpvs("WebGPU::Direct::RenderPassTimestampWrite"), value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
module(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexState *n = (WGPUVertexState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_opaque(aTHX_ h, "module", 6, (void **) &n->module , newSVpvs("WebGPU::Direct::ShaderModule"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "module", 6, (void **) &n->module , newSVpvs("WebGPU::Direct::ShaderModule"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint , value);

        }
    OUTPUT:
        RETVAL

SV *
constantCount(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexState *n = (WGPUVertexState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_size_t(aTHX_ h, "constantCount", 13,  &n->constantCount );
;

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "constantCount", 13,  &n->constantCount , value);

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
              _store_objptr(aTHX_ h, "constants", 9, (void **) &n->constants , newSVpvs("WebGPU::Direct::ConstantEntry"), value);

        }
    OUTPUT:
        RETVAL

SV *
bufferCount(THIS, value = NO_INIT)
        WebGPU::Direct::VertexState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUVertexState *n = (WGPUVertexState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_size_t(aTHX_ h, "bufferCount", 11,  &n->bufferCount );
;

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "bufferCount", 11,  &n->bufferCount , value);

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
              _store_objptr(aTHX_ h, "buffers", 7, (void **) &n->buffers , newSVpvs("WebGPU::Direct::VertexBufferLayout"), value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
module(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUFragmentState *n = (WGPUFragmentState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_opaque(aTHX_ h, "module", 6, (void **) &n->module , newSVpvs("WebGPU::Direct::ShaderModule"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "module", 6, (void **) &n->module , newSVpvs("WebGPU::Direct::ShaderModule"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint , value);

        }
    OUTPUT:
        RETVAL

SV *
constantCount(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUFragmentState *n = (WGPUFragmentState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_size_t(aTHX_ h, "constantCount", 13,  &n->constantCount );
;

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "constantCount", 13,  &n->constantCount , value);

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
              _store_objptr(aTHX_ h, "constants", 9, (void **) &n->constants , newSVpvs("WebGPU::Direct::ConstantEntry"), value);

        }
    OUTPUT:
        RETVAL

SV *
targetCount(THIS, value = NO_INIT)
        WebGPU::Direct::FragmentState THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPUFragmentState *n = (WGPUFragmentState *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_size_t(aTHX_ h, "targetCount", 11,  &n->targetCount );
;

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "targetCount", 11,  &n->targetCount , value);

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
              _store_objptr(aTHX_ h, "targets", 7, (void **) &n->targets , newSVpvs("WebGPU::Direct::ColorTargetState"), value);

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
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain , newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_str(aTHX_ h, "label", 5,  &n->label , value);

        }
    OUTPUT:
        RETVAL

SV *
layout(THIS, value = NO_INIT)
        WebGPU::Direct::RenderPipelineDescriptor THIS
        SV * value
    PROTOTYPE: $;$
    CODE:
        HV *h = (HV *)SvRV(THIS);
        WGPURenderPipelineDescriptor *n = (WGPURenderPipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
        RETVAL =   _find_set_opaque(aTHX_ h, "layout", 6, (void **) &n->layout , newSVpvs("WebGPU::Direct::PipelineLayout"));
;

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "layout", 6, (void **) &n->layout , newSVpvs("WebGPU::Direct::PipelineLayout"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_obj(aTHX_ h, "vertex", 6,  &n->vertex , newSVpvs("WebGPU::Direct::VertexState"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_obj(aTHX_ h, "primitive", 9,  &n->primitive , newSVpvs("WebGPU::Direct::PrimitiveState"), value);

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
              _store_objptr(aTHX_ h, "depthStencil", 12, (void **) &n->depthStencil , newSVpvs("WebGPU::Direct::DepthStencilState"), value);

        }
    OUTPUT:
        RETVAL

SV *
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
              _store_obj(aTHX_ h, "multisample", 11,  &n->multisample , newSVpvs("WebGPU::Direct::MultisampleState"), value);

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
              _store_objptr(aTHX_ h, "fragment", 8, (void **) &n->fragment , newSVpvs("WebGPU::Direct::FragmentState"), value);

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

