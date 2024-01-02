
MODULE = WebGPU::Direct		PACKAGE = WebGPU::Direct::XS		PREFIX = wgpu

WGPUInstance 
wgpuCreateInstance(descriptor)
        WGPUInstanceDescriptor const * descriptor
    CODE:
      RETVAL = wgpuCreateInstance(descriptor);
    OUTPUT:
      RETVAL


WGPUProc 
wgpuGetProcAddress(device, procName)
        WGPUDevice device
        char const * procName
    CODE:
      RETVAL = wgpuGetProcAddress(device, procName);
    OUTPUT:
      RETVAL


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Adapter	PREFIX = wgpuAdapter


size_t 
wgpuAdapterEnumerateFeatures(adapter, features)
        WGPUAdapter adapter
        WGPUFeatureName * features
    CODE:
      RETVAL = wgpuAdapterEnumerateFeatures(adapter, features);
    OUTPUT:
      RETVAL


bool 
wgpuAdapterGetLimits(adapter, limits)
        WGPUAdapter adapter
        WGPUSupportedLimits * limits
    CODE:
      RETVAL = wgpuAdapterGetLimits(adapter, limits);
      {
        SV *u = ST(1);
        if ( sv_isobject(u) ) { _unpack(u); }
      }
    OUTPUT:
      RETVAL


void 
wgpuAdapterGetProperties(adapter, properties)
        WGPUAdapter adapter
        WGPUAdapterProperties * properties
    CODE:
      wgpuAdapterGetProperties(adapter, properties);
      {
        SV *u = ST(1);
        if ( sv_isobject(u) ) { _unpack(u); }
      }


bool 
wgpuAdapterHasFeature(adapter, feature)
        WGPUAdapter adapter
        WGPUFeatureName feature
    CODE:
      RETVAL = wgpuAdapterHasFeature(adapter, feature);
    OUTPUT:
      RETVAL


void 
wgpuAdapter_RequestDevice(adapter, descriptor, callback, userdata)
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
    CODE:
      wgpuAdapterReference(adapter);


void 
wgpuAdapterRelease(adapter)
        WGPUAdapter adapter
    CODE:
      wgpuAdapterRelease(adapter);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroup	PREFIX = wgpuBindGroup


void 
wgpuBindGroupSetLabel(bindGroup, label)
        WGPUBindGroup bindGroup
        char const * label
    CODE:
      wgpuBindGroupSetLabel(bindGroup, label);


void 
wgpuBindGroupReference(bindGroup)
        WGPUBindGroup bindGroup
    CODE:
      wgpuBindGroupReference(bindGroup);


void 
wgpuBindGroupRelease(bindGroup)
        WGPUBindGroup bindGroup
    CODE:
      wgpuBindGroupRelease(bindGroup);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::BindGroupLayout	PREFIX = wgpuBindGroupLayout


void 
wgpuBindGroupLayoutSetLabel(bindGroupLayout, label)
        WGPUBindGroupLayout bindGroupLayout
        char const * label
    CODE:
      wgpuBindGroupLayoutSetLabel(bindGroupLayout, label);


void 
wgpuBindGroupLayoutReference(bindGroupLayout)
        WGPUBindGroupLayout bindGroupLayout
    CODE:
      wgpuBindGroupLayoutReference(bindGroupLayout);


void 
wgpuBindGroupLayoutRelease(bindGroupLayout)
        WGPUBindGroupLayout bindGroupLayout
    CODE:
      wgpuBindGroupLayoutRelease(bindGroupLayout);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Buffer	PREFIX = wgpuBuffer


void 
wgpuBufferDestroy(buffer)
        WGPUBuffer buffer
    CODE:
      wgpuBufferDestroy(buffer);


void const * 
wgpuBufferGetConstMappedRange(buffer, offset, size)
        WGPUBuffer buffer
        size_t offset
        size_t size
    CODE:
      RETVAL = wgpuBufferGetConstMappedRange(buffer, offset, size);
    OUTPUT:
      RETVAL


WGPUBufferMapState 
wgpuBufferGetMapState(buffer)
        WGPUBuffer buffer
    CODE:
      RETVAL = wgpuBufferGetMapState(buffer);
    OUTPUT:
      RETVAL


SV *
wgpuBuffer_GetMappedRange(buffer, offset, size)
        WGPUBuffer buffer
        size_t offset
        size_t size
    CODE:
      void *n = wgpuBufferGetMappedRange(buffer, offset, size);
      RETVAL =  WebGPU__Direct__MappedBuffer__wrap(aTHX_ n, size-offset);
    OUTPUT:
      RETVAL


uint64_t 
wgpuBufferGetSize(buffer)
        WGPUBuffer buffer
    CODE:
      RETVAL = wgpuBufferGetSize(buffer);
    OUTPUT:
      RETVAL


WGPUBufferUsageFlags 
wgpuBufferGetUsage(buffer)
        WGPUBuffer buffer
    CODE:
      RETVAL = wgpuBufferGetUsage(buffer);
    OUTPUT:
      RETVAL


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
    CODE:
      wgpuBufferSetLabel(buffer, label);


void 
wgpuBufferUnmap(buffer)
        WGPUBuffer buffer
    CODE:
      wgpuBufferUnmap(buffer);


void 
wgpuBufferReference(buffer)
        WGPUBuffer buffer
    CODE:
      wgpuBufferReference(buffer);


void 
wgpuBufferRelease(buffer)
        WGPUBuffer buffer
    CODE:
      wgpuBufferRelease(buffer);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CommandBuffer	PREFIX = wgpuCommandBuffer


void 
wgpuCommandBufferSetLabel(commandBuffer, label)
        WGPUCommandBuffer commandBuffer
        char const * label
    CODE:
      wgpuCommandBufferSetLabel(commandBuffer, label);


void 
wgpuCommandBufferReference(commandBuffer)
        WGPUCommandBuffer commandBuffer
    CODE:
      wgpuCommandBufferReference(commandBuffer);


void 
wgpuCommandBufferRelease(commandBuffer)
        WGPUCommandBuffer commandBuffer
    CODE:
      wgpuCommandBufferRelease(commandBuffer);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::CommandEncoder	PREFIX = wgpuCommandEncoder


WGPUComputePassEncoder 
wgpuCommandEncoderBeginComputePass(commandEncoder, descriptor)
        WGPUCommandEncoder commandEncoder
        WGPUComputePassDescriptor const * descriptor
    CODE:
      RETVAL = wgpuCommandEncoderBeginComputePass(commandEncoder, descriptor);
    OUTPUT:
      RETVAL


WGPURenderPassEncoder 
wgpuCommandEncoderBeginRenderPass(commandEncoder, descriptor)
        WGPUCommandEncoder commandEncoder
        WGPURenderPassDescriptor const * descriptor
    CODE:
      RETVAL = wgpuCommandEncoderBeginRenderPass(commandEncoder, descriptor);
    OUTPUT:
      RETVAL


void 
wgpuCommandEncoderClearBuffer(commandEncoder, buffer, offset, size)
        WGPUCommandEncoder commandEncoder
        WGPUBuffer buffer
        uint64_t offset
        uint64_t size
    CODE:
      wgpuCommandEncoderClearBuffer(commandEncoder, buffer, offset, size);


void 
wgpuCommandEncoderCopyBufferToBuffer(commandEncoder, source, sourceOffset, destination, destinationOffset, size)
        WGPUCommandEncoder commandEncoder
        WGPUBuffer source
        uint64_t sourceOffset
        WGPUBuffer destination
        uint64_t destinationOffset
        uint64_t size
    CODE:
      wgpuCommandEncoderCopyBufferToBuffer(commandEncoder, source, sourceOffset, destination, destinationOffset, size);


void 
wgpuCommandEncoderCopyBufferToTexture(commandEncoder, source, destination, copySize)
        WGPUCommandEncoder commandEncoder
        WGPUImageCopyBuffer const * source
        WGPUImageCopyTexture const * destination
        WGPUExtent3D const * copySize
    CODE:
      wgpuCommandEncoderCopyBufferToTexture(commandEncoder, source, destination, copySize);


void 
wgpuCommandEncoderCopyTextureToBuffer(commandEncoder, source, destination, copySize)
        WGPUCommandEncoder commandEncoder
        WGPUImageCopyTexture const * source
        WGPUImageCopyBuffer const * destination
        WGPUExtent3D const * copySize
    CODE:
      wgpuCommandEncoderCopyTextureToBuffer(commandEncoder, source, destination, copySize);


void 
wgpuCommandEncoderCopyTextureToTexture(commandEncoder, source, destination, copySize)
        WGPUCommandEncoder commandEncoder
        WGPUImageCopyTexture const * source
        WGPUImageCopyTexture const * destination
        WGPUExtent3D const * copySize
    CODE:
      wgpuCommandEncoderCopyTextureToTexture(commandEncoder, source, destination, copySize);


WGPUCommandBuffer 
wgpuCommandEncoder_Finish(commandEncoder, descriptor)
        WGPUCommandEncoder commandEncoder
        WGPUCommandBufferDescriptor const * descriptor
    CODE:
      RETVAL = wgpuCommandEncoderFinish(commandEncoder, descriptor);
    OUTPUT:
      RETVAL


void 
wgpuCommandEncoderInsertDebugMarker(commandEncoder, markerLabel)
        WGPUCommandEncoder commandEncoder
        char const * markerLabel
    CODE:
      wgpuCommandEncoderInsertDebugMarker(commandEncoder, markerLabel);


void 
wgpuCommandEncoderPopDebugGroup(commandEncoder)
        WGPUCommandEncoder commandEncoder
    CODE:
      wgpuCommandEncoderPopDebugGroup(commandEncoder);


void 
wgpuCommandEncoderPushDebugGroup(commandEncoder, groupLabel)
        WGPUCommandEncoder commandEncoder
        char const * groupLabel
    CODE:
      wgpuCommandEncoderPushDebugGroup(commandEncoder, groupLabel);


void 
wgpuCommandEncoderResolveQuerySet(commandEncoder, querySet, firstQuery, queryCount, destination, destinationOffset)
        WGPUCommandEncoder commandEncoder
        WGPUQuerySet querySet
        uint32_t firstQuery
        uint32_t queryCount
        WGPUBuffer destination
        uint64_t destinationOffset
    CODE:
      wgpuCommandEncoderResolveQuerySet(commandEncoder, querySet, firstQuery, queryCount, destination, destinationOffset);


void 
wgpuCommandEncoderSetLabel(commandEncoder, label)
        WGPUCommandEncoder commandEncoder
        char const * label
    CODE:
      wgpuCommandEncoderSetLabel(commandEncoder, label);


void 
wgpuCommandEncoderWriteTimestamp(commandEncoder, querySet, queryIndex)
        WGPUCommandEncoder commandEncoder
        WGPUQuerySet querySet
        uint32_t queryIndex
    CODE:
      wgpuCommandEncoderWriteTimestamp(commandEncoder, querySet, queryIndex);


void 
wgpuCommandEncoderReference(commandEncoder)
        WGPUCommandEncoder commandEncoder
    CODE:
      wgpuCommandEncoderReference(commandEncoder);


void 
wgpuCommandEncoderRelease(commandEncoder)
        WGPUCommandEncoder commandEncoder
    CODE:
      wgpuCommandEncoderRelease(commandEncoder);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ComputePassEncoder	PREFIX = wgpuComputePassEncoder


void 
wgpuComputePassEncoderBeginPipelineStatisticsQuery(computePassEncoder, querySet, queryIndex)
        WGPUComputePassEncoder computePassEncoder
        WGPUQuerySet querySet
        uint32_t queryIndex
    CODE:
      wgpuComputePassEncoderBeginPipelineStatisticsQuery(computePassEncoder, querySet, queryIndex);


void 
wgpuComputePassEncoderDispatchWorkgroups(computePassEncoder, workgroupCountX, workgroupCountY, workgroupCountZ)
        WGPUComputePassEncoder computePassEncoder
        uint32_t workgroupCountX
        uint32_t workgroupCountY
        uint32_t workgroupCountZ
    CODE:
      wgpuComputePassEncoderDispatchWorkgroups(computePassEncoder, workgroupCountX, workgroupCountY, workgroupCountZ);


void 
wgpuComputePassEncoderDispatchWorkgroupsIndirect(computePassEncoder, indirectBuffer, indirectOffset)
        WGPUComputePassEncoder computePassEncoder
        WGPUBuffer indirectBuffer
        uint64_t indirectOffset
    CODE:
      wgpuComputePassEncoderDispatchWorkgroupsIndirect(computePassEncoder, indirectBuffer, indirectOffset);


void 
wgpuComputePassEncoderEnd(computePassEncoder)
        WGPUComputePassEncoder computePassEncoder
    CODE:
      wgpuComputePassEncoderEnd(computePassEncoder);


void 
wgpuComputePassEncoderEndPipelineStatisticsQuery(computePassEncoder)
        WGPUComputePassEncoder computePassEncoder
    CODE:
      wgpuComputePassEncoderEndPipelineStatisticsQuery(computePassEncoder);


void 
wgpuComputePassEncoderInsertDebugMarker(computePassEncoder, markerLabel)
        WGPUComputePassEncoder computePassEncoder
        char const * markerLabel
    CODE:
      wgpuComputePassEncoderInsertDebugMarker(computePassEncoder, markerLabel);


void 
wgpuComputePassEncoderPopDebugGroup(computePassEncoder)
        WGPUComputePassEncoder computePassEncoder
    CODE:
      wgpuComputePassEncoderPopDebugGroup(computePassEncoder);


void 
wgpuComputePassEncoderPushDebugGroup(computePassEncoder, groupLabel)
        WGPUComputePassEncoder computePassEncoder
        char const * groupLabel
    CODE:
      wgpuComputePassEncoderPushDebugGroup(computePassEncoder, groupLabel);


void 
wgpuComputePassEncoderSetBindGroup(computePassEncoder, groupIndex, group, dynamicOffsets)
        WGPUComputePassEncoder computePassEncoder
        uint32_t groupIndex
        WGPUBindGroup group
        AV * dynamicOffsets
    CODE:
      Size_t dynamicOffsetCount = av_count(dynamicOffsets);
      uint32_t   dynamicOffset[dynamicOffsetCount+1];
      for ( Size_t i = 0; i < dynamicOffsetCount; i++ )
      {
        SV **item = av_fetch(dynamicOffsets, i, 0);
        if ( *item != NULL )
        {
          uint32_t   n = SvIV(*item);
          dynamicOffset[i] = n;
        }
      }
      dynamicOffset[dynamicOffsetCount+1] = (uint32_t  ) 0;

      wgpuComputePassEncoderSetBindGroup(computePassEncoder, groupIndex, group, dynamicOffsetCount, dynamicOffset);


void 
wgpuComputePassEncoderSetLabel(computePassEncoder, label)
        WGPUComputePassEncoder computePassEncoder
        char const * label
    CODE:
      wgpuComputePassEncoderSetLabel(computePassEncoder, label);


void 
wgpuComputePassEncoderSetPipeline(computePassEncoder, pipeline)
        WGPUComputePassEncoder computePassEncoder
        WGPUComputePipeline pipeline
    CODE:
      wgpuComputePassEncoderSetPipeline(computePassEncoder, pipeline);


void 
wgpuComputePassEncoderReference(computePassEncoder)
        WGPUComputePassEncoder computePassEncoder
    CODE:
      wgpuComputePassEncoderReference(computePassEncoder);


void 
wgpuComputePassEncoderRelease(computePassEncoder)
        WGPUComputePassEncoder computePassEncoder
    CODE:
      wgpuComputePassEncoderRelease(computePassEncoder);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::ComputePipeline	PREFIX = wgpuComputePipeline


WGPUBindGroupLayout 
wgpuComputePipelineGetBindGroupLayout(computePipeline, groupIndex)
        WGPUComputePipeline computePipeline
        uint32_t groupIndex
    CODE:
      RETVAL = wgpuComputePipelineGetBindGroupLayout(computePipeline, groupIndex);
    OUTPUT:
      RETVAL


void 
wgpuComputePipelineSetLabel(computePipeline, label)
        WGPUComputePipeline computePipeline
        char const * label
    CODE:
      wgpuComputePipelineSetLabel(computePipeline, label);


void 
wgpuComputePipelineReference(computePipeline)
        WGPUComputePipeline computePipeline
    CODE:
      wgpuComputePipelineReference(computePipeline);


void 
wgpuComputePipelineRelease(computePipeline)
        WGPUComputePipeline computePipeline
    CODE:
      wgpuComputePipelineRelease(computePipeline);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Device	PREFIX = wgpuDevice


WGPUBindGroup 
wgpuDeviceCreateBindGroup(device, descriptor)
        WGPUDevice device
        WGPUBindGroupDescriptor const * descriptor
    CODE:
      RETVAL = wgpuDeviceCreateBindGroup(device, descriptor);
    OUTPUT:
      RETVAL


WGPUBindGroupLayout 
wgpuDeviceCreateBindGroupLayout(device, descriptor)
        WGPUDevice device
        WGPUBindGroupLayoutDescriptor const * descriptor
    CODE:
      RETVAL = wgpuDeviceCreateBindGroupLayout(device, descriptor);
    OUTPUT:
      RETVAL


WGPUBuffer 
wgpuDeviceCreateBuffer(device, descriptor)
        WGPUDevice device
        WGPUBufferDescriptor const * descriptor
    CODE:
      RETVAL = wgpuDeviceCreateBuffer(device, descriptor);
    OUTPUT:
      RETVAL


WGPUCommandEncoder 
wgpuDevice_CreateCommandEncoder(device, descriptor)
        WGPUDevice device
        WGPUCommandEncoderDescriptor const * descriptor
    CODE:
      RETVAL = wgpuDeviceCreateCommandEncoder(device, descriptor);
    OUTPUT:
      RETVAL


WGPUComputePipeline 
wgpuDeviceCreateComputePipeline(device, descriptor)
        WGPUDevice device
        WGPUComputePipelineDescriptor const * descriptor
    CODE:
      RETVAL = wgpuDeviceCreateComputePipeline(device, descriptor);
    OUTPUT:
      RETVAL


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
    CODE:
      RETVAL = wgpuDeviceCreatePipelineLayout(device, descriptor);
    OUTPUT:
      RETVAL


WGPUQuerySet 
wgpuDeviceCreateQuerySet(device, descriptor)
        WGPUDevice device
        WGPUQuerySetDescriptor const * descriptor
    CODE:
      RETVAL = wgpuDeviceCreateQuerySet(device, descriptor);
    OUTPUT:
      RETVAL


WGPURenderBundleEncoder 
wgpuDeviceCreateRenderBundleEncoder(device, descriptor)
        WGPUDevice device
        WGPURenderBundleEncoderDescriptor const * descriptor
    CODE:
      RETVAL = wgpuDeviceCreateRenderBundleEncoder(device, descriptor);
    OUTPUT:
      RETVAL


WGPURenderPipeline 
wgpuDeviceCreateRenderPipeline(device, descriptor)
        WGPUDevice device
        WGPURenderPipelineDescriptor const * descriptor
    CODE:
      RETVAL = wgpuDeviceCreateRenderPipeline(device, descriptor);
    OUTPUT:
      RETVAL


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
    CODE:
      RETVAL = wgpuDeviceCreateSampler(device, descriptor);
    OUTPUT:
      RETVAL


WGPUShaderModule 
wgpuDevice_CreateShaderModule(device, descriptor)
        WGPUDevice device
        WGPUShaderModuleDescriptor const * descriptor
    CODE:
      RETVAL = wgpuDeviceCreateShaderModule(device, descriptor);
    OUTPUT:
      RETVAL


WGPUSwapChain 
wgpuDeviceCreateSwapChain(device, surface, descriptor)
        WGPUDevice device
        WGPUSurface surface
        WGPUSwapChainDescriptor const * descriptor
    CODE:
      RETVAL = wgpuDeviceCreateSwapChain(device, surface, descriptor);
    OUTPUT:
      RETVAL


WGPUTexture 
wgpuDeviceCreateTexture(device, descriptor)
        WGPUDevice device
        WGPUTextureDescriptor const * descriptor
    CODE:
      RETVAL = wgpuDeviceCreateTexture(device, descriptor);
    OUTPUT:
      RETVAL


void 
wgpuDeviceDestroy(device)
        WGPUDevice device
    CODE:
      wgpuDeviceDestroy(device);


size_t 
wgpuDeviceEnumerateFeatures(device, features)
        WGPUDevice device
        WGPUFeatureName * features
    CODE:
      RETVAL = wgpuDeviceEnumerateFeatures(device, features);
    OUTPUT:
      RETVAL


bool 
wgpuDeviceGetLimits(device, limits)
        WGPUDevice device
        WGPUSupportedLimits * limits
    CODE:
      RETVAL = wgpuDeviceGetLimits(device, limits);
      {
        SV *u = ST(1);
        if ( sv_isobject(u) ) { _unpack(u); }
      }
    OUTPUT:
      RETVAL


WGPUQueue 
wgpuDeviceGetQueue(device)
        WGPUDevice device
    CODE:
      RETVAL = wgpuDeviceGetQueue(device);
    OUTPUT:
      RETVAL


bool 
wgpuDeviceHasFeature(device, feature)
        WGPUDevice device
        WGPUFeatureName feature
    CODE:
      RETVAL = wgpuDeviceHasFeature(device, feature);
    OUTPUT:
      RETVAL


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
    CODE:
      wgpuDevicePushErrorScope(device, filter);


void 
wgpuDeviceSetLabel(device, label)
        WGPUDevice device
        char const * label
    CODE:
      wgpuDeviceSetLabel(device, label);


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
    CODE:
      wgpuDeviceReference(device);


void 
wgpuDeviceRelease(device)
        WGPUDevice device
    CODE:
      wgpuDeviceRelease(device);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Instance	PREFIX = wgpuInstance


WGPUSurface 
wgpuInstanceCreateSurface(instance, descriptor)
        WGPUInstance instance
        WGPUSurfaceDescriptor const * descriptor
    CODE:
      RETVAL = wgpuInstanceCreateSurface(instance, descriptor);
    OUTPUT:
      RETVAL


void 
wgpuInstanceProcessEvents(instance)
        WGPUInstance instance
    CODE:
      wgpuInstanceProcessEvents(instance);


void 
wgpuInstance_RequestAdapter(instance, options, callback, userdata)
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
    CODE:
      wgpuInstanceReference(instance);


void 
wgpuInstanceRelease(instance)
        WGPUInstance instance
    CODE:
      wgpuInstanceRelease(instance);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::PipelineLayout	PREFIX = wgpuPipelineLayout


void 
wgpuPipelineLayoutSetLabel(pipelineLayout, label)
        WGPUPipelineLayout pipelineLayout
        char const * label
    CODE:
      wgpuPipelineLayoutSetLabel(pipelineLayout, label);


void 
wgpuPipelineLayoutReference(pipelineLayout)
        WGPUPipelineLayout pipelineLayout
    CODE:
      wgpuPipelineLayoutReference(pipelineLayout);


void 
wgpuPipelineLayoutRelease(pipelineLayout)
        WGPUPipelineLayout pipelineLayout
    CODE:
      wgpuPipelineLayoutRelease(pipelineLayout);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::QuerySet	PREFIX = wgpuQuerySet


void 
wgpuQuerySetDestroy(querySet)
        WGPUQuerySet querySet
    CODE:
      wgpuQuerySetDestroy(querySet);


uint32_t 
wgpuQuerySetGetCount(querySet)
        WGPUQuerySet querySet
    CODE:
      RETVAL = wgpuQuerySetGetCount(querySet);
    OUTPUT:
      RETVAL


WGPUQueryType 
wgpuQuerySetGetType(querySet)
        WGPUQuerySet querySet
    CODE:
      RETVAL = wgpuQuerySetGetType(querySet);
    OUTPUT:
      RETVAL


void 
wgpuQuerySetSetLabel(querySet, label)
        WGPUQuerySet querySet
        char const * label
    CODE:
      wgpuQuerySetSetLabel(querySet, label);


void 
wgpuQuerySetReference(querySet)
        WGPUQuerySet querySet
    CODE:
      wgpuQuerySetReference(querySet);


void 
wgpuQuerySetRelease(querySet)
        WGPUQuerySet querySet
    CODE:
      wgpuQuerySetRelease(querySet);


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
    CODE:
      wgpuQueueSetLabel(queue, label);


void 
wgpuQueueSubmit(queue, commands)
        WGPUQueue queue
        AV * commands
    CODE:
      Size_t commandCount = av_count(commands);
      WGPUCommandBuffer   command[commandCount+1];
      for ( Size_t i = 0; i < commandCount; i++ )
      {
        SV **item = av_fetch(commands, i, 0);
        if ( *item != NULL )
        {
          WGPUCommandBuffer   n = (WGPUCommandBuffer  ) _get_struct_ptr(aTHX_ *item, NULL);
          command[i] = n;
        }
      }
      command[commandCount+1] = (WGPUCommandBuffer  ) 0;

      wgpuQueueSubmit(queue, commandCount, command);


void 
wgpuQueueWriteBuffer(queue, buffer, bufferOffset, data)
        WGPUQueue queue
        WGPUBuffer buffer
        uint64_t bufferOffset
        SV * data
    CODE:
      STRLEN dataSize;
      const char *dataData = SvPV_const(data, dataSize);

      wgpuQueueWriteBuffer(queue, buffer, bufferOffset, dataData, dataSize);


void 
wgpuQueueWriteTexture(queue, destination, data, dataLayout, writeSize)
        WGPUQueue queue
        WGPUImageCopyTexture const * destination
        SV * data
        WGPUTextureDataLayout const * dataLayout
        WGPUExtent3D const * writeSize
    CODE:
      STRLEN dataSize;
      const char *dataData = SvPV_const(data, dataSize);

      wgpuQueueWriteTexture(queue, destination, dataData, dataSize, dataLayout, writeSize);


void 
wgpuQueueReference(queue)
        WGPUQueue queue
    CODE:
      wgpuQueueReference(queue);


void 
wgpuQueueRelease(queue)
        WGPUQueue queue
    CODE:
      wgpuQueueRelease(queue);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderBundle	PREFIX = wgpuRenderBundle


void 
wgpuRenderBundleSetLabel(renderBundle, label)
        WGPURenderBundle renderBundle
        char const * label
    CODE:
      wgpuRenderBundleSetLabel(renderBundle, label);


void 
wgpuRenderBundleReference(renderBundle)
        WGPURenderBundle renderBundle
    CODE:
      wgpuRenderBundleReference(renderBundle);


void 
wgpuRenderBundleRelease(renderBundle)
        WGPURenderBundle renderBundle
    CODE:
      wgpuRenderBundleRelease(renderBundle);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderBundleEncoder	PREFIX = wgpuRenderBundleEncoder


void 
wgpuRenderBundleEncoderDraw(renderBundleEncoder, vertexCount, instanceCount, firstVertex, firstInstance)
        WGPURenderBundleEncoder renderBundleEncoder
        uint32_t vertexCount
        uint32_t instanceCount
        uint32_t firstVertex
        uint32_t firstInstance
    CODE:
      wgpuRenderBundleEncoderDraw(renderBundleEncoder, vertexCount, instanceCount, firstVertex, firstInstance);


void 
wgpuRenderBundleEncoderDrawIndexed(renderBundleEncoder, indexCount, instanceCount, firstIndex, baseVertex, firstInstance)
        WGPURenderBundleEncoder renderBundleEncoder
        uint32_t indexCount
        uint32_t instanceCount
        uint32_t firstIndex
        int32_t baseVertex
        uint32_t firstInstance
    CODE:
      wgpuRenderBundleEncoderDrawIndexed(renderBundleEncoder, indexCount, instanceCount, firstIndex, baseVertex, firstInstance);


void 
wgpuRenderBundleEncoderDrawIndexedIndirect(renderBundleEncoder, indirectBuffer, indirectOffset)
        WGPURenderBundleEncoder renderBundleEncoder
        WGPUBuffer indirectBuffer
        uint64_t indirectOffset
    CODE:
      wgpuRenderBundleEncoderDrawIndexedIndirect(renderBundleEncoder, indirectBuffer, indirectOffset);


void 
wgpuRenderBundleEncoderDrawIndirect(renderBundleEncoder, indirectBuffer, indirectOffset)
        WGPURenderBundleEncoder renderBundleEncoder
        WGPUBuffer indirectBuffer
        uint64_t indirectOffset
    CODE:
      wgpuRenderBundleEncoderDrawIndirect(renderBundleEncoder, indirectBuffer, indirectOffset);


WGPURenderBundle 
wgpuRenderBundleEncoderFinish(renderBundleEncoder, descriptor)
        WGPURenderBundleEncoder renderBundleEncoder
        WGPURenderBundleDescriptor const * descriptor
    CODE:
      RETVAL = wgpuRenderBundleEncoderFinish(renderBundleEncoder, descriptor);
    OUTPUT:
      RETVAL


void 
wgpuRenderBundleEncoderInsertDebugMarker(renderBundleEncoder, markerLabel)
        WGPURenderBundleEncoder renderBundleEncoder
        char const * markerLabel
    CODE:
      wgpuRenderBundleEncoderInsertDebugMarker(renderBundleEncoder, markerLabel);


void 
wgpuRenderBundleEncoderPopDebugGroup(renderBundleEncoder)
        WGPURenderBundleEncoder renderBundleEncoder
    CODE:
      wgpuRenderBundleEncoderPopDebugGroup(renderBundleEncoder);


void 
wgpuRenderBundleEncoderPushDebugGroup(renderBundleEncoder, groupLabel)
        WGPURenderBundleEncoder renderBundleEncoder
        char const * groupLabel
    CODE:
      wgpuRenderBundleEncoderPushDebugGroup(renderBundleEncoder, groupLabel);


void 
wgpuRenderBundleEncoderSetBindGroup(renderBundleEncoder, groupIndex, group, dynamicOffsets)
        WGPURenderBundleEncoder renderBundleEncoder
        uint32_t groupIndex
        WGPUBindGroup group
        AV * dynamicOffsets
    CODE:
      Size_t dynamicOffsetCount = av_count(dynamicOffsets);
      uint32_t   dynamicOffset[dynamicOffsetCount+1];
      for ( Size_t i = 0; i < dynamicOffsetCount; i++ )
      {
        SV **item = av_fetch(dynamicOffsets, i, 0);
        if ( *item != NULL )
        {
          uint32_t   n = SvIV(*item);
          dynamicOffset[i] = n;
        }
      }
      dynamicOffset[dynamicOffsetCount+1] = (uint32_t  ) 0;

      wgpuRenderBundleEncoderSetBindGroup(renderBundleEncoder, groupIndex, group, dynamicOffsetCount, dynamicOffset);


void 
wgpuRenderBundleEncoderSetIndexBuffer(renderBundleEncoder, buffer, format, offset, size)
        WGPURenderBundleEncoder renderBundleEncoder
        WGPUBuffer buffer
        WGPUIndexFormat format
        uint64_t offset
        uint64_t size
    CODE:
      wgpuRenderBundleEncoderSetIndexBuffer(renderBundleEncoder, buffer, format, offset, size);


void 
wgpuRenderBundleEncoderSetLabel(renderBundleEncoder, label)
        WGPURenderBundleEncoder renderBundleEncoder
        char const * label
    CODE:
      wgpuRenderBundleEncoderSetLabel(renderBundleEncoder, label);


void 
wgpuRenderBundleEncoderSetPipeline(renderBundleEncoder, pipeline)
        WGPURenderBundleEncoder renderBundleEncoder
        WGPURenderPipeline pipeline
    CODE:
      wgpuRenderBundleEncoderSetPipeline(renderBundleEncoder, pipeline);


void 
wgpuRenderBundleEncoderSetVertexBuffer(renderBundleEncoder, slot, buffer, offset, size)
        WGPURenderBundleEncoder renderBundleEncoder
        uint32_t slot
        WGPUBuffer buffer
        uint64_t offset
        uint64_t size
    CODE:
      wgpuRenderBundleEncoderSetVertexBuffer(renderBundleEncoder, slot, buffer, offset, size);


void 
wgpuRenderBundleEncoderReference(renderBundleEncoder)
        WGPURenderBundleEncoder renderBundleEncoder
    CODE:
      wgpuRenderBundleEncoderReference(renderBundleEncoder);


void 
wgpuRenderBundleEncoderRelease(renderBundleEncoder)
        WGPURenderBundleEncoder renderBundleEncoder
    CODE:
      wgpuRenderBundleEncoderRelease(renderBundleEncoder);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPassEncoder	PREFIX = wgpuRenderPassEncoder


void 
wgpuRenderPassEncoderBeginOcclusionQuery(renderPassEncoder, queryIndex)
        WGPURenderPassEncoder renderPassEncoder
        uint32_t queryIndex
    CODE:
      wgpuRenderPassEncoderBeginOcclusionQuery(renderPassEncoder, queryIndex);


void 
wgpuRenderPassEncoderBeginPipelineStatisticsQuery(renderPassEncoder, querySet, queryIndex)
        WGPURenderPassEncoder renderPassEncoder
        WGPUQuerySet querySet
        uint32_t queryIndex
    CODE:
      wgpuRenderPassEncoderBeginPipelineStatisticsQuery(renderPassEncoder, querySet, queryIndex);


void 
wgpuRenderPassEncoderDraw(renderPassEncoder, vertexCount, instanceCount, firstVertex, firstInstance)
        WGPURenderPassEncoder renderPassEncoder
        uint32_t vertexCount
        uint32_t instanceCount
        uint32_t firstVertex
        uint32_t firstInstance
    CODE:
      wgpuRenderPassEncoderDraw(renderPassEncoder, vertexCount, instanceCount, firstVertex, firstInstance);


void 
wgpuRenderPassEncoderDrawIndexed(renderPassEncoder, indexCount, instanceCount, firstIndex, baseVertex, firstInstance)
        WGPURenderPassEncoder renderPassEncoder
        uint32_t indexCount
        uint32_t instanceCount
        uint32_t firstIndex
        int32_t baseVertex
        uint32_t firstInstance
    CODE:
      wgpuRenderPassEncoderDrawIndexed(renderPassEncoder, indexCount, instanceCount, firstIndex, baseVertex, firstInstance);


void 
wgpuRenderPassEncoderDrawIndexedIndirect(renderPassEncoder, indirectBuffer, indirectOffset)
        WGPURenderPassEncoder renderPassEncoder
        WGPUBuffer indirectBuffer
        uint64_t indirectOffset
    CODE:
      wgpuRenderPassEncoderDrawIndexedIndirect(renderPassEncoder, indirectBuffer, indirectOffset);


void 
wgpuRenderPassEncoderDrawIndirect(renderPassEncoder, indirectBuffer, indirectOffset)
        WGPURenderPassEncoder renderPassEncoder
        WGPUBuffer indirectBuffer
        uint64_t indirectOffset
    CODE:
      wgpuRenderPassEncoderDrawIndirect(renderPassEncoder, indirectBuffer, indirectOffset);


void 
wgpuRenderPassEncoderEnd(renderPassEncoder)
        WGPURenderPassEncoder renderPassEncoder
    CODE:
      wgpuRenderPassEncoderEnd(renderPassEncoder);


void 
wgpuRenderPassEncoderEndOcclusionQuery(renderPassEncoder)
        WGPURenderPassEncoder renderPassEncoder
    CODE:
      wgpuRenderPassEncoderEndOcclusionQuery(renderPassEncoder);


void 
wgpuRenderPassEncoderEndPipelineStatisticsQuery(renderPassEncoder)
        WGPURenderPassEncoder renderPassEncoder
    CODE:
      wgpuRenderPassEncoderEndPipelineStatisticsQuery(renderPassEncoder);


void 
wgpuRenderPassEncoderExecuteBundles(renderPassEncoder, bundles)
        WGPURenderPassEncoder renderPassEncoder
        AV * bundles
    CODE:
      Size_t bundleCount = av_count(bundles);
      WGPURenderBundle   bundle[bundleCount+1];
      for ( Size_t i = 0; i < bundleCount; i++ )
      {
        SV **item = av_fetch(bundles, i, 0);
        if ( *item != NULL )
        {
          WGPURenderBundle   n = (WGPURenderBundle  ) _get_struct_ptr(aTHX_ *item, NULL);
          bundle[i] = n;
        }
      }
      bundle[bundleCount+1] = (WGPURenderBundle  ) 0;

      wgpuRenderPassEncoderExecuteBundles(renderPassEncoder, bundleCount, bundle);


void 
wgpuRenderPassEncoderInsertDebugMarker(renderPassEncoder, markerLabel)
        WGPURenderPassEncoder renderPassEncoder
        char const * markerLabel
    CODE:
      wgpuRenderPassEncoderInsertDebugMarker(renderPassEncoder, markerLabel);


void 
wgpuRenderPassEncoderPopDebugGroup(renderPassEncoder)
        WGPURenderPassEncoder renderPassEncoder
    CODE:
      wgpuRenderPassEncoderPopDebugGroup(renderPassEncoder);


void 
wgpuRenderPassEncoderPushDebugGroup(renderPassEncoder, groupLabel)
        WGPURenderPassEncoder renderPassEncoder
        char const * groupLabel
    CODE:
      wgpuRenderPassEncoderPushDebugGroup(renderPassEncoder, groupLabel);


void 
wgpuRenderPassEncoderSetBindGroup(renderPassEncoder, groupIndex, group, dynamicOffsets)
        WGPURenderPassEncoder renderPassEncoder
        uint32_t groupIndex
        WGPUBindGroup group
        AV * dynamicOffsets
    CODE:
      Size_t dynamicOffsetCount = av_count(dynamicOffsets);
      uint32_t   dynamicOffset[dynamicOffsetCount+1];
      for ( Size_t i = 0; i < dynamicOffsetCount; i++ )
      {
        SV **item = av_fetch(dynamicOffsets, i, 0);
        if ( *item != NULL )
        {
          uint32_t   n = SvIV(*item);
          dynamicOffset[i] = n;
        }
      }
      dynamicOffset[dynamicOffsetCount+1] = (uint32_t  ) 0;

      wgpuRenderPassEncoderSetBindGroup(renderPassEncoder, groupIndex, group, dynamicOffsetCount, dynamicOffset);


void 
wgpuRenderPassEncoderSetBlendConstant(renderPassEncoder, color)
        WGPURenderPassEncoder renderPassEncoder
        WGPUColor const * color
    CODE:
      wgpuRenderPassEncoderSetBlendConstant(renderPassEncoder, color);


void 
wgpuRenderPassEncoderSetIndexBuffer(renderPassEncoder, buffer, format, offset, size)
        WGPURenderPassEncoder renderPassEncoder
        WGPUBuffer buffer
        WGPUIndexFormat format
        uint64_t offset
        uint64_t size
    CODE:
      wgpuRenderPassEncoderSetIndexBuffer(renderPassEncoder, buffer, format, offset, size);


void 
wgpuRenderPassEncoderSetLabel(renderPassEncoder, label)
        WGPURenderPassEncoder renderPassEncoder
        char const * label
    CODE:
      wgpuRenderPassEncoderSetLabel(renderPassEncoder, label);


void 
wgpuRenderPassEncoderSetPipeline(renderPassEncoder, pipeline)
        WGPURenderPassEncoder renderPassEncoder
        WGPURenderPipeline pipeline
    CODE:
      wgpuRenderPassEncoderSetPipeline(renderPassEncoder, pipeline);


void 
wgpuRenderPassEncoderSetScissorRect(renderPassEncoder, x, y, width, height)
        WGPURenderPassEncoder renderPassEncoder
        uint32_t x
        uint32_t y
        uint32_t width
        uint32_t height
    CODE:
      wgpuRenderPassEncoderSetScissorRect(renderPassEncoder, x, y, width, height);


void 
wgpuRenderPassEncoderSetStencilReference(renderPassEncoder, reference)
        WGPURenderPassEncoder renderPassEncoder
        uint32_t reference
    CODE:
      wgpuRenderPassEncoderSetStencilReference(renderPassEncoder, reference);


void 
wgpuRenderPassEncoder_SetVertexBuffer(renderPassEncoder, slot, buffer, offset, size)
        WGPURenderPassEncoder renderPassEncoder
        uint32_t slot
        WGPUBuffer buffer
        uint64_t offset
        uint64_t size
    CODE:
      wgpuRenderPassEncoderSetVertexBuffer(renderPassEncoder, slot, buffer, offset, size);


void 
wgpuRenderPassEncoderSetViewport(renderPassEncoder, x, y, width, height, minDepth, maxDepth)
        WGPURenderPassEncoder renderPassEncoder
        float x
        float y
        float width
        float height
        float minDepth
        float maxDepth
    CODE:
      wgpuRenderPassEncoderSetViewport(renderPassEncoder, x, y, width, height, minDepth, maxDepth);


void 
wgpuRenderPassEncoderReference(renderPassEncoder)
        WGPURenderPassEncoder renderPassEncoder
    CODE:
      wgpuRenderPassEncoderReference(renderPassEncoder);


void 
wgpuRenderPassEncoderRelease(renderPassEncoder)
        WGPURenderPassEncoder renderPassEncoder
    CODE:
      wgpuRenderPassEncoderRelease(renderPassEncoder);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::RenderPipeline	PREFIX = wgpuRenderPipeline


WGPUBindGroupLayout 
wgpuRenderPipelineGetBindGroupLayout(renderPipeline, groupIndex)
        WGPURenderPipeline renderPipeline
        uint32_t groupIndex
    CODE:
      RETVAL = wgpuRenderPipelineGetBindGroupLayout(renderPipeline, groupIndex);
    OUTPUT:
      RETVAL


void 
wgpuRenderPipelineSetLabel(renderPipeline, label)
        WGPURenderPipeline renderPipeline
        char const * label
    CODE:
      wgpuRenderPipelineSetLabel(renderPipeline, label);


void 
wgpuRenderPipelineReference(renderPipeline)
        WGPURenderPipeline renderPipeline
    CODE:
      wgpuRenderPipelineReference(renderPipeline);


void 
wgpuRenderPipelineRelease(renderPipeline)
        WGPURenderPipeline renderPipeline
    CODE:
      wgpuRenderPipelineRelease(renderPipeline);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Sampler	PREFIX = wgpuSampler


void 
wgpuSamplerSetLabel(sampler, label)
        WGPUSampler sampler
        char const * label
    CODE:
      wgpuSamplerSetLabel(sampler, label);


void 
wgpuSamplerReference(sampler)
        WGPUSampler sampler
    CODE:
      wgpuSamplerReference(sampler);


void 
wgpuSamplerRelease(sampler)
        WGPUSampler sampler
    CODE:
      wgpuSamplerRelease(sampler);


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
    CODE:
      wgpuShaderModuleSetLabel(shaderModule, label);


void 
wgpuShaderModuleReference(shaderModule)
        WGPUShaderModule shaderModule
    CODE:
      wgpuShaderModuleReference(shaderModule);


void 
wgpuShaderModuleRelease(shaderModule)
        WGPUShaderModule shaderModule
    CODE:
      wgpuShaderModuleRelease(shaderModule);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Surface	PREFIX = wgpuSurface


WGPUTextureFormat 
wgpuSurfaceGetPreferredFormat(surface, adapter)
        WGPUSurface surface
        WGPUAdapter adapter
    CODE:
      RETVAL = wgpuSurfaceGetPreferredFormat(surface, adapter);
    OUTPUT:
      RETVAL


void 
wgpuSurfaceReference(surface)
        WGPUSurface surface
    CODE:
      wgpuSurfaceReference(surface);


void 
wgpuSurfaceRelease(surface)
        WGPUSurface surface
    CODE:
      wgpuSurfaceRelease(surface);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::SwapChain	PREFIX = wgpuSwapChain


WGPUTextureView 
wgpuSwapChainGetCurrentTextureView(swapChain)
        WGPUSwapChain swapChain
    CODE:
      RETVAL = wgpuSwapChainGetCurrentTextureView(swapChain);
    OUTPUT:
      RETVAL


void 
wgpuSwapChainPresent(swapChain)
        WGPUSwapChain swapChain
    CODE:
      wgpuSwapChainPresent(swapChain);


void 
wgpuSwapChainReference(swapChain)
        WGPUSwapChain swapChain
    CODE:
      wgpuSwapChainReference(swapChain);


void 
wgpuSwapChainRelease(swapChain)
        WGPUSwapChain swapChain
    CODE:
      wgpuSwapChainRelease(swapChain);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::Texture	PREFIX = wgpuTexture


WGPUTextureView 
wgpuTexture_CreateView(texture, descriptor)
        WGPUTexture texture
        WGPUTextureViewDescriptor const * descriptor
    CODE:
      RETVAL = wgpuTextureCreateView(texture, descriptor);
    OUTPUT:
      RETVAL


void 
wgpuTextureDestroy(texture)
        WGPUTexture texture
    CODE:
      wgpuTextureDestroy(texture);


uint32_t 
wgpuTextureGetDepthOrArrayLayers(texture)
        WGPUTexture texture
    CODE:
      RETVAL = wgpuTextureGetDepthOrArrayLayers(texture);
    OUTPUT:
      RETVAL


WGPUTextureDimension 
wgpuTextureGetDimension(texture)
        WGPUTexture texture
    CODE:
      RETVAL = wgpuTextureGetDimension(texture);
    OUTPUT:
      RETVAL


WGPUTextureFormat 
wgpuTextureGetFormat(texture)
        WGPUTexture texture
    CODE:
      RETVAL = wgpuTextureGetFormat(texture);
    OUTPUT:
      RETVAL


uint32_t 
wgpuTextureGetHeight(texture)
        WGPUTexture texture
    CODE:
      RETVAL = wgpuTextureGetHeight(texture);
    OUTPUT:
      RETVAL


uint32_t 
wgpuTextureGetMipLevelCount(texture)
        WGPUTexture texture
    CODE:
      RETVAL = wgpuTextureGetMipLevelCount(texture);
    OUTPUT:
      RETVAL


uint32_t 
wgpuTextureGetSampleCount(texture)
        WGPUTexture texture
    CODE:
      RETVAL = wgpuTextureGetSampleCount(texture);
    OUTPUT:
      RETVAL


WGPUTextureUsageFlags 
wgpuTextureGetUsage(texture)
        WGPUTexture texture
    CODE:
      RETVAL = wgpuTextureGetUsage(texture);
    OUTPUT:
      RETVAL


uint32_t 
wgpuTextureGetWidth(texture)
        WGPUTexture texture
    CODE:
      RETVAL = wgpuTextureGetWidth(texture);
    OUTPUT:
      RETVAL


void 
wgpuTextureSetLabel(texture, label)
        WGPUTexture texture
        char const * label
    CODE:
      wgpuTextureSetLabel(texture, label);


void 
wgpuTextureReference(texture)
        WGPUTexture texture
    CODE:
      wgpuTextureReference(texture);


void 
wgpuTextureRelease(texture)
        WGPUTexture texture
    CODE:
      wgpuTextureRelease(texture);


MODULE = WebGPU::Direct	PACKAGE = WebGPU::Direct::TextureView	PREFIX = wgpuTextureView


void 
wgpuTextureViewSetLabel(textureView, label)
        WGPUTextureView textureView
        char const * label
    CODE:
      wgpuTextureViewSetLabel(textureView, label);


void 
wgpuTextureViewReference(textureView)
        WGPUTextureView textureView
    CODE:
      wgpuTextureViewReference(textureView);


void 
wgpuTextureViewRelease(textureView)
        WGPUTextureView textureView
    CODE:
      wgpuTextureViewRelease(textureView);


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
        RETVAL =   _find_objptr(aTHX_ h, "next", 4, (void **) &n->next, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "next", 4, (void **) &n->next, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "sType", 5,  &n->sType, newSVpvs("WGPUSType"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "sType", 5,  &n->sType, newSVpvs("WGPUSType"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "next", 4, (void **) &n->next, newSVpvs("WebGPU::Direct::ChainedStructOut"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "next", 4, (void **) &n->next, newSVpvs("WebGPU::Direct::ChainedStructOut"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "sType", 5,  &n->sType, newSVpvs("WGPUSType"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "sType", 5,  &n->sType, newSVpvs("WGPUSType"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStructOut"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStructOut"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "vendorID", 8,  &n->vendorID, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "vendorID", 8,  &n->vendorID, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "vendorName", 10,  &n->vendorName, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "vendorName", 10,  &n->vendorName, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "architecture", 12,  &n->architecture, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "architecture", 12,  &n->architecture, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "deviceID", 8,  &n->deviceID, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "deviceID", 8,  &n->deviceID, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "name", 4,  &n->name, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "name", 4,  &n->name, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "driverDescription", 17,  &n->driverDescription, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "driverDescription", 17,  &n->driverDescription, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "adapterType", 11,  &n->adapterType, newSVpvs("WGPUAdapterType"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "adapterType", 11,  &n->adapterType, newSVpvs("WGPUAdapterType"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "backendType", 11,  &n->backendType, newSVpvs("WGPUBackendType"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "backendType", 11,  &n->backendType, newSVpvs("WGPUBackendType"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "binding", 7,  &n->binding, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "binding", 7,  &n->binding, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_opaque(aTHX_ h, "buffer", 6, (void **) &n->buffer, newSVpvs("WebGPU::Direct::Buffer"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "buffer", 6, (void **) &n->buffer, newSVpvs("WebGPU::Direct::Buffer"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint64_t(aTHX_ h, "offset", 6,  &n->offset, NULL);

        if (items > 1)
        {
              _store_uint64_t(aTHX_ h, "offset", 6,  &n->offset, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint64_t(aTHX_ h, "size", 4,  &n->size, NULL);

        if (items > 1)
        {
              _store_uint64_t(aTHX_ h, "size", 4,  &n->size, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_opaque(aTHX_ h, "sampler", 7, (void **) &n->sampler, newSVpvs("WebGPU::Direct::Sampler"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "sampler", 7, (void **) &n->sampler, newSVpvs("WebGPU::Direct::Sampler"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_opaque(aTHX_ h, "textureView", 11, (void **) &n->textureView, newSVpvs("WebGPU::Direct::TextureView"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "textureView", 11, (void **) &n->textureView, newSVpvs("WebGPU::Direct::TextureView"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "operation", 9,  &n->operation, newSVpvs("WGPUBlendOperation"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "operation", 9,  &n->operation, newSVpvs("WGPUBlendOperation"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "srcFactor", 9,  &n->srcFactor, newSVpvs("WGPUBlendFactor"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "srcFactor", 9,  &n->srcFactor, newSVpvs("WGPUBlendFactor"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "dstFactor", 9,  &n->dstFactor, newSVpvs("WGPUBlendFactor"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "dstFactor", 9,  &n->dstFactor, newSVpvs("WGPUBlendFactor"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "type", 4,  &n->type, newSVpvs("WGPUBufferBindingType"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "type", 4,  &n->type, newSVpvs("WGPUBufferBindingType"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_bool(aTHX_ h, "hasDynamicOffset", 16,  &n->hasDynamicOffset, NULL);

        if (items > 1)
        {
              _store_bool(aTHX_ h, "hasDynamicOffset", 16,  &n->hasDynamicOffset, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint64_t(aTHX_ h, "minBindingSize", 14,  &n->minBindingSize, NULL);

        if (items > 1)
        {
              _store_uint64_t(aTHX_ h, "minBindingSize", 14,  &n->minBindingSize, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "usage", 5,  &n->usage, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "usage", 5,  &n->usage, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint64_t(aTHX_ h, "size", 4,  &n->size, NULL);

        if (items > 1)
        {
              _store_uint64_t(aTHX_ h, "size", 4,  &n->size, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_bool(aTHX_ h, "mappedAtCreation", 16,  &n->mappedAtCreation, NULL);

        if (items > 1)
        {
              _store_bool(aTHX_ h, "mappedAtCreation", 16,  &n->mappedAtCreation, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_double(aTHX_ h, "r", 1,  &n->r, NULL);

        if (items > 1)
        {
              _store_double(aTHX_ h, "r", 1,  &n->r, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_double(aTHX_ h, "g", 1,  &n->g, NULL);

        if (items > 1)
        {
              _store_double(aTHX_ h, "g", 1,  &n->g, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_double(aTHX_ h, "b", 1,  &n->b, NULL);

        if (items > 1)
        {
              _store_double(aTHX_ h, "b", 1,  &n->b, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_double(aTHX_ h, "a", 1,  &n->a, NULL);

        if (items > 1)
        {
              _store_double(aTHX_ h, "a", 1,  &n->a, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "message", 7,  &n->message, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "message", 7,  &n->message, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "type", 4,  &n->type, newSVpvs("WGPUCompilationMessageType"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "type", 4,  &n->type, newSVpvs("WGPUCompilationMessageType"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint64_t(aTHX_ h, "lineNum", 7,  &n->lineNum, NULL);

        if (items > 1)
        {
              _store_uint64_t(aTHX_ h, "lineNum", 7,  &n->lineNum, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint64_t(aTHX_ h, "linePos", 7,  &n->linePos, NULL);

        if (items > 1)
        {
              _store_uint64_t(aTHX_ h, "linePos", 7,  &n->linePos, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint64_t(aTHX_ h, "offset", 6,  &n->offset, NULL);

        if (items > 1)
        {
              _store_uint64_t(aTHX_ h, "offset", 6,  &n->offset, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint64_t(aTHX_ h, "length", 6,  &n->length, NULL);

        if (items > 1)
        {
              _store_uint64_t(aTHX_ h, "length", 6,  &n->length, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint64_t(aTHX_ h, "utf16LinePos", 12,  &n->utf16LinePos, NULL);

        if (items > 1)
        {
              _store_uint64_t(aTHX_ h, "utf16LinePos", 12,  &n->utf16LinePos, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint64_t(aTHX_ h, "utf16Offset", 11,  &n->utf16Offset, NULL);

        if (items > 1)
        {
              _store_uint64_t(aTHX_ h, "utf16Offset", 11,  &n->utf16Offset, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint64_t(aTHX_ h, "utf16Length", 11,  &n->utf16Length, NULL);

        if (items > 1)
        {
              _store_uint64_t(aTHX_ h, "utf16Length", 11,  &n->utf16Length, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_opaque(aTHX_ h, "querySet", 8, (void **) &n->querySet, newSVpvs("WebGPU::Direct::QuerySet"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "querySet", 8, (void **) &n->querySet, newSVpvs("WebGPU::Direct::QuerySet"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "queryIndex", 10,  &n->queryIndex, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "queryIndex", 10,  &n->queryIndex, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "location", 8,  &n->location, newSVpvs("WGPUComputePassTimestampLocation"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "location", 8,  &n->location, newSVpvs("WGPUComputePassTimestampLocation"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "key", 3,  &n->key, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "key", 3,  &n->key, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_double(aTHX_ h, "value", 5,  &n->value, NULL);

        if (items > 1)
        {
              _store_double(aTHX_ h, "value", 5,  &n->value, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "width", 5,  &n->width, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "width", 5,  &n->width, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "height", 6,  &n->height, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "height", 6,  &n->height, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "depthOrArrayLayers", 18,  &n->depthOrArrayLayers, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "depthOrArrayLayers", 18,  &n->depthOrArrayLayers, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxTextureDimension1D", 21,  &n->maxTextureDimension1D, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxTextureDimension1D", 21,  &n->maxTextureDimension1D, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxTextureDimension2D", 21,  &n->maxTextureDimension2D, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxTextureDimension2D", 21,  &n->maxTextureDimension2D, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxTextureDimension3D", 21,  &n->maxTextureDimension3D, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxTextureDimension3D", 21,  &n->maxTextureDimension3D, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxTextureArrayLayers", 21,  &n->maxTextureArrayLayers, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxTextureArrayLayers", 21,  &n->maxTextureArrayLayers, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxBindGroups", 13,  &n->maxBindGroups, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxBindGroups", 13,  &n->maxBindGroups, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxBindingsPerBindGroup", 23,  &n->maxBindingsPerBindGroup, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxBindingsPerBindGroup", 23,  &n->maxBindingsPerBindGroup, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxDynamicUniformBuffersPerPipelineLayout", 41,  &n->maxDynamicUniformBuffersPerPipelineLayout, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxDynamicUniformBuffersPerPipelineLayout", 41,  &n->maxDynamicUniformBuffersPerPipelineLayout, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxDynamicStorageBuffersPerPipelineLayout", 41,  &n->maxDynamicStorageBuffersPerPipelineLayout, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxDynamicStorageBuffersPerPipelineLayout", 41,  &n->maxDynamicStorageBuffersPerPipelineLayout, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxSampledTexturesPerShaderStage", 32,  &n->maxSampledTexturesPerShaderStage, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxSampledTexturesPerShaderStage", 32,  &n->maxSampledTexturesPerShaderStage, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxSamplersPerShaderStage", 25,  &n->maxSamplersPerShaderStage, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxSamplersPerShaderStage", 25,  &n->maxSamplersPerShaderStage, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxStorageBuffersPerShaderStage", 31,  &n->maxStorageBuffersPerShaderStage, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxStorageBuffersPerShaderStage", 31,  &n->maxStorageBuffersPerShaderStage, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxStorageTexturesPerShaderStage", 32,  &n->maxStorageTexturesPerShaderStage, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxStorageTexturesPerShaderStage", 32,  &n->maxStorageTexturesPerShaderStage, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxUniformBuffersPerShaderStage", 31,  &n->maxUniformBuffersPerShaderStage, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxUniformBuffersPerShaderStage", 31,  &n->maxUniformBuffersPerShaderStage, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint64_t(aTHX_ h, "maxUniformBufferBindingSize", 27,  &n->maxUniformBufferBindingSize, NULL);

        if (items > 1)
        {
              _store_uint64_t(aTHX_ h, "maxUniformBufferBindingSize", 27,  &n->maxUniformBufferBindingSize, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint64_t(aTHX_ h, "maxStorageBufferBindingSize", 27,  &n->maxStorageBufferBindingSize, NULL);

        if (items > 1)
        {
              _store_uint64_t(aTHX_ h, "maxStorageBufferBindingSize", 27,  &n->maxStorageBufferBindingSize, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "minUniformBufferOffsetAlignment", 31,  &n->minUniformBufferOffsetAlignment, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "minUniformBufferOffsetAlignment", 31,  &n->minUniformBufferOffsetAlignment, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "minStorageBufferOffsetAlignment", 31,  &n->minStorageBufferOffsetAlignment, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "minStorageBufferOffsetAlignment", 31,  &n->minStorageBufferOffsetAlignment, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxVertexBuffers", 16,  &n->maxVertexBuffers, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxVertexBuffers", 16,  &n->maxVertexBuffers, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint64_t(aTHX_ h, "maxBufferSize", 13,  &n->maxBufferSize, NULL);

        if (items > 1)
        {
              _store_uint64_t(aTHX_ h, "maxBufferSize", 13,  &n->maxBufferSize, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxVertexAttributes", 19,  &n->maxVertexAttributes, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxVertexAttributes", 19,  &n->maxVertexAttributes, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxVertexBufferArrayStride", 26,  &n->maxVertexBufferArrayStride, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxVertexBufferArrayStride", 26,  &n->maxVertexBufferArrayStride, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxInterStageShaderComponents", 29,  &n->maxInterStageShaderComponents, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxInterStageShaderComponents", 29,  &n->maxInterStageShaderComponents, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxInterStageShaderVariables", 28,  &n->maxInterStageShaderVariables, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxInterStageShaderVariables", 28,  &n->maxInterStageShaderVariables, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxColorAttachments", 19,  &n->maxColorAttachments, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxColorAttachments", 19,  &n->maxColorAttachments, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxColorAttachmentBytesPerSample", 32,  &n->maxColorAttachmentBytesPerSample, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxColorAttachmentBytesPerSample", 32,  &n->maxColorAttachmentBytesPerSample, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxComputeWorkgroupStorageSize", 30,  &n->maxComputeWorkgroupStorageSize, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxComputeWorkgroupStorageSize", 30,  &n->maxComputeWorkgroupStorageSize, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxComputeInvocationsPerWorkgroup", 33,  &n->maxComputeInvocationsPerWorkgroup, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxComputeInvocationsPerWorkgroup", 33,  &n->maxComputeInvocationsPerWorkgroup, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeX", 24,  &n->maxComputeWorkgroupSizeX, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeX", 24,  &n->maxComputeWorkgroupSizeX, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeY", 24,  &n->maxComputeWorkgroupSizeY, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeY", 24,  &n->maxComputeWorkgroupSizeY, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeZ", 24,  &n->maxComputeWorkgroupSizeZ, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeZ", 24,  &n->maxComputeWorkgroupSizeZ, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "maxComputeWorkgroupsPerDimension", 32,  &n->maxComputeWorkgroupsPerDimension, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "maxComputeWorkgroupsPerDimension", 32,  &n->maxComputeWorkgroupsPerDimension, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "count", 5,  &n->count, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "count", 5,  &n->count, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "mask", 4,  &n->mask, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "mask", 4,  &n->mask, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_bool(aTHX_ h, "alphaToCoverageEnabled", 22,  &n->alphaToCoverageEnabled, NULL);

        if (items > 1)
        {
              _store_bool(aTHX_ h, "alphaToCoverageEnabled", 22,  &n->alphaToCoverageEnabled, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "x", 1,  &n->x, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "x", 1,  &n->x, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "y", 1,  &n->y, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "y", 1,  &n->y, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "z", 1,  &n->z, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "z", 1,  &n->z, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_size_t(aTHX_ h, "bindGroupLayoutCount", 20,  &n->bindGroupLayoutCount, NULL);

        SvREFCNT_inc(RETVAL);

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
        RETVAL =   _find_opaque(aTHX_ h, "bindGroupLayouts", 16, (void **) &n->bindGroupLayouts, newSVpvs("WebGPU::Direct::BindGroupLayout"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "bindGroupLayouts", 16, (void **) &n->bindGroupLayouts, newSVpvs("WebGPU::Direct::BindGroupLayout"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_bool(aTHX_ h, "unclippedDepth", 14,  &n->unclippedDepth, NULL);

        if (items > 1)
        {
              _store_bool(aTHX_ h, "unclippedDepth", 14,  &n->unclippedDepth, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "topology", 8,  &n->topology, newSVpvs("WGPUPrimitiveTopology"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "topology", 8,  &n->topology, newSVpvs("WGPUPrimitiveTopology"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "stripIndexFormat", 16,  &n->stripIndexFormat, newSVpvs("WGPUIndexFormat"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "stripIndexFormat", 16,  &n->stripIndexFormat, newSVpvs("WGPUIndexFormat"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "frontFace", 9,  &n->frontFace, newSVpvs("WGPUFrontFace"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "frontFace", 9,  &n->frontFace, newSVpvs("WGPUFrontFace"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "cullMode", 8,  &n->cullMode, newSVpvs("WGPUCullMode"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "cullMode", 8,  &n->cullMode, newSVpvs("WGPUCullMode"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "type", 4,  &n->type, newSVpvs("WGPUQueryType"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "type", 4,  &n->type, newSVpvs("WGPUQueryType"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "count", 5,  &n->count, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "count", 5,  &n->count, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
  _find_void(aTHX_ h, "pipelineStatistics", 18,  &n->pipelineStatistics, newSVpvs("WGPUPipelineStatisticName"));

        if (items > 1)
        {
              // "pipelineStatistics" is a ptr type WGPUPipelineStatisticName, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "pipelineStatistics", 18,  &n->pipelineStatistics, newSVpvs("WGPUPipelineStatisticName"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_size_t(aTHX_ h, "pipelineStatisticsCount", 23,  &n->pipelineStatisticsCount, NULL);

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "pipelineStatisticsCount", 23,  &n->pipelineStatisticsCount, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_size_t(aTHX_ h, "colorFormatsCount", 17,  &n->colorFormatsCount, NULL);

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "colorFormatsCount", 17,  &n->colorFormatsCount, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
  _find_void(aTHX_ h, "colorFormats", 12,  &n->colorFormats, newSVpvs("WGPUTextureFormat"));

        if (items > 1)
        {
              // "colorFormats" is a ptr type WGPUTextureFormat, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "colorFormats", 12,  &n->colorFormats, newSVpvs("WGPUTextureFormat"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "depthStencilFormat", 18,  &n->depthStencilFormat, newSVpvs("WGPUTextureFormat"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "depthStencilFormat", 18,  &n->depthStencilFormat, newSVpvs("WGPUTextureFormat"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "sampleCount", 11,  &n->sampleCount, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "sampleCount", 11,  &n->sampleCount, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_bool(aTHX_ h, "depthReadOnly", 13,  &n->depthReadOnly, NULL);

        if (items > 1)
        {
              _store_bool(aTHX_ h, "depthReadOnly", 13,  &n->depthReadOnly, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_bool(aTHX_ h, "stencilReadOnly", 15,  &n->stencilReadOnly, NULL);

        if (items > 1)
        {
              _store_bool(aTHX_ h, "stencilReadOnly", 15,  &n->stencilReadOnly, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_opaque(aTHX_ h, "view", 4, (void **) &n->view, newSVpvs("WebGPU::Direct::TextureView"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "view", 4, (void **) &n->view, newSVpvs("WebGPU::Direct::TextureView"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "depthLoadOp", 11,  &n->depthLoadOp, newSVpvs("WGPULoadOp"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "depthLoadOp", 11,  &n->depthLoadOp, newSVpvs("WGPULoadOp"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "depthStoreOp", 12,  &n->depthStoreOp, newSVpvs("WGPUStoreOp"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "depthStoreOp", 12,  &n->depthStoreOp, newSVpvs("WGPUStoreOp"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_float(aTHX_ h, "depthClearValue", 15,  &n->depthClearValue, NULL);

        if (items > 1)
        {
              _store_float(aTHX_ h, "depthClearValue", 15,  &n->depthClearValue, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_bool(aTHX_ h, "depthReadOnly", 13,  &n->depthReadOnly, NULL);

        if (items > 1)
        {
              _store_bool(aTHX_ h, "depthReadOnly", 13,  &n->depthReadOnly, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "stencilLoadOp", 13,  &n->stencilLoadOp, newSVpvs("WGPULoadOp"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "stencilLoadOp", 13,  &n->stencilLoadOp, newSVpvs("WGPULoadOp"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "stencilStoreOp", 14,  &n->stencilStoreOp, newSVpvs("WGPUStoreOp"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "stencilStoreOp", 14,  &n->stencilStoreOp, newSVpvs("WGPUStoreOp"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "stencilClearValue", 17,  &n->stencilClearValue, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "stencilClearValue", 17,  &n->stencilClearValue, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_bool(aTHX_ h, "stencilReadOnly", 15,  &n->stencilReadOnly, NULL);

        if (items > 1)
        {
              _store_bool(aTHX_ h, "stencilReadOnly", 15,  &n->stencilReadOnly, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint64_t(aTHX_ h, "maxDrawCount", 12,  &n->maxDrawCount, NULL);

        if (items > 1)
        {
              _store_uint64_t(aTHX_ h, "maxDrawCount", 12,  &n->maxDrawCount, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_opaque(aTHX_ h, "querySet", 8, (void **) &n->querySet, newSVpvs("WebGPU::Direct::QuerySet"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "querySet", 8, (void **) &n->querySet, newSVpvs("WebGPU::Direct::QuerySet"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "queryIndex", 10,  &n->queryIndex, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "queryIndex", 10,  &n->queryIndex, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "location", 8,  &n->location, newSVpvs("WGPURenderPassTimestampLocation"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "location", 8,  &n->location, newSVpvs("WGPURenderPassTimestampLocation"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_opaque(aTHX_ h, "compatibleSurface", 17, (void **) &n->compatibleSurface, newSVpvs("WebGPU::Direct::Surface"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "compatibleSurface", 17, (void **) &n->compatibleSurface, newSVpvs("WebGPU::Direct::Surface"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "powerPreference", 15,  &n->powerPreference, newSVpvs("WGPUPowerPreference"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "powerPreference", 15,  &n->powerPreference, newSVpvs("WGPUPowerPreference"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "backendType", 11,  &n->backendType, newSVpvs("WGPUBackendType"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "backendType", 11,  &n->backendType, newSVpvs("WGPUBackendType"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_bool(aTHX_ h, "forceFallbackAdapter", 20,  &n->forceFallbackAdapter, NULL);

        if (items > 1)
        {
              _store_bool(aTHX_ h, "forceFallbackAdapter", 20,  &n->forceFallbackAdapter, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "type", 4,  &n->type, newSVpvs("WGPUSamplerBindingType"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "type", 4,  &n->type, newSVpvs("WGPUSamplerBindingType"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "addressModeU", 12,  &n->addressModeU, newSVpvs("WGPUAddressMode"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "addressModeU", 12,  &n->addressModeU, newSVpvs("WGPUAddressMode"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "addressModeV", 12,  &n->addressModeV, newSVpvs("WGPUAddressMode"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "addressModeV", 12,  &n->addressModeV, newSVpvs("WGPUAddressMode"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "addressModeW", 12,  &n->addressModeW, newSVpvs("WGPUAddressMode"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "addressModeW", 12,  &n->addressModeW, newSVpvs("WGPUAddressMode"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "magFilter", 9,  &n->magFilter, newSVpvs("WGPUFilterMode"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "magFilter", 9,  &n->magFilter, newSVpvs("WGPUFilterMode"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "minFilter", 9,  &n->minFilter, newSVpvs("WGPUFilterMode"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "minFilter", 9,  &n->minFilter, newSVpvs("WGPUFilterMode"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "mipmapFilter", 12,  &n->mipmapFilter, newSVpvs("WGPUMipmapFilterMode"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "mipmapFilter", 12,  &n->mipmapFilter, newSVpvs("WGPUMipmapFilterMode"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_float(aTHX_ h, "lodMinClamp", 11,  &n->lodMinClamp, NULL);

        if (items > 1)
        {
              _store_float(aTHX_ h, "lodMinClamp", 11,  &n->lodMinClamp, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_float(aTHX_ h, "lodMaxClamp", 11,  &n->lodMaxClamp, NULL);

        if (items > 1)
        {
              _store_float(aTHX_ h, "lodMaxClamp", 11,  &n->lodMaxClamp, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "compare", 7,  &n->compare, newSVpvs("WGPUCompareFunction"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "compare", 7,  &n->compare, newSVpvs("WGPUCompareFunction"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint16_t(aTHX_ h, "maxAnisotropy", 13,  &n->maxAnisotropy, NULL);

        if (items > 1)
        {
              _store_uint16_t(aTHX_ h, "maxAnisotropy", 13,  &n->maxAnisotropy, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_opaque(aTHX_ h, "layout", 6, (void **) &n->layout, newSVpvs("WebGPU::Direct::PipelineLayout"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "layout", 6, (void **) &n->layout, newSVpvs("WebGPU::Direct::PipelineLayout"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "codeSize", 8,  &n->codeSize, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "codeSize", 8,  &n->codeSize, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
  _find_void(aTHX_ h, "code", 4,  &n->code, NULL);

        if (items > 1)
        {
              // "code" is a ptr type uint32_t, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "code", 4,  &n->code, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "code", 4,  &n->code, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "code", 4,  &n->code, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "compare", 7,  &n->compare, newSVpvs("WGPUCompareFunction"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "compare", 7,  &n->compare, newSVpvs("WGPUCompareFunction"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "failOp", 6,  &n->failOp, newSVpvs("WGPUStencilOperation"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "failOp", 6,  &n->failOp, newSVpvs("WGPUStencilOperation"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "depthFailOp", 11,  &n->depthFailOp, newSVpvs("WGPUStencilOperation"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "depthFailOp", 11,  &n->depthFailOp, newSVpvs("WGPUStencilOperation"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "passOp", 6,  &n->passOp, newSVpvs("WGPUStencilOperation"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "passOp", 6,  &n->passOp, newSVpvs("WGPUStencilOperation"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "access", 6,  &n->access, newSVpvs("WGPUStorageTextureAccess"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "access", 6,  &n->access, newSVpvs("WGPUStorageTextureAccess"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WGPUTextureFormat"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WGPUTextureFormat"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "viewDimension", 13,  &n->viewDimension, newSVpvs("WGPUTextureViewDimension"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "viewDimension", 13,  &n->viewDimension, newSVpvs("WGPUTextureViewDimension"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
  _find_void(aTHX_ h, "window", 6,  &n->window, NULL);

        if (items > 1)
        {
              // "window" is a ptr type void, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "window", 6,  &n->window, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "selector", 8,  &n->selector, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "selector", 8,  &n->selector, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
  _find_void(aTHX_ h, "layer", 5,  &n->layer, NULL);

        if (items > 1)
        {
              // "layer" is a ptr type void, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "layer", 5,  &n->layer, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
  _find_void(aTHX_ h, "display", 7,  &n->display, NULL);

        if (items > 1)
        {
              // "display" is a ptr type void, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "display", 7,  &n->display, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
  _find_void(aTHX_ h, "surface", 7,  &n->surface, NULL);

        if (items > 1)
        {
              // "surface" is a ptr type void, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "surface", 7,  &n->surface, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
  _find_void(aTHX_ h, "hinstance", 9,  &n->hinstance, NULL);

        if (items > 1)
        {
              // "hinstance" is a ptr type void, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "hinstance", 9,  &n->hinstance, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
  _find_void(aTHX_ h, "hwnd", 4,  &n->hwnd, NULL);

        if (items > 1)
        {
              // "hwnd" is a ptr type void, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "hwnd", 4,  &n->hwnd, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
  _find_void(aTHX_ h, "connection", 10,  &n->connection, NULL);

        if (items > 1)
        {
              // "connection" is a ptr type void, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "connection", 10,  &n->connection, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "window", 6,  &n->window, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "window", 6,  &n->window, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
  _find_void(aTHX_ h, "display", 7,  &n->display, NULL);

        if (items > 1)
        {
              // "display" is a ptr type void, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "display", 7,  &n->display, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "window", 6,  &n->window, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "window", 6,  &n->window, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "usage", 5,  &n->usage, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "usage", 5,  &n->usage, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WGPUTextureFormat"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WGPUTextureFormat"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "width", 5,  &n->width, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "width", 5,  &n->width, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "height", 6,  &n->height, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "height", 6,  &n->height, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "presentMode", 11,  &n->presentMode, newSVpvs("WGPUPresentMode"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "presentMode", 11,  &n->presentMode, newSVpvs("WGPUPresentMode"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "sampleType", 10,  &n->sampleType, newSVpvs("WGPUTextureSampleType"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "sampleType", 10,  &n->sampleType, newSVpvs("WGPUTextureSampleType"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "viewDimension", 13,  &n->viewDimension, newSVpvs("WGPUTextureViewDimension"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "viewDimension", 13,  &n->viewDimension, newSVpvs("WGPUTextureViewDimension"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_bool(aTHX_ h, "multisampled", 12,  &n->multisampled, NULL);

        if (items > 1)
        {
              _store_bool(aTHX_ h, "multisampled", 12,  &n->multisampled, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint64_t(aTHX_ h, "offset", 6,  &n->offset, NULL);

        if (items > 1)
        {
              _store_uint64_t(aTHX_ h, "offset", 6,  &n->offset, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "bytesPerRow", 11,  &n->bytesPerRow, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "bytesPerRow", 11,  &n->bytesPerRow, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "rowsPerImage", 12,  &n->rowsPerImage, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "rowsPerImage", 12,  &n->rowsPerImage, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WGPUTextureFormat"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WGPUTextureFormat"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "dimension", 9,  &n->dimension, newSVpvs("WGPUTextureViewDimension"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "dimension", 9,  &n->dimension, newSVpvs("WGPUTextureViewDimension"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "baseMipLevel", 12,  &n->baseMipLevel, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "baseMipLevel", 12,  &n->baseMipLevel, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "mipLevelCount", 13,  &n->mipLevelCount, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "mipLevelCount", 13,  &n->mipLevelCount, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "baseArrayLayer", 14,  &n->baseArrayLayer, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "baseArrayLayer", 14,  &n->baseArrayLayer, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "arrayLayerCount", 15,  &n->arrayLayerCount, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "arrayLayerCount", 15,  &n->arrayLayerCount, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "aspect", 6,  &n->aspect, newSVpvs("WGPUTextureAspect"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "aspect", 6,  &n->aspect, newSVpvs("WGPUTextureAspect"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WGPUVertexFormat"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WGPUVertexFormat"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint64_t(aTHX_ h, "offset", 6,  &n->offset, NULL);

        if (items > 1)
        {
              _store_uint64_t(aTHX_ h, "offset", 6,  &n->offset, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "shaderLocation", 14,  &n->shaderLocation, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "shaderLocation", 14,  &n->shaderLocation, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_opaque(aTHX_ h, "layout", 6, (void **) &n->layout, newSVpvs("WebGPU::Direct::BindGroupLayout"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "layout", 6, (void **) &n->layout, newSVpvs("WebGPU::Direct::BindGroupLayout"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_size_t(aTHX_ h, "entryCount", 10,  &n->entryCount, NULL);

        SvREFCNT_inc(RETVAL);

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
        RETVAL =   _find_objarray(aTHX_ h, "entries", 7, (void **) &n->entries, &n->entryCount, sizeof(*n->entries), newSVpvs("WebGPU::Direct::BindGroupEntry"));

        if (items > 1)
        {
              _store_objarray(aTHX_ h, "entries", 7, (void **) &n->entries, &n->entryCount, sizeof(*n->entries), newSVpvs("WebGPU::Direct::BindGroupEntry"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "binding", 7,  &n->binding, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "binding", 7,  &n->binding, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "visibility", 10,  &n->visibility, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "visibility", 10,  &n->visibility, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "buffer", 6,  &n->buffer, sizeof(n->buffer), newSVpvs("WebGPU::Direct::BufferBindingLayout"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "buffer", 6,  &n->buffer, sizeof(n->buffer), newSVpvs("WebGPU::Direct::BufferBindingLayout"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "sampler", 7,  &n->sampler, sizeof(n->sampler), newSVpvs("WebGPU::Direct::SamplerBindingLayout"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "sampler", 7,  &n->sampler, sizeof(n->sampler), newSVpvs("WebGPU::Direct::SamplerBindingLayout"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "texture", 7,  &n->texture, sizeof(n->texture), newSVpvs("WebGPU::Direct::TextureBindingLayout"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "texture", 7,  &n->texture, sizeof(n->texture), newSVpvs("WebGPU::Direct::TextureBindingLayout"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "storageTexture", 14,  &n->storageTexture, sizeof(n->storageTexture), newSVpvs("WebGPU::Direct::StorageTextureBindingLayout"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "storageTexture", 14,  &n->storageTexture, sizeof(n->storageTexture), newSVpvs("WebGPU::Direct::StorageTextureBindingLayout"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "color", 5,  &n->color, sizeof(n->color), newSVpvs("WebGPU::Direct::BlendComponent"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "color", 5,  &n->color, sizeof(n->color), newSVpvs("WebGPU::Direct::BlendComponent"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "alpha", 5,  &n->alpha, sizeof(n->alpha), newSVpvs("WebGPU::Direct::BlendComponent"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "alpha", 5,  &n->alpha, sizeof(n->alpha), newSVpvs("WebGPU::Direct::BlendComponent"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_size_t(aTHX_ h, "messageCount", 12,  &n->messageCount, NULL);

        SvREFCNT_inc(RETVAL);

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
        RETVAL =   _find_objarray(aTHX_ h, "messages", 8, (void **) &n->messages, &n->messageCount, sizeof(*n->messages), newSVpvs("WebGPU::Direct::CompilationMessage"));

        if (items > 1)
        {
              _store_objarray(aTHX_ h, "messages", 8, (void **) &n->messages, &n->messageCount, sizeof(*n->messages), newSVpvs("WebGPU::Direct::CompilationMessage"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_size_t(aTHX_ h, "timestampWriteCount", 19,  &n->timestampWriteCount, NULL);

        SvREFCNT_inc(RETVAL);

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
        RETVAL =   _find_objarray(aTHX_ h, "timestampWrites", 15, (void **) &n->timestampWrites, &n->timestampWriteCount, sizeof(*n->timestampWrites), newSVpvs("WebGPU::Direct::ComputePassTimestampWrite"));

        if (items > 1)
        {
              _store_objarray(aTHX_ h, "timestampWrites", 15, (void **) &n->timestampWrites, &n->timestampWriteCount, sizeof(*n->timestampWrites), newSVpvs("WebGPU::Direct::ComputePassTimestampWrite"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WGPUTextureFormat"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WGPUTextureFormat"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_bool(aTHX_ h, "depthWriteEnabled", 17,  &n->depthWriteEnabled, NULL);

        if (items > 1)
        {
              _store_bool(aTHX_ h, "depthWriteEnabled", 17,  &n->depthWriteEnabled, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "depthCompare", 12,  &n->depthCompare, newSVpvs("WGPUCompareFunction"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "depthCompare", 12,  &n->depthCompare, newSVpvs("WGPUCompareFunction"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "stencilFront", 12,  &n->stencilFront, sizeof(n->stencilFront), newSVpvs("WebGPU::Direct::StencilFaceState"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "stencilFront", 12,  &n->stencilFront, sizeof(n->stencilFront), newSVpvs("WebGPU::Direct::StencilFaceState"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "stencilBack", 11,  &n->stencilBack, sizeof(n->stencilBack), newSVpvs("WebGPU::Direct::StencilFaceState"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "stencilBack", 11,  &n->stencilBack, sizeof(n->stencilBack), newSVpvs("WebGPU::Direct::StencilFaceState"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "stencilReadMask", 15,  &n->stencilReadMask, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "stencilReadMask", 15,  &n->stencilReadMask, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "stencilWriteMask", 16,  &n->stencilWriteMask, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "stencilWriteMask", 16,  &n->stencilWriteMask, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_int32_t(aTHX_ h, "depthBias", 9,  &n->depthBias, NULL);

        if (items > 1)
        {
              _store_int32_t(aTHX_ h, "depthBias", 9,  &n->depthBias, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_float(aTHX_ h, "depthBiasSlopeScale", 19,  &n->depthBiasSlopeScale, NULL);

        if (items > 1)
        {
              _store_float(aTHX_ h, "depthBiasSlopeScale", 19,  &n->depthBiasSlopeScale, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_float(aTHX_ h, "depthBiasClamp", 14,  &n->depthBiasClamp, NULL);

        if (items > 1)
        {
              _store_float(aTHX_ h, "depthBiasClamp", 14,  &n->depthBiasClamp, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "layout", 6,  &n->layout, sizeof(n->layout), newSVpvs("WebGPU::Direct::TextureDataLayout"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "layout", 6,  &n->layout, sizeof(n->layout), newSVpvs("WebGPU::Direct::TextureDataLayout"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_opaque(aTHX_ h, "buffer", 6, (void **) &n->buffer, newSVpvs("WebGPU::Direct::Buffer"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "buffer", 6, (void **) &n->buffer, newSVpvs("WebGPU::Direct::Buffer"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_opaque(aTHX_ h, "texture", 7, (void **) &n->texture, newSVpvs("WebGPU::Direct::Texture"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "texture", 7, (void **) &n->texture, newSVpvs("WebGPU::Direct::Texture"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "mipLevel", 8,  &n->mipLevel, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "mipLevel", 8,  &n->mipLevel, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "origin", 6,  &n->origin, sizeof(n->origin), newSVpvs("WebGPU::Direct::Origin3D"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "origin", 6,  &n->origin, sizeof(n->origin), newSVpvs("WebGPU::Direct::Origin3D"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "aspect", 6,  &n->aspect, newSVpvs("WGPUTextureAspect"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "aspect", 6,  &n->aspect, newSVpvs("WGPUTextureAspect"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_opaque(aTHX_ h, "module", 6, (void **) &n->module, newSVpvs("WebGPU::Direct::ShaderModule"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "module", 6, (void **) &n->module, newSVpvs("WebGPU::Direct::ShaderModule"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_size_t(aTHX_ h, "constantCount", 13,  &n->constantCount, NULL);

        SvREFCNT_inc(RETVAL);

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
        RETVAL =   _find_objarray(aTHX_ h, "constants", 9, (void **) &n->constants, &n->constantCount, sizeof(*n->constants), newSVpvs("WebGPU::Direct::ConstantEntry"));

        if (items > 1)
        {
              _store_objarray(aTHX_ h, "constants", 9, (void **) &n->constants, &n->constantCount, sizeof(*n->constants), newSVpvs("WebGPU::Direct::ConstantEntry"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_opaque(aTHX_ h, "view", 4, (void **) &n->view, newSVpvs("WebGPU::Direct::TextureView"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "view", 4, (void **) &n->view, newSVpvs("WebGPU::Direct::TextureView"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_opaque(aTHX_ h, "resolveTarget", 13, (void **) &n->resolveTarget, newSVpvs("WebGPU::Direct::TextureView"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "resolveTarget", 13, (void **) &n->resolveTarget, newSVpvs("WebGPU::Direct::TextureView"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "loadOp", 6,  &n->loadOp, newSVpvs("WGPULoadOp"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "loadOp", 6,  &n->loadOp, newSVpvs("WGPULoadOp"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "storeOp", 7,  &n->storeOp, newSVpvs("WGPUStoreOp"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "storeOp", 7,  &n->storeOp, newSVpvs("WGPUStoreOp"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "clearValue", 10,  &n->clearValue, sizeof(n->clearValue), newSVpvs("WebGPU::Direct::Color"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "clearValue", 10,  &n->clearValue, sizeof(n->clearValue), newSVpvs("WebGPU::Direct::Color"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "limits", 6,  &n->limits, sizeof(n->limits), newSVpvs("WebGPU::Direct::Limits"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "limits", 6,  &n->limits, sizeof(n->limits), newSVpvs("WebGPU::Direct::Limits"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_size_t(aTHX_ h, "hintCount", 9,  &n->hintCount, NULL);

        SvREFCNT_inc(RETVAL);

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
        RETVAL =   _find_objarray(aTHX_ h, "hints", 5, (void **) &n->hints, &n->hintCount, sizeof(*n->hints), newSVpvs("WebGPU::Direct::ShaderModuleCompilationHint"));

        if (items > 1)
        {
              _store_objarray(aTHX_ h, "hints", 5, (void **) &n->hints, &n->hintCount, sizeof(*n->hints), newSVpvs("WebGPU::Direct::ShaderModuleCompilationHint"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStructOut"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStructOut"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "limits", 6,  &n->limits, sizeof(n->limits), newSVpvs("WebGPU::Direct::Limits"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "limits", 6,  &n->limits, sizeof(n->limits), newSVpvs("WebGPU::Direct::Limits"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "usage", 5,  &n->usage, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "usage", 5,  &n->usage, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "dimension", 9,  &n->dimension, newSVpvs("WGPUTextureDimension"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "dimension", 9,  &n->dimension, newSVpvs("WGPUTextureDimension"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "size", 4,  &n->size, sizeof(n->size), newSVpvs("WebGPU::Direct::Extent3D"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "size", 4,  &n->size, sizeof(n->size), newSVpvs("WebGPU::Direct::Extent3D"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WGPUTextureFormat"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WGPUTextureFormat"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "mipLevelCount", 13,  &n->mipLevelCount, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "mipLevelCount", 13,  &n->mipLevelCount, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "sampleCount", 11,  &n->sampleCount, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "sampleCount", 11,  &n->sampleCount, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_size_t(aTHX_ h, "viewFormatCount", 15,  &n->viewFormatCount, NULL);

        SvREFCNT_inc(RETVAL);

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
        RETVAL =   _find_enum(aTHX_ h, "viewFormats", 11,  &n->viewFormats, newSVpvs("WGPUTextureFormat"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "viewFormats", 11,  &n->viewFormats, newSVpvs("WGPUTextureFormat"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint64_t(aTHX_ h, "arrayStride", 11,  &n->arrayStride, NULL);

        if (items > 1)
        {
              _store_uint64_t(aTHX_ h, "arrayStride", 11,  &n->arrayStride, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "stepMode", 8,  &n->stepMode, newSVpvs("WGPUVertexStepMode"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "stepMode", 8,  &n->stepMode, newSVpvs("WGPUVertexStepMode"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_size_t(aTHX_ h, "attributeCount", 14,  &n->attributeCount, NULL);

        SvREFCNT_inc(RETVAL);

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
        RETVAL =   _find_objarray(aTHX_ h, "attributes", 10, (void **) &n->attributes, &n->attributeCount, sizeof(*n->attributes), newSVpvs("WebGPU::Direct::VertexAttribute"));

        if (items > 1)
        {
              _store_objarray(aTHX_ h, "attributes", 10, (void **) &n->attributes, &n->attributeCount, sizeof(*n->attributes), newSVpvs("WebGPU::Direct::VertexAttribute"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_size_t(aTHX_ h, "entryCount", 10,  &n->entryCount, NULL);

        SvREFCNT_inc(RETVAL);

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
        RETVAL =   _find_objarray(aTHX_ h, "entries", 7, (void **) &n->entries, &n->entryCount, sizeof(*n->entries), newSVpvs("WebGPU::Direct::BindGroupLayoutEntry"));

        if (items > 1)
        {
              _store_objarray(aTHX_ h, "entries", 7, (void **) &n->entries, &n->entryCount, sizeof(*n->entries), newSVpvs("WebGPU::Direct::BindGroupLayoutEntry"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WGPUTextureFormat"));

        if (items > 1)
        {
              _store_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WGPUTextureFormat"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "blend", 5, (void **) &n->blend, newSVpvs("WebGPU::Direct::BlendState"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "blend", 5, (void **) &n->blend, newSVpvs("WebGPU::Direct::BlendState"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_uint32_t(aTHX_ h, "writeMask", 9,  &n->writeMask, NULL);

        if (items > 1)
        {
              _store_uint32_t(aTHX_ h, "writeMask", 9,  &n->writeMask, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_opaque(aTHX_ h, "layout", 6, (void **) &n->layout, newSVpvs("WebGPU::Direct::PipelineLayout"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "layout", 6, (void **) &n->layout, newSVpvs("WebGPU::Direct::PipelineLayout"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "compute", 7,  &n->compute, sizeof(n->compute), newSVpvs("WebGPU::Direct::ProgrammableStageDescriptor"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "compute", 7,  &n->compute, sizeof(n->compute), newSVpvs("WebGPU::Direct::ProgrammableStageDescriptor"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_size_t(aTHX_ h, "requiredFeaturesCount", 21,  &n->requiredFeaturesCount, NULL);

        if (items > 1)
        {
              _store_size_t(aTHX_ h, "requiredFeaturesCount", 21,  &n->requiredFeaturesCount, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
  _find_void(aTHX_ h, "requiredFeatures", 16,  &n->requiredFeatures, newSVpvs("WGPUFeatureName"));

        if (items > 1)
        {
              // "requiredFeatures" is a ptr type WGPUFeatureName, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "requiredFeatures", 16,  &n->requiredFeatures, newSVpvs("WGPUFeatureName"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "requiredLimits", 14, (void **) &n->requiredLimits, newSVpvs("WebGPU::Direct::RequiredLimits"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "requiredLimits", 14, (void **) &n->requiredLimits, newSVpvs("WebGPU::Direct::RequiredLimits"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "defaultQueue", 12,  &n->defaultQueue, sizeof(n->defaultQueue), newSVpvs("WebGPU::Direct::QueueDescriptor"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "defaultQueue", 12,  &n->defaultQueue, sizeof(n->defaultQueue), newSVpvs("WebGPU::Direct::QueueDescriptor"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_void(aTHX_ h, "deviceLostCallback", 18,  &n->deviceLostCallback, NULL);

        if (items > 1)
        {
              _store_void(aTHX_ h, "deviceLostCallback", 18,  &n->deviceLostCallback, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
  _find_void(aTHX_ h, "deviceLostUserdata", 18,  &n->deviceLostUserdata, NULL);

        if (items > 1)
        {
              // "deviceLostUserdata" is a ptr type void, and that's not quite right yet, using opaque
  _store_void(aTHX_ h, "deviceLostUserdata", 18,  &n->deviceLostUserdata, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_size_t(aTHX_ h, "colorAttachmentCount", 20,  &n->colorAttachmentCount, NULL);

        SvREFCNT_inc(RETVAL);

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
        RETVAL =   _find_objarray(aTHX_ h, "colorAttachments", 16, (void **) &n->colorAttachments, &n->colorAttachmentCount, sizeof(*n->colorAttachments), newSVpvs("WebGPU::Direct::RenderPassColorAttachment"));

        if (items > 1)
        {
              _store_objarray(aTHX_ h, "colorAttachments", 16, (void **) &n->colorAttachments, &n->colorAttachmentCount, sizeof(*n->colorAttachments), newSVpvs("WebGPU::Direct::RenderPassColorAttachment"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "depthStencilAttachment", 22, (void **) &n->depthStencilAttachment, newSVpvs("WebGPU::Direct::RenderPassDepthStencilAttachment"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "depthStencilAttachment", 22, (void **) &n->depthStencilAttachment, newSVpvs("WebGPU::Direct::RenderPassDepthStencilAttachment"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_opaque(aTHX_ h, "occlusionQuerySet", 17, (void **) &n->occlusionQuerySet, newSVpvs("WebGPU::Direct::QuerySet"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "occlusionQuerySet", 17, (void **) &n->occlusionQuerySet, newSVpvs("WebGPU::Direct::QuerySet"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_size_t(aTHX_ h, "timestampWriteCount", 19,  &n->timestampWriteCount, NULL);

        SvREFCNT_inc(RETVAL);

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
        RETVAL =   _find_objarray(aTHX_ h, "timestampWrites", 15, (void **) &n->timestampWrites, &n->timestampWriteCount, sizeof(*n->timestampWrites), newSVpvs("WebGPU::Direct::RenderPassTimestampWrite"));

        if (items > 1)
        {
              _store_objarray(aTHX_ h, "timestampWrites", 15, (void **) &n->timestampWrites, &n->timestampWriteCount, sizeof(*n->timestampWrites), newSVpvs("WebGPU::Direct::RenderPassTimestampWrite"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_opaque(aTHX_ h, "module", 6, (void **) &n->module, newSVpvs("WebGPU::Direct::ShaderModule"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "module", 6, (void **) &n->module, newSVpvs("WebGPU::Direct::ShaderModule"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_size_t(aTHX_ h, "constantCount", 13,  &n->constantCount, NULL);

        SvREFCNT_inc(RETVAL);

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
        RETVAL =   _find_objarray(aTHX_ h, "constants", 9, (void **) &n->constants, &n->constantCount, sizeof(*n->constants), newSVpvs("WebGPU::Direct::ConstantEntry"));

        if (items > 1)
        {
              _store_objarray(aTHX_ h, "constants", 9, (void **) &n->constants, &n->constantCount, sizeof(*n->constants), newSVpvs("WebGPU::Direct::ConstantEntry"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_size_t(aTHX_ h, "bufferCount", 11,  &n->bufferCount, NULL);

        SvREFCNT_inc(RETVAL);

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
        RETVAL =   _find_objarray(aTHX_ h, "buffers", 7, (void **) &n->buffers, &n->bufferCount, sizeof(*n->buffers), newSVpvs("WebGPU::Direct::VertexBufferLayout"));

        if (items > 1)
        {
              _store_objarray(aTHX_ h, "buffers", 7, (void **) &n->buffers, &n->bufferCount, sizeof(*n->buffers), newSVpvs("WebGPU::Direct::VertexBufferLayout"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_opaque(aTHX_ h, "module", 6, (void **) &n->module, newSVpvs("WebGPU::Direct::ShaderModule"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "module", 6, (void **) &n->module, newSVpvs("WebGPU::Direct::ShaderModule"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_size_t(aTHX_ h, "constantCount", 13,  &n->constantCount, NULL);

        SvREFCNT_inc(RETVAL);

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
        RETVAL =   _find_objarray(aTHX_ h, "constants", 9, (void **) &n->constants, &n->constantCount, sizeof(*n->constants), newSVpvs("WebGPU::Direct::ConstantEntry"));

        if (items > 1)
        {
              _store_objarray(aTHX_ h, "constants", 9, (void **) &n->constants, &n->constantCount, sizeof(*n->constants), newSVpvs("WebGPU::Direct::ConstantEntry"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_size_t(aTHX_ h, "targetCount", 11,  &n->targetCount, NULL);

        SvREFCNT_inc(RETVAL);

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
        RETVAL =   _find_objarray(aTHX_ h, "targets", 7, (void **) &n->targets, &n->targetCount, sizeof(*n->targets), newSVpvs("WebGPU::Direct::ColorTargetState"));

        if (items > 1)
        {
              _store_objarray(aTHX_ h, "targets", 7, (void **) &n->targets, &n->targetCount, sizeof(*n->targets), newSVpvs("WebGPU::Direct::ColorTargetState"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_str(aTHX_ h, "label", 5,  &n->label, NULL);

        if (items > 1)
        {
              _store_str(aTHX_ h, "label", 5,  &n->label, NULL, value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_opaque(aTHX_ h, "layout", 6, (void **) &n->layout, newSVpvs("WebGPU::Direct::PipelineLayout"));

        if (items > 1)
        {
              _store_opaque(aTHX_ h, "layout", 6, (void **) &n->layout, newSVpvs("WebGPU::Direct::PipelineLayout"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "vertex", 6,  &n->vertex, sizeof(n->vertex), newSVpvs("WebGPU::Direct::VertexState"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "vertex", 6,  &n->vertex, sizeof(n->vertex), newSVpvs("WebGPU::Direct::VertexState"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "primitive", 9,  &n->primitive, sizeof(n->primitive), newSVpvs("WebGPU::Direct::PrimitiveState"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "primitive", 9,  &n->primitive, sizeof(n->primitive), newSVpvs("WebGPU::Direct::PrimitiveState"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "depthStencil", 12, (void **) &n->depthStencil, newSVpvs("WebGPU::Direct::DepthStencilState"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "depthStencil", 12, (void **) &n->depthStencil, newSVpvs("WebGPU::Direct::DepthStencilState"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_obj(aTHX_ h, "multisample", 11,  &n->multisample, sizeof(n->multisample), newSVpvs("WebGPU::Direct::MultisampleState"));

        if (items > 1)
        {
              _store_obj(aTHX_ h, "multisample", 11,  &n->multisample, sizeof(n->multisample), newSVpvs("WebGPU::Direct::MultisampleState"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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
        RETVAL =   _find_objptr(aTHX_ h, "fragment", 8, (void **) &n->fragment, newSVpvs("WebGPU::Direct::FragmentState"));

        if (items > 1)
        {
              _store_objptr(aTHX_ h, "fragment", 8, (void **) &n->fragment, newSVpvs("WebGPU::Direct::FragmentState"), value);

        }
        else
        {
            SvREFCNT_inc(RETVAL);
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

