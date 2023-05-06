#include <webgpu/webgpu.h>

#pragma GCC diagnostic ignored "-Wint-to-pointer-cast"
#pragma GCC diagnostic ignored "-Wformat"

MODULE = WebGPU::Direct		PACKAGE = WebGPU::Direct::XS		PREFIX = wgpu


size_t
wgpuAdapterEnumerateFeatures(adapter, features)
	WGPUAdapter	adapter
	WGPUFeatureName *	features

int
wgpuAdapterGetLimits(adapter, limits)
	WGPUAdapter	adapter
	WGPUSupportedLimits *	limits

void
wgpuAdapterGetProperties(adapter, properties)
	WGPUAdapter	adapter
	WGPUAdapterProperties *	properties

int
wgpuAdapterHasFeature(adapter, feature)
	WGPUAdapter	adapter
	WGPUFeatureName	feature

void
wgpuAdapterRequestDevice(adapter, descriptor, callback, userdata)
	WGPUAdapter	adapter
	WGPUDeviceDescriptor const *	descriptor
	WGPURequestDeviceCallback	callback
	void *	userdata

void
wgpuBindGroupLayoutSetLabel(bindGroupLayout, label)
	WGPUBindGroupLayout	bindGroupLayout
	char const *	label

void
wgpuBindGroupSetLabel(bindGroup, label)
	WGPUBindGroup	bindGroup
	char const *	label

void
wgpuBufferDestroy(buffer)
	WGPUBuffer	buffer

void const *
wgpuBufferGetConstMappedRange(buffer, offset, size)
	WGPUBuffer	buffer
	size_t	offset
	size_t	size

WGPUBufferMapState
wgpuBufferGetMapState(buffer)
	WGPUBuffer	buffer

void *
wgpuBufferGetMappedRange(buffer, offset, size)
	WGPUBuffer	buffer
	size_t	offset
	size_t	size

uint64_t
wgpuBufferGetSize(buffer)
	WGPUBuffer	buffer

WGPUBufferUsage
wgpuBufferGetUsage(buffer)
	WGPUBuffer	buffer

void
wgpuBufferMapAsync(buffer, mode, offset, size, callback, userdata)
	WGPUBuffer	buffer
	WGPUMapModeFlags	mode
	size_t	offset
	size_t	size
	WGPUBufferMapCallback	callback
	void *	userdata

void
wgpuBufferSetLabel(buffer, label)
	WGPUBuffer	buffer
	char const *	label

void
wgpuBufferUnmap(buffer)
	WGPUBuffer	buffer

void
wgpuCommandBufferSetLabel(commandBuffer, label)
	WGPUCommandBuffer	commandBuffer
	char const *	label

WGPUComputePassEncoder
wgpuCommandEncoderBeginComputePass(commandEncoder, descriptor)
	WGPUCommandEncoder	commandEncoder
	WGPUComputePassDescriptor const *	descriptor

WGPURenderPassEncoder
wgpuCommandEncoderBeginRenderPass(commandEncoder, descriptor)
	WGPUCommandEncoder	commandEncoder
	WGPURenderPassDescriptor const *	descriptor

void
wgpuCommandEncoderClearBuffer(commandEncoder, buffer, offset, size)
	WGPUCommandEncoder	commandEncoder
	WGPUBuffer	buffer
	uint64_t	offset
	uint64_t	size

void
wgpuCommandEncoderCopyBufferToBuffer(commandEncoder, source, sourceOffset, destination, destinationOffset, size)
	WGPUCommandEncoder	commandEncoder
	WGPUBuffer	source
	uint64_t	sourceOffset
	WGPUBuffer	destination
	uint64_t	destinationOffset
	uint64_t	size

void
wgpuCommandEncoderCopyBufferToTexture(commandEncoder, source, destination, copySize)
	WGPUCommandEncoder	commandEncoder
	WGPUImageCopyBuffer const *	source
	WGPUImageCopyTexture const *	destination
	WGPUExtent3D const *	copySize

void
wgpuCommandEncoderCopyTextureToBuffer(commandEncoder, source, destination, copySize)
	WGPUCommandEncoder	commandEncoder
	WGPUImageCopyTexture const *	source
	WGPUImageCopyBuffer const *	destination
	WGPUExtent3D const *	copySize

void
wgpuCommandEncoderCopyTextureToTexture(commandEncoder, source, destination, copySize)
	WGPUCommandEncoder	commandEncoder
	WGPUImageCopyTexture const *	source
	WGPUImageCopyTexture const *	destination
	WGPUExtent3D const *	copySize

WGPUCommandBuffer
wgpuCommandEncoderFinish(commandEncoder, descriptor)
	WGPUCommandEncoder	commandEncoder
	WGPUCommandBufferDescriptor const *	descriptor

void
wgpuCommandEncoderInsertDebugMarker(commandEncoder, markerLabel)
	WGPUCommandEncoder	commandEncoder
	char const *	markerLabel

void
wgpuCommandEncoderPopDebugGroup(commandEncoder)
	WGPUCommandEncoder	commandEncoder

void
wgpuCommandEncoderPushDebugGroup(commandEncoder, groupLabel)
	WGPUCommandEncoder	commandEncoder
	char const *	groupLabel

void
wgpuCommandEncoderResolveQuerySet(commandEncoder, querySet, firstQuery, queryCount, destination, destinationOffset)
	WGPUCommandEncoder	commandEncoder
	WGPUQuerySet	querySet
	uint32_t	firstQuery
	uint32_t	queryCount
	WGPUBuffer	destination
	uint64_t	destinationOffset

void
wgpuCommandEncoderSetLabel(commandEncoder, label)
	WGPUCommandEncoder	commandEncoder
	char const *	label

void
wgpuCommandEncoderWriteTimestamp(commandEncoder, querySet, queryIndex)
	WGPUCommandEncoder	commandEncoder
	WGPUQuerySet	querySet
	uint32_t	queryIndex

void
wgpuComputePassEncoderBeginPipelineStatisticsQuery(computePassEncoder, querySet, queryIndex)
	WGPUComputePassEncoder	computePassEncoder
	WGPUQuerySet	querySet
	uint32_t	queryIndex

void
wgpuComputePassEncoderDispatchWorkgroups(computePassEncoder, workgroupCountX, workgroupCountY, workgroupCountZ)
	WGPUComputePassEncoder	computePassEncoder
	uint32_t	workgroupCountX
	uint32_t	workgroupCountY
	uint32_t	workgroupCountZ

void
wgpuComputePassEncoderDispatchWorkgroupsIndirect(computePassEncoder, indirectBuffer, indirectOffset)
	WGPUComputePassEncoder	computePassEncoder
	WGPUBuffer	indirectBuffer
	uint64_t	indirectOffset

void
wgpuComputePassEncoderEnd(computePassEncoder)
	WGPUComputePassEncoder	computePassEncoder

void
wgpuComputePassEncoderEndPipelineStatisticsQuery(computePassEncoder)
	WGPUComputePassEncoder	computePassEncoder

void
wgpuComputePassEncoderInsertDebugMarker(computePassEncoder, markerLabel)
	WGPUComputePassEncoder	computePassEncoder
	char const *	markerLabel

void
wgpuComputePassEncoderPopDebugGroup(computePassEncoder)
	WGPUComputePassEncoder	computePassEncoder

void
wgpuComputePassEncoderPushDebugGroup(computePassEncoder, groupLabel)
	WGPUComputePassEncoder	computePassEncoder
	char const *	groupLabel

void
wgpuComputePassEncoderSetBindGroup(computePassEncoder, groupIndex, group, dynamicOffsetCount, dynamicOffsets)
	WGPUComputePassEncoder	computePassEncoder
	uint32_t	groupIndex
	WGPUBindGroup	group
	uint32_t	dynamicOffsetCount
	uint32_t const *	dynamicOffsets

void
wgpuComputePassEncoderSetLabel(computePassEncoder, label)
	WGPUComputePassEncoder	computePassEncoder
	char const *	label

void
wgpuComputePassEncoderSetPipeline(computePassEncoder, pipeline)
	WGPUComputePassEncoder	computePassEncoder
	WGPUComputePipeline	pipeline

WGPUBindGroupLayout
wgpuComputePipelineGetBindGroupLayout(computePipeline, groupIndex)
	WGPUComputePipeline	computePipeline
	uint32_t	groupIndex

void
wgpuComputePipelineSetLabel(computePipeline, label)
	WGPUComputePipeline	computePipeline
	char const *	label

WGPUInstance
wgpuCreateInstance(descriptor)
	WGPUInstanceDescriptor const *	descriptor

WGPUBindGroup
wgpuDeviceCreateBindGroup(device, descriptor)
	WGPUDevice	device
	WGPUBindGroupDescriptor const *	descriptor

WGPUBindGroupLayout
wgpuDeviceCreateBindGroupLayout(device, descriptor)
	WGPUDevice	device
	WGPUBindGroupLayoutDescriptor const *	descriptor

WGPUBuffer
wgpuDeviceCreateBuffer(device, descriptor)
	WGPUDevice	device
	WGPUBufferDescriptor const *	descriptor

WGPUCommandEncoder
wgpuDeviceCreateCommandEncoder(device, descriptor)
	WGPUDevice	device
	WGPUCommandEncoderDescriptor const *	descriptor

WGPUComputePipeline
wgpuDeviceCreateComputePipeline(device, descriptor)
	WGPUDevice	device
	WGPUComputePipelineDescriptor const *	descriptor

void
wgpuDeviceCreateComputePipelineAsync(device, descriptor, callback, userdata)
	WGPUDevice	device
	WGPUComputePipelineDescriptor const *	descriptor
	WGPUCreateComputePipelineAsyncCallback	callback
	void *	userdata

WGPUPipelineLayout
wgpuDeviceCreatePipelineLayout(device, descriptor)
	WGPUDevice	device
	WGPUPipelineLayoutDescriptor const *	descriptor

WGPUQuerySet
wgpuDeviceCreateQuerySet(device, descriptor)
	WGPUDevice	device
	WGPUQuerySetDescriptor const *	descriptor

WGPURenderBundleEncoder
wgpuDeviceCreateRenderBundleEncoder(device, descriptor)
	WGPUDevice	device
	WGPURenderBundleEncoderDescriptor const *	descriptor

WGPURenderPipeline
wgpuDeviceCreateRenderPipeline(device, descriptor)
	WGPUDevice	device
	WGPURenderPipelineDescriptor const *	descriptor

void
wgpuDeviceCreateRenderPipelineAsync(device, descriptor, callback, userdata)
	WGPUDevice	device
	WGPURenderPipelineDescriptor const *	descriptor
	WGPUCreateRenderPipelineAsyncCallback	callback
	void *	userdata

WGPUSampler
wgpuDeviceCreateSampler(device, descriptor)
	WGPUDevice	device
	WGPUSamplerDescriptor const *	descriptor

WGPUShaderModule
wgpuDeviceCreateShaderModule(device, descriptor)
	WGPUDevice	device
	WGPUShaderModuleDescriptor const *	descriptor

WGPUSwapChain
wgpuDeviceCreateSwapChain(device, surface, descriptor)
	WGPUDevice	device
	WGPUSurface	surface
	WGPUSwapChainDescriptor const *	descriptor

WGPUTexture
wgpuDeviceCreateTexture(device, descriptor)
	WGPUDevice	device
	WGPUTextureDescriptor const *	descriptor

void
wgpuDeviceDestroy(device)
	WGPUDevice	device

size_t
wgpuDeviceEnumerateFeatures(device, features)
	WGPUDevice	device
	WGPUFeatureName *	features

int
wgpuDeviceGetLimits(device, limits)
	WGPUDevice	device
	WGPUSupportedLimits *	limits

WGPUQueue
wgpuDeviceGetQueue(device)
	WGPUDevice	device

int
wgpuDeviceHasFeature(device, feature)
	WGPUDevice	device
	WGPUFeatureName	feature

int
wgpuDevicePopErrorScope(device, callback, userdata)
	WGPUDevice	device
	WGPUErrorCallback	callback
	void *	userdata

void
wgpuDevicePushErrorScope(device, filter)
	WGPUDevice	device
	WGPUErrorFilter	filter

void
wgpuDeviceSetDeviceLostCallback(device, callback, userdata)
	WGPUDevice	device
	WGPUDeviceLostCallback	callback
	void *	userdata

void
wgpuDeviceSetLabel(device, label)
	WGPUDevice	device
	char const *	label

void
wgpuDeviceSetUncapturedErrorCallback(device, callback, userdata)
	WGPUDevice	device
	WGPUErrorCallback	callback
	void *	userdata

WGPUProc
wgpuGetProcAddress(device, procName)
	WGPUDevice	device
	char const *	procName

WGPUSurface
wgpuInstanceCreateSurface(instance, descriptor)
	WGPUInstance	instance
	WGPUSurfaceDescriptor const *	descriptor

void
wgpuInstanceProcessEvents(instance)
	WGPUInstance	instance

void
wgpuInstanceRequestAdapter(instance, options, callback, userdata)
	WGPUInstance	instance
	WGPURequestAdapterOptions const *	options
	WGPURequestAdapterCallback	callback
	void *	userdata

void
wgpuPipelineLayoutSetLabel(pipelineLayout, label)
	WGPUPipelineLayout	pipelineLayout
	char const *	label

void
wgpuQuerySetDestroy(querySet)
	WGPUQuerySet	querySet

uint32_t
wgpuQuerySetGetCount(querySet)
	WGPUQuerySet	querySet

WGPUQueryType
wgpuQuerySetGetType(querySet)
	WGPUQuerySet	querySet

void
wgpuQuerySetSetLabel(querySet, label)
	WGPUQuerySet	querySet
	char const *	label

void
wgpuQueueOnSubmittedWorkDone(queue, callback, userdata)
	WGPUQueue	queue
	WGPUQueueWorkDoneCallback	callback
	void *	userdata

void
wgpuQueueSetLabel(queue, label)
	WGPUQueue	queue
	char const *	label

void
wgpuQueueSubmit(queue, commandCount, commands)
	WGPUQueue	queue
	uint32_t	commandCount
	WGPUCommandBuffer const *	commands

void
wgpuQueueWriteBuffer(queue, buffer, bufferOffset, data, size)
	WGPUQueue	queue
	WGPUBuffer	buffer
	uint64_t	bufferOffset
	void const *	data
	size_t	size

void
wgpuQueueWriteTexture(queue, destination, data, dataSize, dataLayout, writeSize)
	WGPUQueue	queue
	WGPUImageCopyTexture const *	destination
	void const *	data
	size_t	dataSize
	WGPUTextureDataLayout const *	dataLayout
	WGPUExtent3D const *	writeSize

void
wgpuRenderBundleEncoderDraw(renderBundleEncoder, vertexCount, instanceCount, firstVertex, firstInstance)
	WGPURenderBundleEncoder	renderBundleEncoder
	uint32_t	vertexCount
	uint32_t	instanceCount
	uint32_t	firstVertex
	uint32_t	firstInstance

void
wgpuRenderBundleEncoderDrawIndexed(renderBundleEncoder, indexCount, instanceCount, firstIndex, baseVertex, firstInstance)
	WGPURenderBundleEncoder	renderBundleEncoder
	uint32_t	indexCount
	uint32_t	instanceCount
	uint32_t	firstIndex
	int32_t	baseVertex
	uint32_t	firstInstance

void
wgpuRenderBundleEncoderDrawIndexedIndirect(renderBundleEncoder, indirectBuffer, indirectOffset)
	WGPURenderBundleEncoder	renderBundleEncoder
	WGPUBuffer	indirectBuffer
	uint64_t	indirectOffset

void
wgpuRenderBundleEncoderDrawIndirect(renderBundleEncoder, indirectBuffer, indirectOffset)
	WGPURenderBundleEncoder	renderBundleEncoder
	WGPUBuffer	indirectBuffer
	uint64_t	indirectOffset

WGPURenderBundle
wgpuRenderBundleEncoderFinish(renderBundleEncoder, descriptor)
	WGPURenderBundleEncoder	renderBundleEncoder
	WGPURenderBundleDescriptor const *	descriptor

void
wgpuRenderBundleEncoderInsertDebugMarker(renderBundleEncoder, markerLabel)
	WGPURenderBundleEncoder	renderBundleEncoder
	char const *	markerLabel

void
wgpuRenderBundleEncoderPopDebugGroup(renderBundleEncoder)
	WGPURenderBundleEncoder	renderBundleEncoder

void
wgpuRenderBundleEncoderPushDebugGroup(renderBundleEncoder, groupLabel)
	WGPURenderBundleEncoder	renderBundleEncoder
	char const *	groupLabel

void
wgpuRenderBundleEncoderSetBindGroup(renderBundleEncoder, groupIndex, group, dynamicOffsetCount, dynamicOffsets)
	WGPURenderBundleEncoder	renderBundleEncoder
	uint32_t	groupIndex
	WGPUBindGroup	group
	uint32_t	dynamicOffsetCount
	uint32_t const *	dynamicOffsets

void
wgpuRenderBundleEncoderSetIndexBuffer(renderBundleEncoder, buffer, format, offset, size)
	WGPURenderBundleEncoder	renderBundleEncoder
	WGPUBuffer	buffer
	WGPUIndexFormat format
	uint64_t	offset
	uint64_t	size

void
wgpuRenderBundleEncoderSetLabel(renderBundleEncoder, label)
	WGPURenderBundleEncoder	renderBundleEncoder
	char const *	label

void
wgpuRenderBundleEncoderSetPipeline(renderBundleEncoder, pipeline)
	WGPURenderBundleEncoder	renderBundleEncoder
	WGPURenderPipeline	pipeline

void
wgpuRenderBundleEncoderSetVertexBuffer(renderBundleEncoder, slot, buffer, offset, size)
	WGPURenderBundleEncoder	renderBundleEncoder
	uint32_t	slot
	WGPUBuffer	buffer
	uint64_t	offset
	uint64_t	size

void
wgpuRenderPassEncoderBeginOcclusionQuery(renderPassEncoder, queryIndex)
	WGPURenderPassEncoder	renderPassEncoder
	uint32_t	queryIndex

void
wgpuRenderPassEncoderBeginPipelineStatisticsQuery(renderPassEncoder, querySet, queryIndex)
	WGPURenderPassEncoder	renderPassEncoder
	WGPUQuerySet	querySet
	uint32_t	queryIndex

void
wgpuRenderPassEncoderDraw(renderPassEncoder, vertexCount, instanceCount, firstVertex, firstInstance)
	WGPURenderPassEncoder	renderPassEncoder
	uint32_t	vertexCount
	uint32_t	instanceCount
	uint32_t	firstVertex
	uint32_t	firstInstance

void
wgpuRenderPassEncoderDrawIndexed(renderPassEncoder, indexCount, instanceCount, firstIndex, baseVertex, firstInstance)
	WGPURenderPassEncoder	renderPassEncoder
	uint32_t	indexCount
	uint32_t	instanceCount
	uint32_t	firstIndex
	int32_t	baseVertex
	uint32_t	firstInstance

void
wgpuRenderPassEncoderDrawIndexedIndirect(renderPassEncoder, indirectBuffer, indirectOffset)
	WGPURenderPassEncoder	renderPassEncoder
	WGPUBuffer	indirectBuffer
	uint64_t	indirectOffset

void
wgpuRenderPassEncoderDrawIndirect(renderPassEncoder, indirectBuffer, indirectOffset)
	WGPURenderPassEncoder	renderPassEncoder
	WGPUBuffer	indirectBuffer
	uint64_t	indirectOffset

void
wgpuRenderPassEncoderEnd(renderPassEncoder)
	WGPURenderPassEncoder	renderPassEncoder

void
wgpuRenderPassEncoderEndOcclusionQuery(renderPassEncoder)
	WGPURenderPassEncoder	renderPassEncoder

void
wgpuRenderPassEncoderEndPipelineStatisticsQuery(renderPassEncoder)
	WGPURenderPassEncoder	renderPassEncoder

void
wgpuRenderPassEncoderExecuteBundles(renderPassEncoder, bundleCount, bundles)
	WGPURenderPassEncoder	renderPassEncoder
	uint32_t	bundleCount
	WGPURenderBundle const *	bundles

void
wgpuRenderPassEncoderInsertDebugMarker(renderPassEncoder, markerLabel)
	WGPURenderPassEncoder	renderPassEncoder
	char const *	markerLabel

void
wgpuRenderPassEncoderPopDebugGroup(renderPassEncoder)
	WGPURenderPassEncoder	renderPassEncoder

void
wgpuRenderPassEncoderPushDebugGroup(renderPassEncoder, groupLabel)
	WGPURenderPassEncoder	renderPassEncoder
	char const *	groupLabel

void
wgpuRenderPassEncoderSetBindGroup(renderPassEncoder, groupIndex, group, dynamicOffsetCount, dynamicOffsets)
	WGPURenderPassEncoder	renderPassEncoder
	uint32_t	groupIndex
	WGPUBindGroup	group
	uint32_t	dynamicOffsetCount
	uint32_t const *	dynamicOffsets

void
wgpuRenderPassEncoderSetBlendConstant(renderPassEncoder, color)
	WGPURenderPassEncoder	renderPassEncoder
	WGPUColor const *	color

void
wgpuRenderPassEncoderSetIndexBuffer(renderPassEncoder, buffer, format, offset, size)
	WGPURenderPassEncoder	renderPassEncoder
	WGPUBuffer	buffer
	WGPUIndexFormat format
	uint64_t	offset
	uint64_t	size

void
wgpuRenderPassEncoderSetLabel(renderPassEncoder, label)
	WGPURenderPassEncoder	renderPassEncoder
	char const *	label

void
wgpuRenderPassEncoderSetPipeline(renderPassEncoder, pipeline)
	WGPURenderPassEncoder	renderPassEncoder
	WGPURenderPipeline	pipeline

void
wgpuRenderPassEncoderSetScissorRect(renderPassEncoder, x, y, width, height)
	WGPURenderPassEncoder	renderPassEncoder
	uint32_t	x
	uint32_t	y
	uint32_t	width
	uint32_t	height

void
wgpuRenderPassEncoderSetStencilReference(renderPassEncoder, reference)
	WGPURenderPassEncoder	renderPassEncoder
	uint32_t	reference

void
wgpuRenderPassEncoderSetVertexBuffer(renderPassEncoder, slot, buffer, offset, size)
	WGPURenderPassEncoder	renderPassEncoder
	uint32_t	slot
	WGPUBuffer	buffer
	uint64_t	offset
	uint64_t	size

void
wgpuRenderPassEncoderSetViewport(renderPassEncoder, x, y, width, height, minDepth, maxDepth)
	WGPURenderPassEncoder	renderPassEncoder
	float	x
	float	y
	float	width
	float	height
	float	minDepth
	float	maxDepth

WGPUBindGroupLayout
wgpuRenderPipelineGetBindGroupLayout(renderPipeline, groupIndex)
	WGPURenderPipeline	renderPipeline
	uint32_t	groupIndex

void
wgpuRenderPipelineSetLabel(renderPipeline, label)
	WGPURenderPipeline	renderPipeline
	char const *	label

void
wgpuSamplerSetLabel(sampler, label)
	WGPUSampler	sampler
	char const *	label

void
wgpuShaderModuleGetCompilationInfo(shaderModule, callback, userdata)
	WGPUShaderModule	shaderModule
	WGPUCompilationInfoCallback	callback
	void *	userdata

void
wgpuShaderModuleSetLabel(shaderModule, label)
	WGPUShaderModule	shaderModule
	char const *	label

WGPUTextureFormat
wgpuSurfaceGetPreferredFormat(surface, adapter)
	WGPUSurface	surface
	WGPUAdapter	adapter

WGPUTextureView
wgpuSwapChainGetCurrentTextureView(swapChain)
	WGPUSwapChain	swapChain

void
wgpuSwapChainPresent(swapChain)
	WGPUSwapChain	swapChain

WGPUTextureView
wgpuTextureCreateView(texture, descriptor)
	WGPUTexture	texture
	WGPUTextureViewDescriptor const *	descriptor

void
wgpuTextureDestroy(texture)
	WGPUTexture	texture

uint32_t
wgpuTextureGetDepthOrArrayLayers(texture)
	WGPUTexture	texture

WGPUTextureDimension
wgpuTextureGetDimension(texture)
	WGPUTexture	texture

WGPUTextureFormat
wgpuTextureGetFormat(texture)
	WGPUTexture	texture

uint32_t
wgpuTextureGetHeight(texture)
	WGPUTexture	texture

uint32_t
wgpuTextureGetMipLevelCount(texture)
	WGPUTexture	texture

uint32_t
wgpuTextureGetSampleCount(texture)
	WGPUTexture	texture

WGPUTextureUsage
wgpuTextureGetUsage(texture)
	WGPUTexture	texture

uint32_t
wgpuTextureGetWidth(texture)
	WGPUTexture	texture

void
wgpuTextureSetLabel(texture, label)
	WGPUTexture	texture
	char const *	label

void
wgpuTextureViewSetLabel(textureView, label)
	WGPUTextureView	textureView
	char const *	label

MODULE = WebGPU::Direct		PACKAGE = WGPUBindGroupDescriptor		PREFIX = wgpu

WGPUBindGroupDescriptor *
_to_ptr(THIS)
	WGPUBindGroupDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUBindGroupDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUBindGroupDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUBindGroupDescriptor");
    OUTPUT:
	RETVAL

WGPUBindGroupDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUBindGroupDescriptorPtr		PREFIX = wgpu

WGPUBindGroupLayout
layout(THIS, __value = NO_INIT)
	WGPUBindGroupDescriptor * THIS
	WGPUBindGroupLayout __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->layout = __value;
	RETVAL = THIS->layout;
    OUTPUT:
	RETVAL

uint32_t
entryCount(THIS, __value = NO_INIT)
	WGPUBindGroupDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->entryCount = __value;
	RETVAL = THIS->entryCount;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUVertexState		PREFIX = wgpu

WGPUVertexState *
_to_ptr(THIS)
	WGPUVertexState THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUVertexState")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUVertexState *)s;
	}
	else
	    croak("THIS is not of type WGPUVertexState");
    OUTPUT:
	RETVAL

WGPUVertexState
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUVertexStatePtr		PREFIX = wgpu

WGPUShaderModule
module(THIS, __value = NO_INIT)
	WGPUVertexState * THIS
	WGPUShaderModule __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->module = __value;
	RETVAL = THIS->module;
    OUTPUT:
	RETVAL

uint32_t
constantCount(THIS, __value = NO_INIT)
	WGPUVertexState * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->constantCount = __value;
	RETVAL = THIS->constantCount;
    OUTPUT:
	RETVAL

uint32_t
bufferCount(THIS, __value = NO_INIT)
	WGPUVertexState * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->bufferCount = __value;
	RETVAL = THIS->bufferCount;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPURenderPassColorAttachment		PREFIX = wgpu

WGPURenderPassColorAttachment *
_to_ptr(THIS)
	WGPURenderPassColorAttachment THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPURenderPassColorAttachment")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPURenderPassColorAttachment *)s;
	}
	else
	    croak("THIS is not of type WGPURenderPassColorAttachment");
    OUTPUT:
	RETVAL

WGPURenderPassColorAttachment
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPURenderPassColorAttachmentPtr		PREFIX = wgpu

WGPUTextureView
view(THIS, __value = NO_INIT)
	WGPURenderPassColorAttachment * THIS
	WGPUTextureView __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->view = __value;
	RETVAL = THIS->view;
    OUTPUT:
	RETVAL

WGPUTextureView
resolveTarget(THIS, __value = NO_INIT)
	WGPURenderPassColorAttachment * THIS
	WGPUTextureView __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->resolveTarget = __value;
	RETVAL = THIS->resolveTarget;
    OUTPUT:
	RETVAL

WGPULoadOp
loadOp(THIS, __value = NO_INIT)
	WGPURenderPassColorAttachment * THIS
	WGPULoadOp __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->loadOp = __value;
	RETVAL = THIS->loadOp;
    OUTPUT:
	RETVAL

WGPUStoreOp
storeOp(THIS, __value = NO_INIT)
	WGPURenderPassColorAttachment * THIS
	WGPUStoreOp __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->storeOp = __value;
	RETVAL = THIS->storeOp;
    OUTPUT:
	RETVAL

WGPUColor *
clearValue(THIS, __value = NO_INIT)
	WGPURenderPassColorAttachment * THIS
	WGPUColor __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->clearValue = __value;
	RETVAL = &(THIS->clearValue);
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUVertexAttribute		PREFIX = wgpu

WGPUVertexAttribute *
_to_ptr(THIS)
	WGPUVertexAttribute THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUVertexAttribute")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUVertexAttribute *)s;
	}
	else
	    croak("THIS is not of type WGPUVertexAttribute");
    OUTPUT:
	RETVAL

WGPUVertexAttribute
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUVertexAttributePtr		PREFIX = wgpu

WGPUVertexFormat
format(THIS, __value = NO_INIT)
	WGPUVertexAttribute * THIS
	WGPUVertexFormat __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->format = __value;
	RETVAL = THIS->format;
    OUTPUT:
	RETVAL

uint64_t
offset(THIS, __value = NO_INIT)
	WGPUVertexAttribute * THIS
	uint64_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->offset = __value;
	RETVAL = THIS->offset;
    OUTPUT:
	RETVAL

uint32_t
shaderLocation(THIS, __value = NO_INIT)
	WGPUVertexAttribute * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->shaderLocation = __value;
	RETVAL = THIS->shaderLocation;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUBufferDescriptor		PREFIX = wgpu

WGPUBufferDescriptor *
_to_ptr(THIS)
	WGPUBufferDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUBufferDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUBufferDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUBufferDescriptor");
    OUTPUT:
	RETVAL

WGPUBufferDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUBufferDescriptorPtr		PREFIX = wgpu

WGPUBufferUsageFlags
usage(THIS, __value = NO_INIT)
	WGPUBufferDescriptor * THIS
	WGPUBufferUsageFlags __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->usage = __value;
	RETVAL = THIS->usage;
    OUTPUT:
	RETVAL

uint64_t
size(THIS, __value = NO_INIT)
	WGPUBufferDescriptor * THIS
	uint64_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->size = __value;
	RETVAL = THIS->size;
    OUTPUT:
	RETVAL

int
mappedAtCreation(THIS, __value = NO_INIT)
	WGPUBufferDescriptor * THIS
	int __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->mappedAtCreation = __value;
	RETVAL = THIS->mappedAtCreation;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUQueueDescriptor		PREFIX = wgpu

WGPUQueueDescriptor *
_to_ptr(THIS)
	WGPUQueueDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUQueueDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUQueueDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUQueueDescriptor");
    OUTPUT:
	RETVAL

WGPUQueueDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUQueueDescriptorPtr		PREFIX = wgpu


MODULE = WebGPU::Direct		PACKAGE = WGPUFragmentState		PREFIX = wgpu

WGPUFragmentState *
_to_ptr(THIS)
	WGPUFragmentState THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUFragmentState")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUFragmentState *)s;
	}
	else
	    croak("THIS is not of type WGPUFragmentState");
    OUTPUT:
	RETVAL

WGPUFragmentState
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUFragmentStatePtr		PREFIX = wgpu

WGPUShaderModule
module(THIS, __value = NO_INIT)
	WGPUFragmentState * THIS
	WGPUShaderModule __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->module = __value;
	RETVAL = THIS->module;
    OUTPUT:
	RETVAL

uint32_t
constantCount(THIS, __value = NO_INIT)
	WGPUFragmentState * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->constantCount = __value;
	RETVAL = THIS->constantCount;
    OUTPUT:
	RETVAL

uint32_t
targetCount(THIS, __value = NO_INIT)
	WGPUFragmentState * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->targetCount = __value;
	RETVAL = THIS->targetCount;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUBindGroupLayoutDescriptor		PREFIX = wgpu

WGPUBindGroupLayoutDescriptor *
_to_ptr(THIS)
	WGPUBindGroupLayoutDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUBindGroupLayoutDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUBindGroupLayoutDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUBindGroupLayoutDescriptor");
    OUTPUT:
	RETVAL

WGPUBindGroupLayoutDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUBindGroupLayoutDescriptorPtr		PREFIX = wgpu

uint32_t
entryCount(THIS, __value = NO_INIT)
	WGPUBindGroupLayoutDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->entryCount = __value;
	RETVAL = THIS->entryCount;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUOrigin3D		PREFIX = wgpu

WGPUOrigin3D *
_to_ptr(THIS)
	WGPUOrigin3D THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUOrigin3D")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUOrigin3D *)s;
	}
	else
	    croak("THIS is not of type WGPUOrigin3D");
    OUTPUT:
	RETVAL

WGPUOrigin3D
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUOrigin3DPtr		PREFIX = wgpu

uint32_t
x(THIS, __value = NO_INIT)
	WGPUOrigin3D * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->x = __value;
	RETVAL = THIS->x;
    OUTPUT:
	RETVAL

uint32_t
y(THIS, __value = NO_INIT)
	WGPUOrigin3D * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->y = __value;
	RETVAL = THIS->y;
    OUTPUT:
	RETVAL

uint32_t
z(THIS, __value = NO_INIT)
	WGPUOrigin3D * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->z = __value;
	RETVAL = THIS->z;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPURenderPassDescriptorMaxDrawCount		PREFIX = wgpu

WGPURenderPassDescriptorMaxDrawCount *
_to_ptr(THIS)
	WGPURenderPassDescriptorMaxDrawCount THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPURenderPassDescriptorMaxDrawCount")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPURenderPassDescriptorMaxDrawCount *)s;
	}
	else
	    croak("THIS is not of type WGPURenderPassDescriptorMaxDrawCount");
    OUTPUT:
	RETVAL

WGPURenderPassDescriptorMaxDrawCount
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPURenderPassDescriptorMaxDrawCountPtr		PREFIX = wgpu

WGPUChainedStruct *
chain(THIS, __value = NO_INIT)
	WGPURenderPassDescriptorMaxDrawCount * THIS
	WGPUChainedStruct __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->chain = __value;
	RETVAL = &(THIS->chain);
    OUTPUT:
	RETVAL

uint64_t
maxDrawCount(THIS, __value = NO_INIT)
	WGPURenderPassDescriptorMaxDrawCount * THIS
	uint64_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxDrawCount = __value;
	RETVAL = THIS->maxDrawCount;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPURenderPipelineDescriptor		PREFIX = wgpu

WGPURenderPipelineDescriptor *
_to_ptr(THIS)
	WGPURenderPipelineDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPURenderPipelineDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPURenderPipelineDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPURenderPipelineDescriptor");
    OUTPUT:
	RETVAL

WGPURenderPipelineDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPURenderPipelineDescriptorPtr		PREFIX = wgpu

WGPUPipelineLayout
layout(THIS, __value = NO_INIT)
	WGPURenderPipelineDescriptor * THIS
	WGPUPipelineLayout __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->layout = __value;
	RETVAL = THIS->layout;
    OUTPUT:
	RETVAL

WGPUVertexState *
vertex(THIS, __value = NO_INIT)
	WGPURenderPipelineDescriptor * THIS
	WGPUVertexState __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->vertex = __value;
	RETVAL = &(THIS->vertex);
    OUTPUT:
	RETVAL

WGPUPrimitiveState *
primitive(THIS, __value = NO_INIT)
	WGPURenderPipelineDescriptor * THIS
	WGPUPrimitiveState __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->primitive = __value;
	RETVAL = &(THIS->primitive);
    OUTPUT:
	RETVAL

WGPUMultisampleState *
multisample(THIS, __value = NO_INIT)
	WGPURenderPipelineDescriptor * THIS
	WGPUMultisampleState __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->multisample = __value;
	RETVAL = &(THIS->multisample);
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUComputePassDescriptor		PREFIX = wgpu

WGPUComputePassDescriptor *
_to_ptr(THIS)
	WGPUComputePassDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUComputePassDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUComputePassDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUComputePassDescriptor");
    OUTPUT:
	RETVAL

WGPUComputePassDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUComputePassDescriptorPtr		PREFIX = wgpu

uint32_t
timestampWriteCount(THIS, __value = NO_INIT)
	WGPUComputePassDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->timestampWriteCount = __value;
	RETVAL = THIS->timestampWriteCount;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPULimits		PREFIX = wgpu

WGPULimits *
_to_ptr(THIS)
	WGPULimits THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPULimits")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPULimits *)s;
	}
	else
	    croak("THIS is not of type WGPULimits");
    OUTPUT:
	RETVAL

WGPULimits
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPULimitsPtr		PREFIX = wgpu

uint32_t
maxTextureDimension1D(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxTextureDimension1D = __value;
	RETVAL = THIS->maxTextureDimension1D;
    OUTPUT:
	RETVAL

uint32_t
maxTextureDimension2D(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxTextureDimension2D = __value;
	RETVAL = THIS->maxTextureDimension2D;
    OUTPUT:
	RETVAL

uint32_t
maxTextureDimension3D(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxTextureDimension3D = __value;
	RETVAL = THIS->maxTextureDimension3D;
    OUTPUT:
	RETVAL

uint32_t
maxTextureArrayLayers(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxTextureArrayLayers = __value;
	RETVAL = THIS->maxTextureArrayLayers;
    OUTPUT:
	RETVAL

uint32_t
maxBindGroups(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxBindGroups = __value;
	RETVAL = THIS->maxBindGroups;
    OUTPUT:
	RETVAL

uint32_t
maxBindingsPerBindGroup(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxBindingsPerBindGroup = __value;
	RETVAL = THIS->maxBindingsPerBindGroup;
    OUTPUT:
	RETVAL

uint32_t
maxDynamicUniformBuffersPerPipelineLayout(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxDynamicUniformBuffersPerPipelineLayout = __value;
	RETVAL = THIS->maxDynamicUniformBuffersPerPipelineLayout;
    OUTPUT:
	RETVAL

uint32_t
maxDynamicStorageBuffersPerPipelineLayout(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxDynamicStorageBuffersPerPipelineLayout = __value;
	RETVAL = THIS->maxDynamicStorageBuffersPerPipelineLayout;
    OUTPUT:
	RETVAL

uint32_t
maxSampledTexturesPerShaderStage(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxSampledTexturesPerShaderStage = __value;
	RETVAL = THIS->maxSampledTexturesPerShaderStage;
    OUTPUT:
	RETVAL

uint32_t
maxSamplersPerShaderStage(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxSamplersPerShaderStage = __value;
	RETVAL = THIS->maxSamplersPerShaderStage;
    OUTPUT:
	RETVAL

uint32_t
maxStorageBuffersPerShaderStage(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxStorageBuffersPerShaderStage = __value;
	RETVAL = THIS->maxStorageBuffersPerShaderStage;
    OUTPUT:
	RETVAL

uint32_t
maxStorageTexturesPerShaderStage(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxStorageTexturesPerShaderStage = __value;
	RETVAL = THIS->maxStorageTexturesPerShaderStage;
    OUTPUT:
	RETVAL

uint32_t
maxUniformBuffersPerShaderStage(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxUniformBuffersPerShaderStage = __value;
	RETVAL = THIS->maxUniformBuffersPerShaderStage;
    OUTPUT:
	RETVAL

uint64_t
maxUniformBufferBindingSize(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint64_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxUniformBufferBindingSize = __value;
	RETVAL = THIS->maxUniformBufferBindingSize;
    OUTPUT:
	RETVAL

uint64_t
maxStorageBufferBindingSize(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint64_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxStorageBufferBindingSize = __value;
	RETVAL = THIS->maxStorageBufferBindingSize;
    OUTPUT:
	RETVAL

uint32_t
minUniformBufferOffsetAlignment(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->minUniformBufferOffsetAlignment = __value;
	RETVAL = THIS->minUniformBufferOffsetAlignment;
    OUTPUT:
	RETVAL

uint32_t
minStorageBufferOffsetAlignment(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->minStorageBufferOffsetAlignment = __value;
	RETVAL = THIS->minStorageBufferOffsetAlignment;
    OUTPUT:
	RETVAL

uint32_t
maxVertexBuffers(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxVertexBuffers = __value;
	RETVAL = THIS->maxVertexBuffers;
    OUTPUT:
	RETVAL

uint64_t
maxBufferSize(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint64_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxBufferSize = __value;
	RETVAL = THIS->maxBufferSize;
    OUTPUT:
	RETVAL

uint32_t
maxVertexAttributes(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxVertexAttributes = __value;
	RETVAL = THIS->maxVertexAttributes;
    OUTPUT:
	RETVAL

uint32_t
maxVertexBufferArrayStride(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxVertexBufferArrayStride = __value;
	RETVAL = THIS->maxVertexBufferArrayStride;
    OUTPUT:
	RETVAL

uint32_t
maxInterStageShaderComponents(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxInterStageShaderComponents = __value;
	RETVAL = THIS->maxInterStageShaderComponents;
    OUTPUT:
	RETVAL

uint32_t
maxInterStageShaderVariables(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxInterStageShaderVariables = __value;
	RETVAL = THIS->maxInterStageShaderVariables;
    OUTPUT:
	RETVAL

uint32_t
maxColorAttachments(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxColorAttachments = __value;
	RETVAL = THIS->maxColorAttachments;
    OUTPUT:
	RETVAL

uint32_t
maxColorAttachmentBytesPerSample(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxColorAttachmentBytesPerSample = __value;
	RETVAL = THIS->maxColorAttachmentBytesPerSample;
    OUTPUT:
	RETVAL

uint32_t
maxComputeWorkgroupStorageSize(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxComputeWorkgroupStorageSize = __value;
	RETVAL = THIS->maxComputeWorkgroupStorageSize;
    OUTPUT:
	RETVAL

uint32_t
maxComputeInvocationsPerWorkgroup(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxComputeInvocationsPerWorkgroup = __value;
	RETVAL = THIS->maxComputeInvocationsPerWorkgroup;
    OUTPUT:
	RETVAL

uint32_t
maxComputeWorkgroupSizeX(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxComputeWorkgroupSizeX = __value;
	RETVAL = THIS->maxComputeWorkgroupSizeX;
    OUTPUT:
	RETVAL

uint32_t
maxComputeWorkgroupSizeY(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxComputeWorkgroupSizeY = __value;
	RETVAL = THIS->maxComputeWorkgroupSizeY;
    OUTPUT:
	RETVAL

uint32_t
maxComputeWorkgroupSizeZ(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxComputeWorkgroupSizeZ = __value;
	RETVAL = THIS->maxComputeWorkgroupSizeZ;
    OUTPUT:
	RETVAL

uint32_t
maxComputeWorkgroupsPerDimension(THIS, __value = NO_INIT)
	WGPULimits * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxComputeWorkgroupsPerDimension = __value;
	RETVAL = THIS->maxComputeWorkgroupsPerDimension;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUPrimitiveDepthClipControl		PREFIX = wgpu

WGPUPrimitiveDepthClipControl *
_to_ptr(THIS)
	WGPUPrimitiveDepthClipControl THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUPrimitiveDepthClipControl")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUPrimitiveDepthClipControl *)s;
	}
	else
	    croak("THIS is not of type WGPUPrimitiveDepthClipControl");
    OUTPUT:
	RETVAL

WGPUPrimitiveDepthClipControl
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUPrimitiveDepthClipControlPtr		PREFIX = wgpu

WGPUChainedStruct *
chain(THIS, __value = NO_INIT)
	WGPUPrimitiveDepthClipControl * THIS
	WGPUChainedStruct __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->chain = __value;
	RETVAL = &(THIS->chain);
    OUTPUT:
	RETVAL

int
unclippedDepth(THIS, __value = NO_INIT)
	WGPUPrimitiveDepthClipControl * THIS
	int __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->unclippedDepth = __value;
	RETVAL = THIS->unclippedDepth;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUBufferBindingLayout		PREFIX = wgpu

WGPUBufferBindingLayout *
_to_ptr(THIS)
	WGPUBufferBindingLayout THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUBufferBindingLayout")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUBufferBindingLayout *)s;
	}
	else
	    croak("THIS is not of type WGPUBufferBindingLayout");
    OUTPUT:
	RETVAL

WGPUBufferBindingLayout
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUBufferBindingLayoutPtr		PREFIX = wgpu

WGPUBufferBindingType
type(THIS, __value = NO_INIT)
	WGPUBufferBindingLayout * THIS
	WGPUBufferBindingType __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->type = __value;
	RETVAL = THIS->type;
    OUTPUT:
	RETVAL

int
hasDynamicOffset(THIS, __value = NO_INIT)
	WGPUBufferBindingLayout * THIS
	int __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->hasDynamicOffset = __value;
	RETVAL = THIS->hasDynamicOffset;
    OUTPUT:
	RETVAL

uint64_t
minBindingSize(THIS, __value = NO_INIT)
	WGPUBufferBindingLayout * THIS
	uint64_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->minBindingSize = __value;
	RETVAL = THIS->minBindingSize;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUSurfaceDescriptorFromXlibWindow		PREFIX = wgpu

WGPUSurfaceDescriptorFromXlibWindow *
_to_ptr(THIS)
	WGPUSurfaceDescriptorFromXlibWindow THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUSurfaceDescriptorFromXlibWindow")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUSurfaceDescriptorFromXlibWindow *)s;
	}
	else
	    croak("THIS is not of type WGPUSurfaceDescriptorFromXlibWindow");
    OUTPUT:
	RETVAL

WGPUSurfaceDescriptorFromXlibWindow
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUSurfaceDescriptorFromXlibWindowPtr		PREFIX = wgpu

WGPUChainedStruct *
chain(THIS, __value = NO_INIT)
	WGPUSurfaceDescriptorFromXlibWindow * THIS
	WGPUChainedStruct __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->chain = __value;
	RETVAL = &(THIS->chain);
    OUTPUT:
	RETVAL

uint32_t
window(THIS, __value = NO_INIT)
	WGPUSurfaceDescriptorFromXlibWindow * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->window = __value;
	RETVAL = THIS->window;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPURenderPassTimestampWrite		PREFIX = wgpu

WGPURenderPassTimestampWrite *
_to_ptr(THIS)
	WGPURenderPassTimestampWrite THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPURenderPassTimestampWrite")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPURenderPassTimestampWrite *)s;
	}
	else
	    croak("THIS is not of type WGPURenderPassTimestampWrite");
    OUTPUT:
	RETVAL

WGPURenderPassTimestampWrite
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPURenderPassTimestampWritePtr		PREFIX = wgpu

WGPUQuerySet
querySet(THIS, __value = NO_INIT)
	WGPURenderPassTimestampWrite * THIS
	WGPUQuerySet __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->querySet = __value;
	RETVAL = THIS->querySet;
    OUTPUT:
	RETVAL

uint32_t
queryIndex(THIS, __value = NO_INIT)
	WGPURenderPassTimestampWrite * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->queryIndex = __value;
	RETVAL = THIS->queryIndex;
    OUTPUT:
	RETVAL

WGPURenderPassTimestampLocation
location(THIS, __value = NO_INIT)
	WGPURenderPassTimestampWrite * THIS
	WGPURenderPassTimestampLocation __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->location = __value;
	RETVAL = THIS->location;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUChainedStruct		PREFIX = wgpu

WGPUChainedStruct *
_to_ptr(THIS)
	WGPUChainedStruct THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUChainedStruct")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUChainedStruct *)s;
	}
	else
	    croak("THIS is not of type WGPUChainedStruct");
    OUTPUT:
	RETVAL

WGPUChainedStruct
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUChainedStructPtr		PREFIX = wgpu

WGPUSType
sType(THIS, __value = NO_INIT)
	WGPUChainedStruct * THIS
	WGPUSType __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->sType = __value;
	RETVAL = THIS->sType;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUSurfaceDescriptorFromAndroidNativeWindow		PREFIX = wgpu

WGPUSurfaceDescriptorFromAndroidNativeWindow *
_to_ptr(THIS)
	WGPUSurfaceDescriptorFromAndroidNativeWindow THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUSurfaceDescriptorFromAndroidNativeWindow")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUSurfaceDescriptorFromAndroidNativeWindow *)s;
	}
	else
	    croak("THIS is not of type WGPUSurfaceDescriptorFromAndroidNativeWindow");
    OUTPUT:
	RETVAL

WGPUSurfaceDescriptorFromAndroidNativeWindow
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUSurfaceDescriptorFromAndroidNativeWindowPtr		PREFIX = wgpu

WGPUChainedStruct *
chain(THIS, __value = NO_INIT)
	WGPUSurfaceDescriptorFromAndroidNativeWindow * THIS
	WGPUChainedStruct __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->chain = __value;
	RETVAL = &(THIS->chain);
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUAdapterProperties		PREFIX = wgpu

WGPUAdapterProperties *
_to_ptr(THIS)
	WGPUAdapterProperties THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUAdapterProperties")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUAdapterProperties *)s;
	}
	else
	    croak("THIS is not of type WGPUAdapterProperties");
    OUTPUT:
	RETVAL

WGPUAdapterProperties
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUAdapterPropertiesPtr		PREFIX = wgpu

uint32_t
vendorID(THIS, __value = NO_INIT)
	WGPUAdapterProperties * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->vendorID = __value;
	RETVAL = THIS->vendorID;
    OUTPUT:
	RETVAL

uint32_t
deviceID(THIS, __value = NO_INIT)
	WGPUAdapterProperties * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->deviceID = __value;
	RETVAL = THIS->deviceID;
    OUTPUT:
	RETVAL

WGPUAdapterType
adapterType(THIS, __value = NO_INIT)
	WGPUAdapterProperties * THIS
	WGPUAdapterType __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->adapterType = __value;
	RETVAL = THIS->adapterType;
    OUTPUT:
	RETVAL

WGPUBackendType
backendType(THIS, __value = NO_INIT)
	WGPUAdapterProperties * THIS
	WGPUBackendType __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->backendType = __value;
	RETVAL = THIS->backendType;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUSamplerBindingLayout		PREFIX = wgpu

WGPUSamplerBindingLayout *
_to_ptr(THIS)
	WGPUSamplerBindingLayout THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUSamplerBindingLayout")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUSamplerBindingLayout *)s;
	}
	else
	    croak("THIS is not of type WGPUSamplerBindingLayout");
    OUTPUT:
	RETVAL

WGPUSamplerBindingLayout
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUSamplerBindingLayoutPtr		PREFIX = wgpu

WGPUSamplerBindingType
type(THIS, __value = NO_INIT)
	WGPUSamplerBindingLayout * THIS
	WGPUSamplerBindingType __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->type = __value;
	RETVAL = THIS->type;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUTextureViewDescriptor		PREFIX = wgpu

WGPUTextureViewDescriptor *
_to_ptr(THIS)
	WGPUTextureViewDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUTextureViewDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUTextureViewDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUTextureViewDescriptor");
    OUTPUT:
	RETVAL

WGPUTextureViewDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUTextureViewDescriptorPtr		PREFIX = wgpu

WGPUTextureFormat
format(THIS, __value = NO_INIT)
	WGPUTextureViewDescriptor * THIS
	WGPUTextureFormat __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->format = __value;
	RETVAL = THIS->format;
    OUTPUT:
	RETVAL

WGPUTextureViewDimension
dimension(THIS, __value = NO_INIT)
	WGPUTextureViewDescriptor * THIS
	WGPUTextureViewDimension __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->dimension = __value;
	RETVAL = THIS->dimension;
    OUTPUT:
	RETVAL

uint32_t
baseMipLevel(THIS, __value = NO_INIT)
	WGPUTextureViewDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->baseMipLevel = __value;
	RETVAL = THIS->baseMipLevel;
    OUTPUT:
	RETVAL

uint32_t
mipLevelCount(THIS, __value = NO_INIT)
	WGPUTextureViewDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->mipLevelCount = __value;
	RETVAL = THIS->mipLevelCount;
    OUTPUT:
	RETVAL

uint32_t
baseArrayLayer(THIS, __value = NO_INIT)
	WGPUTextureViewDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->baseArrayLayer = __value;
	RETVAL = THIS->baseArrayLayer;
    OUTPUT:
	RETVAL

uint32_t
arrayLayerCount(THIS, __value = NO_INIT)
	WGPUTextureViewDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->arrayLayerCount = __value;
	RETVAL = THIS->arrayLayerCount;
    OUTPUT:
	RETVAL

WGPUTextureAspect
aspect(THIS, __value = NO_INIT)
	WGPUTextureViewDescriptor * THIS
	WGPUTextureAspect __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->aspect = __value;
	RETVAL = THIS->aspect;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPURenderPassDepthStencilAttachment		PREFIX = wgpu

WGPURenderPassDepthStencilAttachment *
_to_ptr(THIS)
	WGPURenderPassDepthStencilAttachment THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPURenderPassDepthStencilAttachment")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPURenderPassDepthStencilAttachment *)s;
	}
	else
	    croak("THIS is not of type WGPURenderPassDepthStencilAttachment");
    OUTPUT:
	RETVAL

WGPURenderPassDepthStencilAttachment
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPURenderPassDepthStencilAttachmentPtr		PREFIX = wgpu

WGPUTextureView
view(THIS, __value = NO_INIT)
	WGPURenderPassDepthStencilAttachment * THIS
	WGPUTextureView __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->view = __value;
	RETVAL = THIS->view;
    OUTPUT:
	RETVAL

WGPULoadOp
depthLoadOp(THIS, __value = NO_INIT)
	WGPURenderPassDepthStencilAttachment * THIS
	WGPULoadOp __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->depthLoadOp = __value;
	RETVAL = THIS->depthLoadOp;
    OUTPUT:
	RETVAL

WGPUStoreOp
depthStoreOp(THIS, __value = NO_INIT)
	WGPURenderPassDepthStencilAttachment * THIS
	WGPUStoreOp __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->depthStoreOp = __value;
	RETVAL = THIS->depthStoreOp;
    OUTPUT:
	RETVAL

float
depthClearValue(THIS, __value = NO_INIT)
	WGPURenderPassDepthStencilAttachment * THIS
	float __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->depthClearValue = __value;
	RETVAL = THIS->depthClearValue;
    OUTPUT:
	RETVAL

int
depthReadOnly(THIS, __value = NO_INIT)
	WGPURenderPassDepthStencilAttachment * THIS
	int __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->depthReadOnly = __value;
	RETVAL = THIS->depthReadOnly;
    OUTPUT:
	RETVAL

WGPULoadOp
stencilLoadOp(THIS, __value = NO_INIT)
	WGPURenderPassDepthStencilAttachment * THIS
	WGPULoadOp __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->stencilLoadOp = __value;
	RETVAL = THIS->stencilLoadOp;
    OUTPUT:
	RETVAL

WGPUStoreOp
stencilStoreOp(THIS, __value = NO_INIT)
	WGPURenderPassDepthStencilAttachment * THIS
	WGPUStoreOp __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->stencilStoreOp = __value;
	RETVAL = THIS->stencilStoreOp;
    OUTPUT:
	RETVAL

uint32_t
stencilClearValue(THIS, __value = NO_INIT)
	WGPURenderPassDepthStencilAttachment * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->stencilClearValue = __value;
	RETVAL = THIS->stencilClearValue;
    OUTPUT:
	RETVAL

int
stencilReadOnly(THIS, __value = NO_INIT)
	WGPURenderPassDepthStencilAttachment * THIS
	int __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->stencilReadOnly = __value;
	RETVAL = THIS->stencilReadOnly;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUSurfaceDescriptorFromWaylandSurface		PREFIX = wgpu

WGPUSurfaceDescriptorFromWaylandSurface *
_to_ptr(THIS)
	WGPUSurfaceDescriptorFromWaylandSurface THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUSurfaceDescriptorFromWaylandSurface")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUSurfaceDescriptorFromWaylandSurface *)s;
	}
	else
	    croak("THIS is not of type WGPUSurfaceDescriptorFromWaylandSurface");
    OUTPUT:
	RETVAL

WGPUSurfaceDescriptorFromWaylandSurface
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUSurfaceDescriptorFromWaylandSurfacePtr		PREFIX = wgpu

WGPUChainedStruct *
chain(THIS, __value = NO_INIT)
	WGPUSurfaceDescriptorFromWaylandSurface * THIS
	WGPUChainedStruct __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->chain = __value;
	RETVAL = &(THIS->chain);
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUBindGroupLayoutEntryPtr		PREFIX = wgpu

uint32_t
binding(THIS, __value = NO_INIT)
	WGPUBindGroupLayoutEntry * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->binding = __value;
	RETVAL = THIS->binding;
    OUTPUT:
	RETVAL

WGPUShaderStageFlags
visibility(THIS, __value = NO_INIT)
	WGPUBindGroupLayoutEntry * THIS
	WGPUShaderStageFlags __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->visibility = __value;
	RETVAL = THIS->visibility;
    OUTPUT:
	RETVAL

WGPUBufferBindingLayout *
buffer(THIS, __value = NO_INIT)
	WGPUBindGroupLayoutEntry * THIS
	WGPUBufferBindingLayout __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->buffer = __value;
	RETVAL = &(THIS->buffer);
    OUTPUT:
	RETVAL

WGPUSamplerBindingLayout *
sampler(THIS, __value = NO_INIT)
	WGPUBindGroupLayoutEntry * THIS
	WGPUSamplerBindingLayout __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->sampler = __value;
	RETVAL = &(THIS->sampler);
    OUTPUT:
	RETVAL

WGPUTextureBindingLayout *
texture(THIS, __value = NO_INIT)
	WGPUBindGroupLayoutEntry * THIS
	WGPUTextureBindingLayout __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->texture = __value;
	RETVAL = &(THIS->texture);
    OUTPUT:
	RETVAL

WGPUStorageTextureBindingLayout *
storageTexture(THIS, __value = NO_INIT)
	WGPUBindGroupLayoutEntry * THIS
	WGPUStorageTextureBindingLayout __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->storageTexture = __value;
	RETVAL = &(THIS->storageTexture);
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUTextureDescriptor		PREFIX = wgpu

WGPUTextureDescriptor *
_to_ptr(THIS)
	WGPUTextureDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUTextureDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUTextureDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUTextureDescriptor");
    OUTPUT:
	RETVAL

WGPUTextureDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUTextureDescriptorPtr		PREFIX = wgpu

WGPUTextureUsageFlags
usage(THIS, __value = NO_INIT)
	WGPUTextureDescriptor * THIS
	WGPUTextureUsageFlags __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->usage = __value;
	RETVAL = THIS->usage;
    OUTPUT:
	RETVAL

WGPUTextureDimension
dimension(THIS, __value = NO_INIT)
	WGPUTextureDescriptor * THIS
	WGPUTextureDimension __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->dimension = __value;
	RETVAL = THIS->dimension;
    OUTPUT:
	RETVAL

WGPUExtent3D *
size(THIS, __value = NO_INIT)
	WGPUTextureDescriptor * THIS
	WGPUExtent3D __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->size = __value;
	RETVAL = &(THIS->size);
    OUTPUT:
	RETVAL

WGPUTextureFormat
format(THIS, __value = NO_INIT)
	WGPUTextureDescriptor * THIS
	WGPUTextureFormat __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->format = __value;
	RETVAL = THIS->format;
    OUTPUT:
	RETVAL

uint32_t
mipLevelCount(THIS, __value = NO_INIT)
	WGPUTextureDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->mipLevelCount = __value;
	RETVAL = THIS->mipLevelCount;
    OUTPUT:
	RETVAL

uint32_t
sampleCount(THIS, __value = NO_INIT)
	WGPUTextureDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->sampleCount = __value;
	RETVAL = THIS->sampleCount;
    OUTPUT:
	RETVAL

uint32_t
viewFormatCount(THIS, __value = NO_INIT)
	WGPUTextureDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->viewFormatCount = __value;
	RETVAL = THIS->viewFormatCount;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUSwapChainDescriptor		PREFIX = wgpu

WGPUSwapChainDescriptor *
_to_ptr(THIS)
	WGPUSwapChainDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUSwapChainDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUSwapChainDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUSwapChainDescriptor");
    OUTPUT:
	RETVAL

WGPUSwapChainDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUSwapChainDescriptorPtr		PREFIX = wgpu

WGPUTextureUsageFlags
usage(THIS, __value = NO_INIT)
	WGPUSwapChainDescriptor * THIS
	WGPUTextureUsageFlags __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->usage = __value;
	RETVAL = THIS->usage;
    OUTPUT:
	RETVAL

WGPUTextureFormat
format(THIS, __value = NO_INIT)
	WGPUSwapChainDescriptor * THIS
	WGPUTextureFormat __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->format = __value;
	RETVAL = THIS->format;
    OUTPUT:
	RETVAL

uint32_t
width(THIS, __value = NO_INIT)
	WGPUSwapChainDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->width = __value;
	RETVAL = THIS->width;
    OUTPUT:
	RETVAL

uint32_t
height(THIS, __value = NO_INIT)
	WGPUSwapChainDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->height = __value;
	RETVAL = THIS->height;
    OUTPUT:
	RETVAL

WGPUPresentMode
presentMode(THIS, __value = NO_INIT)
	WGPUSwapChainDescriptor * THIS
	WGPUPresentMode __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->presentMode = __value;
	RETVAL = THIS->presentMode;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUVertexBufferLayout		PREFIX = wgpu

WGPUVertexBufferLayout *
_to_ptr(THIS)
	WGPUVertexBufferLayout THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUVertexBufferLayout")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUVertexBufferLayout *)s;
	}
	else
	    croak("THIS is not of type WGPUVertexBufferLayout");
    OUTPUT:
	RETVAL

WGPUVertexBufferLayout
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUVertexBufferLayoutPtr		PREFIX = wgpu

uint64_t
arrayStride(THIS, __value = NO_INIT)
	WGPUVertexBufferLayout * THIS
	uint64_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->arrayStride = __value;
	RETVAL = THIS->arrayStride;
    OUTPUT:
	RETVAL

WGPUVertexStepMode
stepMode(THIS, __value = NO_INIT)
	WGPUVertexBufferLayout * THIS
	WGPUVertexStepMode __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->stepMode = __value;
	RETVAL = THIS->stepMode;
    OUTPUT:
	RETVAL

uint32_t
attributeCount(THIS, __value = NO_INIT)
	WGPUVertexBufferLayout * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->attributeCount = __value;
	RETVAL = THIS->attributeCount;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPURequestAdapterOptions		PREFIX = wgpu

WGPURequestAdapterOptions *
_to_ptr(THIS)
	WGPURequestAdapterOptions THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPURequestAdapterOptions")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPURequestAdapterOptions *)s;
	}
	else
	    croak("THIS is not of type WGPURequestAdapterOptions");
    OUTPUT:
	RETVAL

WGPURequestAdapterOptions
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPURequestAdapterOptionsPtr		PREFIX = wgpu

WGPUSurface
compatibleSurface(THIS, __value = NO_INIT)
	WGPURequestAdapterOptions * THIS
	WGPUSurface __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->compatibleSurface = __value;
	RETVAL = THIS->compatibleSurface;
    OUTPUT:
	RETVAL

WGPUPowerPreference
powerPreference(THIS, __value = NO_INIT)
	WGPURequestAdapterOptions * THIS
	WGPUPowerPreference __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->powerPreference = __value;
	RETVAL = THIS->powerPreference;
    OUTPUT:
	RETVAL

int
forceFallbackAdapter(THIS, __value = NO_INIT)
	WGPURequestAdapterOptions * THIS
	int __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->forceFallbackAdapter = __value;
	RETVAL = THIS->forceFallbackAdapter;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUCompilationInfo		PREFIX = wgpu

WGPUCompilationInfo *
_to_ptr(THIS)
	WGPUCompilationInfo THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUCompilationInfo")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUCompilationInfo *)s;
	}
	else
	    croak("THIS is not of type WGPUCompilationInfo");
    OUTPUT:
	RETVAL

WGPUCompilationInfo
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUCompilationInfoPtr		PREFIX = wgpu

uint32_t
messageCount(THIS, __value = NO_INIT)
	WGPUCompilationInfo * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->messageCount = __value;
	RETVAL = THIS->messageCount;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUSurfaceDescriptorFromWindowsHWND		PREFIX = wgpu

WGPUSurfaceDescriptorFromWindowsHWND *
_to_ptr(THIS)
	WGPUSurfaceDescriptorFromWindowsHWND THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUSurfaceDescriptorFromWindowsHWND")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUSurfaceDescriptorFromWindowsHWND *)s;
	}
	else
	    croak("THIS is not of type WGPUSurfaceDescriptorFromWindowsHWND");
    OUTPUT:
	RETVAL

WGPUSurfaceDescriptorFromWindowsHWND
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUSurfaceDescriptorFromWindowsHWNDPtr		PREFIX = wgpu

WGPUChainedStruct *
chain(THIS, __value = NO_INIT)
	WGPUSurfaceDescriptorFromWindowsHWND * THIS
	WGPUChainedStruct __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->chain = __value;
	RETVAL = &(THIS->chain);
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUMultisampleState		PREFIX = wgpu

WGPUMultisampleState *
_to_ptr(THIS)
	WGPUMultisampleState THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUMultisampleState")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUMultisampleState *)s;
	}
	else
	    croak("THIS is not of type WGPUMultisampleState");
    OUTPUT:
	RETVAL

WGPUMultisampleState
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUMultisampleStatePtr		PREFIX = wgpu

uint32_t
count(THIS, __value = NO_INIT)
	WGPUMultisampleState * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->count = __value;
	RETVAL = THIS->count;
    OUTPUT:
	RETVAL

uint32_t
mask(THIS, __value = NO_INIT)
	WGPUMultisampleState * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->mask = __value;
	RETVAL = THIS->mask;
    OUTPUT:
	RETVAL

int
alphaToCoverageEnabled(THIS, __value = NO_INIT)
	WGPUMultisampleState * THIS
	int __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->alphaToCoverageEnabled = __value;
	RETVAL = THIS->alphaToCoverageEnabled;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUShaderModuleSPIRVDescriptor		PREFIX = wgpu

WGPUShaderModuleSPIRVDescriptor *
_to_ptr(THIS)
	WGPUShaderModuleSPIRVDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUShaderModuleSPIRVDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUShaderModuleSPIRVDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUShaderModuleSPIRVDescriptor");
    OUTPUT:
	RETVAL

WGPUShaderModuleSPIRVDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUShaderModuleSPIRVDescriptorPtr		PREFIX = wgpu

WGPUChainedStruct *
chain(THIS, __value = NO_INIT)
	WGPUShaderModuleSPIRVDescriptor * THIS
	WGPUChainedStruct __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->chain = __value;
	RETVAL = &(THIS->chain);
    OUTPUT:
	RETVAL

uint32_t
codeSize(THIS, __value = NO_INIT)
	WGPUShaderModuleSPIRVDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->codeSize = __value;
	RETVAL = THIS->codeSize;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUColor		PREFIX = wgpu

WGPUColor *
_to_ptr(THIS)
	WGPUColor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUColor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUColor *)s;
	}
	else
	    croak("THIS is not of type WGPUColor");
    OUTPUT:
	RETVAL

WGPUColor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUColorPtr		PREFIX = wgpu

double
r(THIS, __value = NO_INIT)
	WGPUColor * THIS
	double __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->r = __value;
	RETVAL = THIS->r;
    OUTPUT:
	RETVAL

double
g(THIS, __value = NO_INIT)
	WGPUColor * THIS
	double __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->g = __value;
	RETVAL = THIS->g;
    OUTPUT:
	RETVAL

double
b(THIS, __value = NO_INIT)
	WGPUColor * THIS
	double __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->b = __value;
	RETVAL = THIS->b;
    OUTPUT:
	RETVAL

double
a(THIS, __value = NO_INIT)
	WGPUColor * THIS
	double __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->a = __value;
	RETVAL = THIS->a;
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUSurfaceDescriptorFromMetalLayer		PREFIX = wgpu

WGPUSurfaceDescriptorFromMetalLayer *
_to_ptr(THIS)
	WGPUSurfaceDescriptorFromMetalLayer THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUSurfaceDescriptorFromMetalLayer")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUSurfaceDescriptorFromMetalLayer *)s;
	}
	else
	    croak("THIS is not of type WGPUSurfaceDescriptorFromMetalLayer");
    OUTPUT:
	RETVAL

WGPUSurfaceDescriptorFromMetalLayer
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUSurfaceDescriptorFromMetalLayerPtr		PREFIX = wgpu

WGPUChainedStruct *
chain(THIS, __value = NO_INIT)
	WGPUSurfaceDescriptorFromMetalLayer * THIS
	WGPUChainedStruct __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->chain = __value;
	RETVAL = &(THIS->chain);
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUColorTargetState		PREFIX = wgpu

WGPUColorTargetState *
_to_ptr(THIS)
	WGPUColorTargetState THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUColorTargetState")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUColorTargetState *)s;
	}
	else
	    croak("THIS is not of type WGPUColorTargetState");
    OUTPUT:
	RETVAL

WGPUColorTargetState
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUColorTargetStatePtr		PREFIX = wgpu

WGPUTextureFormat
format(THIS, __value = NO_INIT)
	WGPUColorTargetState * THIS
	WGPUTextureFormat __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->format = __value;
	RETVAL = THIS->format;
    OUTPUT:
	RETVAL

WGPUColorWriteMaskFlags
writeMask(THIS, __value = NO_INIT)
	WGPUColorTargetState * THIS
	WGPUColorWriteMaskFlags __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->writeMask = __value;
	RETVAL = THIS->writeMask;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUStencilFaceState		PREFIX = wgpu

WGPUStencilFaceState *
_to_ptr(THIS)
	WGPUStencilFaceState THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUStencilFaceState")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUStencilFaceState *)s;
	}
	else
	    croak("THIS is not of type WGPUStencilFaceState");
    OUTPUT:
	RETVAL

WGPUStencilFaceState
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUStencilFaceStatePtr		PREFIX = wgpu

WGPUCompareFunction
compare(THIS, __value = NO_INIT)
	WGPUStencilFaceState * THIS
	WGPUCompareFunction __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->compare = __value;
	RETVAL = THIS->compare;
    OUTPUT:
	RETVAL

WGPUStencilOperation
failOp(THIS, __value = NO_INIT)
	WGPUStencilFaceState * THIS
	WGPUStencilOperation __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->failOp = __value;
	RETVAL = THIS->failOp;
    OUTPUT:
	RETVAL

WGPUStencilOperation
depthFailOp(THIS, __value = NO_INIT)
	WGPUStencilFaceState * THIS
	WGPUStencilOperation __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->depthFailOp = __value;
	RETVAL = THIS->depthFailOp;
    OUTPUT:
	RETVAL

WGPUStencilOperation
passOp(THIS, __value = NO_INIT)
	WGPUStencilFaceState * THIS
	WGPUStencilOperation __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->passOp = __value;
	RETVAL = THIS->passOp;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUDepthStencilState		PREFIX = wgpu

WGPUDepthStencilState *
_to_ptr(THIS)
	WGPUDepthStencilState THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUDepthStencilState")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUDepthStencilState *)s;
	}
	else
	    croak("THIS is not of type WGPUDepthStencilState");
    OUTPUT:
	RETVAL

WGPUDepthStencilState
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUDepthStencilStatePtr		PREFIX = wgpu

WGPUTextureFormat
format(THIS, __value = NO_INIT)
	WGPUDepthStencilState * THIS
	WGPUTextureFormat __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->format = __value;
	RETVAL = THIS->format;
    OUTPUT:
	RETVAL

int
depthWriteEnabled(THIS, __value = NO_INIT)
	WGPUDepthStencilState * THIS
	int __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->depthWriteEnabled = __value;
	RETVAL = THIS->depthWriteEnabled;
    OUTPUT:
	RETVAL

WGPUCompareFunction
depthCompare(THIS, __value = NO_INIT)
	WGPUDepthStencilState * THIS
	WGPUCompareFunction __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->depthCompare = __value;
	RETVAL = THIS->depthCompare;
    OUTPUT:
	RETVAL

WGPUStencilFaceState *
stencilFront(THIS, __value = NO_INIT)
	WGPUDepthStencilState * THIS
	WGPUStencilFaceState __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->stencilFront = __value;
	RETVAL = &(THIS->stencilFront);
    OUTPUT:
	RETVAL

WGPUStencilFaceState *
stencilBack(THIS, __value = NO_INIT)
	WGPUDepthStencilState * THIS
	WGPUStencilFaceState __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->stencilBack = __value;
	RETVAL = &(THIS->stencilBack);
    OUTPUT:
	RETVAL

uint32_t
stencilReadMask(THIS, __value = NO_INIT)
	WGPUDepthStencilState * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->stencilReadMask = __value;
	RETVAL = THIS->stencilReadMask;
    OUTPUT:
	RETVAL

uint32_t
stencilWriteMask(THIS, __value = NO_INIT)
	WGPUDepthStencilState * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->stencilWriteMask = __value;
	RETVAL = THIS->stencilWriteMask;
    OUTPUT:
	RETVAL

int32_t
depthBias(THIS, __value = NO_INIT)
	WGPUDepthStencilState * THIS
	int32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->depthBias = __value;
	RETVAL = THIS->depthBias;
    OUTPUT:
	RETVAL

float
depthBiasSlopeScale(THIS, __value = NO_INIT)
	WGPUDepthStencilState * THIS
	float __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->depthBiasSlopeScale = __value;
	RETVAL = THIS->depthBiasSlopeScale;
    OUTPUT:
	RETVAL

float
depthBiasClamp(THIS, __value = NO_INIT)
	WGPUDepthStencilState * THIS
	float __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->depthBiasClamp = __value;
	RETVAL = THIS->depthBiasClamp;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUShaderModuleDescriptor		PREFIX = wgpu

WGPUShaderModuleDescriptor *
_to_ptr(THIS)
	WGPUShaderModuleDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUShaderModuleDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUShaderModuleDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUShaderModuleDescriptor");
    OUTPUT:
	RETVAL

WGPUShaderModuleDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUShaderModuleDescriptorPtr		PREFIX = wgpu

uint32_t
hintCount(THIS, __value = NO_INIT)
	WGPUShaderModuleDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->hintCount = __value;
	RETVAL = THIS->hintCount;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUProgrammableStageDescriptor		PREFIX = wgpu

WGPUProgrammableStageDescriptor *
_to_ptr(THIS)
	WGPUProgrammableStageDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUProgrammableStageDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUProgrammableStageDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUProgrammableStageDescriptor");
    OUTPUT:
	RETVAL

WGPUProgrammableStageDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUProgrammableStageDescriptorPtr		PREFIX = wgpu

WGPUShaderModule
module(THIS, __value = NO_INIT)
	WGPUProgrammableStageDescriptor * THIS
	WGPUShaderModule __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->module = __value;
	RETVAL = THIS->module;
    OUTPUT:
	RETVAL

uint32_t
constantCount(THIS, __value = NO_INIT)
	WGPUProgrammableStageDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->constantCount = __value;
	RETVAL = THIS->constantCount;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUDeviceDescriptor		PREFIX = wgpu

WGPUDeviceDescriptor *
_to_ptr(THIS)
	WGPUDeviceDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUDeviceDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUDeviceDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUDeviceDescriptor");
    OUTPUT:
	RETVAL

WGPUDeviceDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUDeviceDescriptorPtr		PREFIX = wgpu

uint32_t
requiredFeaturesCount(THIS, __value = NO_INIT)
	WGPUDeviceDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->requiredFeaturesCount = __value;
	RETVAL = THIS->requiredFeaturesCount;
    OUTPUT:
	RETVAL

WGPUQueueDescriptor *
defaultQueue(THIS, __value = NO_INIT)
	WGPUDeviceDescriptor * THIS
	WGPUQueueDescriptor __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->defaultQueue = __value;
	RETVAL = &(THIS->defaultQueue);
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUConstantEntry		PREFIX = wgpu

WGPUConstantEntry *
_to_ptr(THIS)
	WGPUConstantEntry THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUConstantEntry")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUConstantEntry *)s;
	}
	else
	    croak("THIS is not of type WGPUConstantEntry");
    OUTPUT:
	RETVAL

WGPUConstantEntry
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUConstantEntryPtr		PREFIX = wgpu

double
value(THIS, __value = NO_INIT)
	WGPUConstantEntry * THIS
	double __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->value = __value;
	RETVAL = THIS->value;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPURenderBundleEncoderDescriptor		PREFIX = wgpu

WGPURenderBundleEncoderDescriptor *
_to_ptr(THIS)
	WGPURenderBundleEncoderDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPURenderBundleEncoderDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPURenderBundleEncoderDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPURenderBundleEncoderDescriptor");
    OUTPUT:
	RETVAL

WGPURenderBundleEncoderDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPURenderBundleEncoderDescriptorPtr		PREFIX = wgpu

uint32_t
colorFormatsCount(THIS, __value = NO_INIT)
	WGPURenderBundleEncoderDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->colorFormatsCount = __value;
	RETVAL = THIS->colorFormatsCount;
    OUTPUT:
	RETVAL

WGPUTextureFormat
depthStencilFormat(THIS, __value = NO_INIT)
	WGPURenderBundleEncoderDescriptor * THIS
	WGPUTextureFormat __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->depthStencilFormat = __value;
	RETVAL = THIS->depthStencilFormat;
    OUTPUT:
	RETVAL

uint32_t
sampleCount(THIS, __value = NO_INIT)
	WGPURenderBundleEncoderDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->sampleCount = __value;
	RETVAL = THIS->sampleCount;
    OUTPUT:
	RETVAL

int
depthReadOnly(THIS, __value = NO_INIT)
	WGPURenderBundleEncoderDescriptor * THIS
	int __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->depthReadOnly = __value;
	RETVAL = THIS->depthReadOnly;
    OUTPUT:
	RETVAL

int
stencilReadOnly(THIS, __value = NO_INIT)
	WGPURenderBundleEncoderDescriptor * THIS
	int __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->stencilReadOnly = __value;
	RETVAL = THIS->stencilReadOnly;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUCommandBufferDescriptor		PREFIX = wgpu

WGPUCommandBufferDescriptor *
_to_ptr(THIS)
	WGPUCommandBufferDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUCommandBufferDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUCommandBufferDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUCommandBufferDescriptor");
    OUTPUT:
	RETVAL

WGPUCommandBufferDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUCommandBufferDescriptorPtr		PREFIX = wgpu


MODULE = WebGPU::Direct		PACKAGE = WGPUBindGroupEntry		PREFIX = wgpu

WGPUBindGroupEntry *
_to_ptr(THIS)
	WGPUBindGroupEntry THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUBindGroupEntry")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUBindGroupEntry *)s;
	}
	else
	    croak("THIS is not of type WGPUBindGroupEntry");
    OUTPUT:
	RETVAL

WGPUBindGroupEntry
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUBindGroupEntryPtr		PREFIX = wgpu

uint32_t
binding(THIS, __value = NO_INIT)
	WGPUBindGroupEntry * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->binding = __value;
	RETVAL = THIS->binding;
    OUTPUT:
	RETVAL

WGPUBuffer
buffer(THIS, __value = NO_INIT)
	WGPUBindGroupEntry * THIS
	WGPUBuffer __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->buffer = __value;
	RETVAL = THIS->buffer;
    OUTPUT:
	RETVAL

uint64_t
offset(THIS, __value = NO_INIT)
	WGPUBindGroupEntry * THIS
	uint64_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->offset = __value;
	RETVAL = THIS->offset;
    OUTPUT:
	RETVAL

uint64_t
size(THIS, __value = NO_INIT)
	WGPUBindGroupEntry * THIS
	uint64_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->size = __value;
	RETVAL = THIS->size;
    OUTPUT:
	RETVAL

WGPUSampler
sampler(THIS, __value = NO_INIT)
	WGPUBindGroupEntry * THIS
	WGPUSampler __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->sampler = __value;
	RETVAL = THIS->sampler;
    OUTPUT:
	RETVAL

WGPUTextureView
textureView(THIS, __value = NO_INIT)
	WGPUBindGroupEntry * THIS
	WGPUTextureView __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->textureView = __value;
	RETVAL = THIS->textureView;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUSurfaceDescriptor		PREFIX = wgpu

WGPUSurfaceDescriptor *
_to_ptr(THIS)
	WGPUSurfaceDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUSurfaceDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUSurfaceDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUSurfaceDescriptor");
    OUTPUT:
	RETVAL

WGPUSurfaceDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUSurfaceDescriptorPtr		PREFIX = wgpu


MODULE = WebGPU::Direct		PACKAGE = WGPUImageCopyTexture		PREFIX = wgpu

WGPUImageCopyTexture *
_to_ptr(THIS)
	WGPUImageCopyTexture THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUImageCopyTexture")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUImageCopyTexture *)s;
	}
	else
	    croak("THIS is not of type WGPUImageCopyTexture");
    OUTPUT:
	RETVAL

WGPUImageCopyTexture
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUImageCopyTexturePtr		PREFIX = wgpu

WGPUTexture
texture(THIS, __value = NO_INIT)
	WGPUImageCopyTexture * THIS
	WGPUTexture __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->texture = __value;
	RETVAL = THIS->texture;
    OUTPUT:
	RETVAL

uint32_t
mipLevel(THIS, __value = NO_INIT)
	WGPUImageCopyTexture * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->mipLevel = __value;
	RETVAL = THIS->mipLevel;
    OUTPUT:
	RETVAL

WGPUOrigin3D *
origin(THIS, __value = NO_INIT)
	WGPUImageCopyTexture * THIS
	WGPUOrigin3D __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->origin = __value;
	RETVAL = &(THIS->origin);
    OUTPUT:
	RETVAL

WGPUTextureAspect
aspect(THIS, __value = NO_INIT)
	WGPUImageCopyTexture * THIS
	WGPUTextureAspect __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->aspect = __value;
	RETVAL = THIS->aspect;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUPrimitiveState		PREFIX = wgpu

WGPUPrimitiveState *
_to_ptr(THIS)
	WGPUPrimitiveState THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUPrimitiveState")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUPrimitiveState *)s;
	}
	else
	    croak("THIS is not of type WGPUPrimitiveState");
    OUTPUT:
	RETVAL

WGPUPrimitiveState
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUPrimitiveStatePtr		PREFIX = wgpu

WGPUPrimitiveTopology
topology(THIS, __value = NO_INIT)
	WGPUPrimitiveState * THIS
	WGPUPrimitiveTopology __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->topology = __value;
	RETVAL = THIS->topology;
    OUTPUT:
	RETVAL

WGPUIndexFormat
stripIndexFormat(THIS, __value = NO_INIT)
	WGPUPrimitiveState * THIS
	WGPUIndexFormat __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->stripIndexFormat = __value;
	RETVAL = THIS->stripIndexFormat;
    OUTPUT:
	RETVAL

WGPUFrontFace
frontFace(THIS, __value = NO_INIT)
	WGPUPrimitiveState * THIS
	WGPUFrontFace __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->frontFace = __value;
	RETVAL = THIS->frontFace;
    OUTPUT:
	RETVAL

WGPUCullMode
cullMode(THIS, __value = NO_INIT)
	WGPUPrimitiveState * THIS
	WGPUCullMode __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->cullMode = __value;
	RETVAL = THIS->cullMode;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUSurfaceDescriptorFromCanvasHTMLSelector		PREFIX = wgpu

WGPUSurfaceDescriptorFromCanvasHTMLSelector *
_to_ptr(THIS)
	WGPUSurfaceDescriptorFromCanvasHTMLSelector THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUSurfaceDescriptorFromCanvasHTMLSelector")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUSurfaceDescriptorFromCanvasHTMLSelector *)s;
	}
	else
	    croak("THIS is not of type WGPUSurfaceDescriptorFromCanvasHTMLSelector");
    OUTPUT:
	RETVAL

WGPUSurfaceDescriptorFromCanvasHTMLSelector
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUSurfaceDescriptorFromCanvasHTMLSelectorPtr		PREFIX = wgpu

WGPUChainedStruct *
chain(THIS, __value = NO_INIT)
	WGPUSurfaceDescriptorFromCanvasHTMLSelector * THIS
	WGPUChainedStruct __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->chain = __value;
	RETVAL = &(THIS->chain);
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUShaderModuleCompilationHint		PREFIX = wgpu

WGPUShaderModuleCompilationHint *
_to_ptr(THIS)
	WGPUShaderModuleCompilationHint THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUShaderModuleCompilationHint")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUShaderModuleCompilationHint *)s;
	}
	else
	    croak("THIS is not of type WGPUShaderModuleCompilationHint");
    OUTPUT:
	RETVAL

WGPUShaderModuleCompilationHint
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUShaderModuleCompilationHintPtr		PREFIX = wgpu

WGPUPipelineLayout
layout(THIS, __value = NO_INIT)
	WGPUShaderModuleCompilationHint * THIS
	WGPUPipelineLayout __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->layout = __value;
	RETVAL = THIS->layout;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUExtent3D		PREFIX = wgpu

WGPUExtent3D *
_to_ptr(THIS)
	WGPUExtent3D THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUExtent3D")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUExtent3D *)s;
	}
	else
	    croak("THIS is not of type WGPUExtent3D");
    OUTPUT:
	RETVAL

WGPUExtent3D
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUExtent3DPtr		PREFIX = wgpu

uint32_t
width(THIS, __value = NO_INIT)
	WGPUExtent3D * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->width = __value;
	RETVAL = THIS->width;
    OUTPUT:
	RETVAL

uint32_t
height(THIS, __value = NO_INIT)
	WGPUExtent3D * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->height = __value;
	RETVAL = THIS->height;
    OUTPUT:
	RETVAL

uint32_t
depthOrArrayLayers(THIS, __value = NO_INIT)
	WGPUExtent3D * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->depthOrArrayLayers = __value;
	RETVAL = THIS->depthOrArrayLayers;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUSupportedLimits		PREFIX = wgpu

WGPUSupportedLimits *
_to_ptr(THIS)
	WGPUSupportedLimits THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUSupportedLimits")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUSupportedLimits *)s;
	}
	else
	    croak("THIS is not of type WGPUSupportedLimits");
    OUTPUT:
	RETVAL

WGPUSupportedLimits
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUSupportedLimitsPtr		PREFIX = wgpu

WGPULimits *
limits(THIS, __value = NO_INIT)
	WGPUSupportedLimits * THIS
	WGPULimits __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->limits = __value;
	RETVAL = &(THIS->limits);
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUComputePipelineDescriptor		PREFIX = wgpu

WGPUComputePipelineDescriptor *
_to_ptr(THIS)
	WGPUComputePipelineDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUComputePipelineDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUComputePipelineDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUComputePipelineDescriptor");
    OUTPUT:
	RETVAL

WGPUComputePipelineDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUComputePipelineDescriptorPtr		PREFIX = wgpu

WGPUPipelineLayout
layout(THIS, __value = NO_INIT)
	WGPUComputePipelineDescriptor * THIS
	WGPUPipelineLayout __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->layout = __value;
	RETVAL = THIS->layout;
    OUTPUT:
	RETVAL

WGPUProgrammableStageDescriptor *
compute(THIS, __value = NO_INIT)
	WGPUComputePipelineDescriptor * THIS
	WGPUProgrammableStageDescriptor __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->compute = __value;
	RETVAL = &(THIS->compute);
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPURenderBundleDescriptor		PREFIX = wgpu

WGPURenderBundleDescriptor *
_to_ptr(THIS)
	WGPURenderBundleDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPURenderBundleDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPURenderBundleDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPURenderBundleDescriptor");
    OUTPUT:
	RETVAL

WGPURenderBundleDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPURenderBundleDescriptorPtr		PREFIX = wgpu


MODULE = WebGPU::Direct		PACKAGE = WGPUBlendComponent		PREFIX = wgpu

WGPUBlendComponent *
_to_ptr(THIS)
	WGPUBlendComponent THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUBlendComponent")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUBlendComponent *)s;
	}
	else
	    croak("THIS is not of type WGPUBlendComponent");
    OUTPUT:
	RETVAL

WGPUBlendComponent
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUBlendComponentPtr		PREFIX = wgpu

WGPUBlendOperation
operation(THIS, __value = NO_INIT)
	WGPUBlendComponent * THIS
	WGPUBlendOperation __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->operation = __value;
	RETVAL = THIS->operation;
    OUTPUT:
	RETVAL

WGPUBlendFactor
srcFactor(THIS, __value = NO_INIT)
	WGPUBlendComponent * THIS
	WGPUBlendFactor __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->srcFactor = __value;
	RETVAL = THIS->srcFactor;
    OUTPUT:
	RETVAL

WGPUBlendFactor
dstFactor(THIS, __value = NO_INIT)
	WGPUBlendComponent * THIS
	WGPUBlendFactor __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->dstFactor = __value;
	RETVAL = THIS->dstFactor;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUPipelineLayoutDescriptor		PREFIX = wgpu

WGPUPipelineLayoutDescriptor *
_to_ptr(THIS)
	WGPUPipelineLayoutDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUPipelineLayoutDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUPipelineLayoutDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUPipelineLayoutDescriptor");
    OUTPUT:
	RETVAL

WGPUPipelineLayoutDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUPipelineLayoutDescriptorPtr		PREFIX = wgpu

uint32_t
bindGroupLayoutCount(THIS, __value = NO_INIT)
	WGPUPipelineLayoutDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->bindGroupLayoutCount = __value;
	RETVAL = THIS->bindGroupLayoutCount;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUTextureDataLayout		PREFIX = wgpu

WGPUTextureDataLayout *
_to_ptr(THIS)
	WGPUTextureDataLayout THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUTextureDataLayout")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUTextureDataLayout *)s;
	}
	else
	    croak("THIS is not of type WGPUTextureDataLayout");
    OUTPUT:
	RETVAL

WGPUTextureDataLayout
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUTextureDataLayoutPtr		PREFIX = wgpu

uint64_t
offset(THIS, __value = NO_INIT)
	WGPUTextureDataLayout * THIS
	uint64_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->offset = __value;
	RETVAL = THIS->offset;
    OUTPUT:
	RETVAL

uint32_t
bytesPerRow(THIS, __value = NO_INIT)
	WGPUTextureDataLayout * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->bytesPerRow = __value;
	RETVAL = THIS->bytesPerRow;
    OUTPUT:
	RETVAL

uint32_t
rowsPerImage(THIS, __value = NO_INIT)
	WGPUTextureDataLayout * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->rowsPerImage = __value;
	RETVAL = THIS->rowsPerImage;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUSurfaceDescriptorFromXcbWindow		PREFIX = wgpu

WGPUSurfaceDescriptorFromXcbWindow *
_to_ptr(THIS)
	WGPUSurfaceDescriptorFromXcbWindow THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUSurfaceDescriptorFromXcbWindow")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUSurfaceDescriptorFromXcbWindow *)s;
	}
	else
	    croak("THIS is not of type WGPUSurfaceDescriptorFromXcbWindow");
    OUTPUT:
	RETVAL

WGPUSurfaceDescriptorFromXcbWindow
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUSurfaceDescriptorFromXcbWindowPtr		PREFIX = wgpu

WGPUChainedStruct *
chain(THIS, __value = NO_INIT)
	WGPUSurfaceDescriptorFromXcbWindow * THIS
	WGPUChainedStruct __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->chain = __value;
	RETVAL = &(THIS->chain);
    OUTPUT:
	RETVAL

uint32_t
window(THIS, __value = NO_INIT)
	WGPUSurfaceDescriptorFromXcbWindow * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->window = __value;
	RETVAL = THIS->window;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUImageCopyBuffer		PREFIX = wgpu

WGPUImageCopyBuffer *
_to_ptr(THIS)
	WGPUImageCopyBuffer THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUImageCopyBuffer")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUImageCopyBuffer *)s;
	}
	else
	    croak("THIS is not of type WGPUImageCopyBuffer");
    OUTPUT:
	RETVAL

WGPUImageCopyBuffer
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUImageCopyBufferPtr		PREFIX = wgpu

WGPUTextureDataLayout *
layout(THIS, __value = NO_INIT)
	WGPUImageCopyBuffer * THIS
	WGPUTextureDataLayout __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->layout = __value;
	RETVAL = &(THIS->layout);
    OUTPUT:
	RETVAL

WGPUBuffer
buffer(THIS, __value = NO_INIT)
	WGPUImageCopyBuffer * THIS
	WGPUBuffer __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->buffer = __value;
	RETVAL = THIS->buffer;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPURequiredLimits		PREFIX = wgpu

WGPURequiredLimits *
_to_ptr(THIS)
	WGPURequiredLimits THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPURequiredLimits")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPURequiredLimits *)s;
	}
	else
	    croak("THIS is not of type WGPURequiredLimits");
    OUTPUT:
	RETVAL

WGPURequiredLimits
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPURequiredLimitsPtr		PREFIX = wgpu

WGPULimits *
limits(THIS, __value = NO_INIT)
	WGPURequiredLimits * THIS
	WGPULimits __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->limits = __value;
	RETVAL = &(THIS->limits);
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUStorageTextureBindingLayout		PREFIX = wgpu

WGPUStorageTextureBindingLayout *
_to_ptr(THIS)
	WGPUStorageTextureBindingLayout THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUStorageTextureBindingLayout")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUStorageTextureBindingLayout *)s;
	}
	else
	    croak("THIS is not of type WGPUStorageTextureBindingLayout");
    OUTPUT:
	RETVAL

WGPUStorageTextureBindingLayout
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUStorageTextureBindingLayoutPtr		PREFIX = wgpu

WGPUStorageTextureAccess
access(THIS, __value = NO_INIT)
	WGPUStorageTextureBindingLayout * THIS
	WGPUStorageTextureAccess __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->access = __value;
	RETVAL = THIS->access;
    OUTPUT:
	RETVAL

WGPUTextureFormat
format(THIS, __value = NO_INIT)
	WGPUStorageTextureBindingLayout * THIS
	WGPUTextureFormat __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->format = __value;
	RETVAL = THIS->format;
    OUTPUT:
	RETVAL

WGPUTextureViewDimension
viewDimension(THIS, __value = NO_INIT)
	WGPUStorageTextureBindingLayout * THIS
	WGPUTextureViewDimension __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->viewDimension = __value;
	RETVAL = THIS->viewDimension;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUQuerySetDescriptor		PREFIX = wgpu

WGPUQuerySetDescriptor *
_to_ptr(THIS)
	WGPUQuerySetDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUQuerySetDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUQuerySetDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUQuerySetDescriptor");
    OUTPUT:
	RETVAL

WGPUQuerySetDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUQuerySetDescriptorPtr		PREFIX = wgpu

WGPUQueryType
type(THIS, __value = NO_INIT)
	WGPUQuerySetDescriptor * THIS
	WGPUQueryType __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->type = __value;
	RETVAL = THIS->type;
    OUTPUT:
	RETVAL

uint32_t
count(THIS, __value = NO_INIT)
	WGPUQuerySetDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->count = __value;
	RETVAL = THIS->count;
    OUTPUT:
	RETVAL

uint32_t
pipelineStatisticsCount(THIS, __value = NO_INIT)
	WGPUQuerySetDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->pipelineStatisticsCount = __value;
	RETVAL = THIS->pipelineStatisticsCount;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUChainedStructOut		PREFIX = wgpu

WGPUChainedStructOut *
_to_ptr(THIS)
	WGPUChainedStructOut THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUChainedStructOut")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUChainedStructOut *)s;
	}
	else
	    croak("THIS is not of type WGPUChainedStructOut");
    OUTPUT:
	RETVAL

WGPUChainedStructOut
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUChainedStructOutPtr		PREFIX = wgpu

WGPUSType
sType(THIS, __value = NO_INIT)
	WGPUChainedStructOut * THIS
	WGPUSType __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->sType = __value;
	RETVAL = THIS->sType;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUBlendState		PREFIX = wgpu

WGPUBlendState *
_to_ptr(THIS)
	WGPUBlendState THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUBlendState")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUBlendState *)s;
	}
	else
	    croak("THIS is not of type WGPUBlendState");
    OUTPUT:
	RETVAL

WGPUBlendState
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUBlendStatePtr		PREFIX = wgpu

WGPUBlendComponent *
color(THIS, __value = NO_INIT)
	WGPUBlendState * THIS
	WGPUBlendComponent __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->color = __value;
	RETVAL = &(THIS->color);
    OUTPUT:
	RETVAL

WGPUBlendComponent *
alpha(THIS, __value = NO_INIT)
	WGPUBlendState * THIS
	WGPUBlendComponent __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->alpha = __value;
	RETVAL = &(THIS->alpha);
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUCommandEncoderDescriptor		PREFIX = wgpu

WGPUCommandEncoderDescriptor *
_to_ptr(THIS)
	WGPUCommandEncoderDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUCommandEncoderDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUCommandEncoderDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUCommandEncoderDescriptor");
    OUTPUT:
	RETVAL

WGPUCommandEncoderDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUCommandEncoderDescriptorPtr		PREFIX = wgpu


MODULE = WebGPU::Direct		PACKAGE = WGPUCompilationMessage		PREFIX = wgpu

WGPUCompilationMessage *
_to_ptr(THIS)
	WGPUCompilationMessage THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUCompilationMessage")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUCompilationMessage *)s;
	}
	else
	    croak("THIS is not of type WGPUCompilationMessage");
    OUTPUT:
	RETVAL

WGPUCompilationMessage
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUCompilationMessagePtr		PREFIX = wgpu

WGPUCompilationMessageType
type(THIS, __value = NO_INIT)
	WGPUCompilationMessage * THIS
	WGPUCompilationMessageType __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->type = __value;
	RETVAL = THIS->type;
    OUTPUT:
	RETVAL

uint64_t
lineNum(THIS, __value = NO_INIT)
	WGPUCompilationMessage * THIS
	uint64_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->lineNum = __value;
	RETVAL = THIS->lineNum;
    OUTPUT:
	RETVAL

uint64_t
linePos(THIS, __value = NO_INIT)
	WGPUCompilationMessage * THIS
	uint64_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->linePos = __value;
	RETVAL = THIS->linePos;
    OUTPUT:
	RETVAL

uint64_t
offset(THIS, __value = NO_INIT)
	WGPUCompilationMessage * THIS
	uint64_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->offset = __value;
	RETVAL = THIS->offset;
    OUTPUT:
	RETVAL

uint64_t
length(THIS, __value = NO_INIT)
	WGPUCompilationMessage * THIS
	uint64_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->length = __value;
	RETVAL = THIS->length;
    OUTPUT:
	RETVAL

uint64_t
utf16LinePos(THIS, __value = NO_INIT)
	WGPUCompilationMessage * THIS
	uint64_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->utf16LinePos = __value;
	RETVAL = THIS->utf16LinePos;
    OUTPUT:
	RETVAL

uint64_t
utf16Offset(THIS, __value = NO_INIT)
	WGPUCompilationMessage * THIS
	uint64_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->utf16Offset = __value;
	RETVAL = THIS->utf16Offset;
    OUTPUT:
	RETVAL

uint64_t
utf16Length(THIS, __value = NO_INIT)
	WGPUCompilationMessage * THIS
	uint64_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->utf16Length = __value;
	RETVAL = THIS->utf16Length;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPURenderPassDescriptor		PREFIX = wgpu

WGPURenderPassDescriptor *
_to_ptr(THIS)
	WGPURenderPassDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPURenderPassDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPURenderPassDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPURenderPassDescriptor");
    OUTPUT:
	RETVAL

WGPURenderPassDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPURenderPassDescriptorPtr		PREFIX = wgpu

uint32_t
colorAttachmentCount(THIS, __value = NO_INIT)
	WGPURenderPassDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->colorAttachmentCount = __value;
	RETVAL = THIS->colorAttachmentCount;
    OUTPUT:
	RETVAL

WGPUQuerySet
occlusionQuerySet(THIS, __value = NO_INIT)
	WGPURenderPassDescriptor * THIS
	WGPUQuerySet __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->occlusionQuerySet = __value;
	RETVAL = THIS->occlusionQuerySet;
    OUTPUT:
	RETVAL

uint32_t
timestampWriteCount(THIS, __value = NO_INIT)
	WGPURenderPassDescriptor * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->timestampWriteCount = __value;
	RETVAL = THIS->timestampWriteCount;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUTextureBindingLayout		PREFIX = wgpu

WGPUTextureBindingLayout *
_to_ptr(THIS)
	WGPUTextureBindingLayout THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUTextureBindingLayout")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUTextureBindingLayout *)s;
	}
	else
	    croak("THIS is not of type WGPUTextureBindingLayout");
    OUTPUT:
	RETVAL

WGPUTextureBindingLayout
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUTextureBindingLayoutPtr		PREFIX = wgpu

WGPUTextureSampleType
sampleType(THIS, __value = NO_INIT)
	WGPUTextureBindingLayout * THIS
	WGPUTextureSampleType __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->sampleType = __value;
	RETVAL = THIS->sampleType;
    OUTPUT:
	RETVAL

WGPUTextureViewDimension
viewDimension(THIS, __value = NO_INIT)
	WGPUTextureBindingLayout * THIS
	WGPUTextureViewDimension __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->viewDimension = __value;
	RETVAL = THIS->viewDimension;
    OUTPUT:
	RETVAL

int
multisampled(THIS, __value = NO_INIT)
	WGPUTextureBindingLayout * THIS
	int __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->multisampled = __value;
	RETVAL = THIS->multisampled;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUComputePassTimestampWrite		PREFIX = wgpu

WGPUComputePassTimestampWrite *
_to_ptr(THIS)
	WGPUComputePassTimestampWrite THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUComputePassTimestampWrite")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUComputePassTimestampWrite *)s;
	}
	else
	    croak("THIS is not of type WGPUComputePassTimestampWrite");
    OUTPUT:
	RETVAL

WGPUComputePassTimestampWrite
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUComputePassTimestampWritePtr		PREFIX = wgpu

WGPUQuerySet
querySet(THIS, __value = NO_INIT)
	WGPUComputePassTimestampWrite * THIS
	WGPUQuerySet __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->querySet = __value;
	RETVAL = THIS->querySet;
    OUTPUT:
	RETVAL

uint32_t
queryIndex(THIS, __value = NO_INIT)
	WGPUComputePassTimestampWrite * THIS
	uint32_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->queryIndex = __value;
	RETVAL = THIS->queryIndex;
    OUTPUT:
	RETVAL

WGPUComputePassTimestampLocation
location(THIS, __value = NO_INIT)
	WGPUComputePassTimestampWrite * THIS
	WGPUComputePassTimestampLocation __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->location = __value;
	RETVAL = THIS->location;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUInstanceDescriptor		PREFIX = wgpu

WGPUInstanceDescriptor *
_to_ptr(THIS)
	WGPUInstanceDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUInstanceDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUInstanceDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUInstanceDescriptor");
    OUTPUT:
	RETVAL

WGPUInstanceDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUInstanceDescriptorPtr		PREFIX = wgpu


MODULE = WebGPU::Direct		PACKAGE = WGPUSamplerDescriptor		PREFIX = wgpu

WGPUSamplerDescriptor *
_to_ptr(THIS)
	WGPUSamplerDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUSamplerDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUSamplerDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUSamplerDescriptor");
    OUTPUT:
	RETVAL

WGPUSamplerDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUSamplerDescriptorPtr		PREFIX = wgpu

WGPUAddressMode
addressModeU(THIS, __value = NO_INIT)
	WGPUSamplerDescriptor * THIS
	WGPUAddressMode __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->addressModeU = __value;
	RETVAL = THIS->addressModeU;
    OUTPUT:
	RETVAL

WGPUAddressMode
addressModeV(THIS, __value = NO_INIT)
	WGPUSamplerDescriptor * THIS
	WGPUAddressMode __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->addressModeV = __value;
	RETVAL = THIS->addressModeV;
    OUTPUT:
	RETVAL

WGPUAddressMode
addressModeW(THIS, __value = NO_INIT)
	WGPUSamplerDescriptor * THIS
	WGPUAddressMode __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->addressModeW = __value;
	RETVAL = THIS->addressModeW;
    OUTPUT:
	RETVAL

WGPUFilterMode
magFilter(THIS, __value = NO_INIT)
	WGPUSamplerDescriptor * THIS
	WGPUFilterMode __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->magFilter = __value;
	RETVAL = THIS->magFilter;
    OUTPUT:
	RETVAL

WGPUFilterMode
minFilter(THIS, __value = NO_INIT)
	WGPUSamplerDescriptor * THIS
	WGPUFilterMode __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->minFilter = __value;
	RETVAL = THIS->minFilter;
    OUTPUT:
	RETVAL

WGPUMipmapFilterMode
mipmapFilter(THIS, __value = NO_INIT)
	WGPUSamplerDescriptor * THIS
	WGPUMipmapFilterMode __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->mipmapFilter = __value;
	RETVAL = THIS->mipmapFilter;
    OUTPUT:
	RETVAL

float
lodMinClamp(THIS, __value = NO_INIT)
	WGPUSamplerDescriptor * THIS
	float __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->lodMinClamp = __value;
	RETVAL = THIS->lodMinClamp;
    OUTPUT:
	RETVAL

float
lodMaxClamp(THIS, __value = NO_INIT)
	WGPUSamplerDescriptor * THIS
	float __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->lodMaxClamp = __value;
	RETVAL = THIS->lodMaxClamp;
    OUTPUT:
	RETVAL

WGPUCompareFunction
compare(THIS, __value = NO_INIT)
	WGPUSamplerDescriptor * THIS
	WGPUCompareFunction __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->compare = __value;
	RETVAL = THIS->compare;
    OUTPUT:
	RETVAL

uint16_t
maxAnisotropy(THIS, __value = NO_INIT)
	WGPUSamplerDescriptor * THIS
	uint16_t __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->maxAnisotropy = __value;
	RETVAL = THIS->maxAnisotropy;
    OUTPUT:
	RETVAL


MODULE = WebGPU::Direct		PACKAGE = WGPUShaderModuleWGSLDescriptor		PREFIX = wgpu

WGPUShaderModuleWGSLDescriptor *
_to_ptr(THIS)
	WGPUShaderModuleWGSLDescriptor THIS = NO_INIT
    PROTOTYPE: $
    CODE:
	if (sv_derived_from(ST(0), "WGPUShaderModuleWGSLDescriptor")) {
	    STRLEN len;
	    char *s = SvPV((SV*)SvRV(ST(0)), len);
	    if (len != sizeof(THIS))
		croak("Size %zu of packed data != expected %zu",
			len, sizeof(THIS));
	    RETVAL = (WGPUShaderModuleWGSLDescriptor *)s;
	}
	else
	    croak("THIS is not of type WGPUShaderModuleWGSLDescriptor");
    OUTPUT:
	RETVAL

WGPUShaderModuleWGSLDescriptor
new(CLASS)
	char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
	Zero((void*)&RETVAL, sizeof(RETVAL), char);
    OUTPUT:
	RETVAL

MODULE = WebGPU::Direct		PACKAGE = WGPUShaderModuleWGSLDescriptorPtr		PREFIX = wgpu

WGPUChainedStruct *
chain(THIS, __value = NO_INIT)
	WGPUShaderModuleWGSLDescriptor * THIS
	WGPUChainedStruct __value
    PROTOTYPE: $;$
    CODE:
	if (items > 1)
	    THIS->chain = __value;
	RETVAL = &(THIS->chain);
    OUTPUT:
	RETVAL

