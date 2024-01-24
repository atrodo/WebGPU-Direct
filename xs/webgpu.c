#define CB_GUARD 0x25b3eea3
typedef struct cb_data {
    I32 guard1;
    CV *perlsub;
    SV *data;
    I32 guard2;
} cb_data;

SV *WGPUAdapter__wrap( WGPUAdapter  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::Adapter"), n);
}

typedef SV* WebGPU__Direct__Adapter;
SV *WGPUBindGroup__wrap( WGPUBindGroup  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::BindGroup"), n);
}

typedef SV* WebGPU__Direct__BindGroup;
SV *WGPUBindGroupLayout__wrap( WGPUBindGroupLayout  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::BindGroupLayout"), n);
}

typedef SV* WebGPU__Direct__BindGroupLayout;
SV *WGPUBuffer__wrap( WGPUBuffer  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::Buffer"), n);
}

typedef SV* WebGPU__Direct__Buffer;
SV *WGPUCommandBuffer__wrap( WGPUCommandBuffer  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::CommandBuffer"), n);
}

typedef SV* WebGPU__Direct__CommandBuffer;
SV *WGPUCommandEncoder__wrap( WGPUCommandEncoder  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::CommandEncoder"), n);
}

typedef SV* WebGPU__Direct__CommandEncoder;
SV *WGPUComputePassEncoder__wrap( WGPUComputePassEncoder  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::ComputePassEncoder"), n);
}

typedef SV* WebGPU__Direct__ComputePassEncoder;
SV *WGPUComputePipeline__wrap( WGPUComputePipeline  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::ComputePipeline"), n);
}

typedef SV* WebGPU__Direct__ComputePipeline;
SV *WGPUDevice__wrap( WGPUDevice  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::Device"), n);
}

typedef SV* WebGPU__Direct__Device;
SV *WGPUInstance__wrap( WGPUInstance  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::Instance"), n);
}

typedef SV* WebGPU__Direct__Instance;
SV *WGPUPipelineLayout__wrap( WGPUPipelineLayout  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::PipelineLayout"), n);
}

typedef SV* WebGPU__Direct__PipelineLayout;
SV *WGPUQuerySet__wrap( WGPUQuerySet  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::QuerySet"), n);
}

typedef SV* WebGPU__Direct__QuerySet;
SV *WGPUQueue__wrap( WGPUQueue  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::Queue"), n);
}

typedef SV* WebGPU__Direct__Queue;
SV *WGPURenderBundle__wrap( WGPURenderBundle  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::RenderBundle"), n);
}

typedef SV* WebGPU__Direct__RenderBundle;
SV *WGPURenderBundleEncoder__wrap( WGPURenderBundleEncoder  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::RenderBundleEncoder"), n);
}

typedef SV* WebGPU__Direct__RenderBundleEncoder;
SV *WGPURenderPassEncoder__wrap( WGPURenderPassEncoder  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::RenderPassEncoder"), n);
}

typedef SV* WebGPU__Direct__RenderPassEncoder;
SV *WGPURenderPipeline__wrap( WGPURenderPipeline  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::RenderPipeline"), n);
}

typedef SV* WebGPU__Direct__RenderPipeline;
SV *WGPUSampler__wrap( WGPUSampler  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::Sampler"), n);
}

typedef SV* WebGPU__Direct__Sampler;
SV *WGPUShaderModule__wrap( WGPUShaderModule  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::ShaderModule"), n);
}

typedef SV* WebGPU__Direct__ShaderModule;
SV *WGPUSurface__wrap( WGPUSurface  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::Surface"), n);
}

typedef SV* WebGPU__Direct__Surface;
SV *WGPUTexture__wrap( WGPUTexture  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::Texture"), n);
}

typedef SV* WebGPU__Direct__Texture;
SV *WGPUTextureView__wrap( WGPUTextureView  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::TextureView"), n);
}

typedef SV* WebGPU__Direct__TextureView;
SV *WGPUBufferMapCallback__wrap( WGPUBufferMapCallback  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::BufferMapCallback"), n);
}

typedef SV* WebGPU__Direct__BufferMapCallback;
SV *WGPUCompilationInfoCallback__wrap( WGPUCompilationInfoCallback  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::CompilationInfoCallback"), n);
}

typedef SV* WebGPU__Direct__CompilationInfoCallback;
SV *WGPUCreateComputePipelineAsyncCallback__wrap( WGPUCreateComputePipelineAsyncCallback  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::CreateComputePipelineAsyncCallback"), n);
}

typedef SV* WebGPU__Direct__CreateComputePipelineAsyncCallback;
SV *WGPUCreateRenderPipelineAsyncCallback__wrap( WGPUCreateRenderPipelineAsyncCallback  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::CreateRenderPipelineAsyncCallback"), n);
}

typedef SV* WebGPU__Direct__CreateRenderPipelineAsyncCallback;
SV *WGPUDeviceLostCallback__wrap( WGPUDeviceLostCallback  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::DeviceLostCallback"), n);
}

typedef SV* WebGPU__Direct__DeviceLostCallback;
SV *WGPUErrorCallback__wrap( WGPUErrorCallback  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::ErrorCallback"), n);
}

typedef SV* WebGPU__Direct__ErrorCallback;
SV *WGPUProc__wrap( WGPUProc  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::Proc"), n);
}

typedef SV* WebGPU__Direct__Proc;
SV *WGPUQueueWorkDoneCallback__wrap( WGPUQueueWorkDoneCallback  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::QueueWorkDoneCallback"), n);
}

typedef SV* WebGPU__Direct__QueueWorkDoneCallback;
SV *WGPURequestAdapterCallback__wrap( WGPURequestAdapterCallback  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::RequestAdapterCallback"), n);
}

typedef SV* WebGPU__Direct__RequestAdapterCallback;
SV *WGPURequestDeviceCallback__wrap( WGPURequestDeviceCallback  n )
{
  return _new_opaque(newSVpvs("WebGPU::Direct::RequestDeviceCallback"), n);
}

typedef SV* WebGPU__Direct__RequestDeviceCallback;
void WebGPU__Direct__ChainedStruct__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ChainedStruct"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ChainedStruct",
      "THIS", "WebGPU::Direct::ChainedStruct");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUChainedStruct *n = (WGPUChainedStruct *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUChainedStruct);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "next", 4, (void **) &n->next, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_enum(aTHX_ h, "sType", 5,  &n->sType, newSVpvs("WebGPU::Direct::SType"));

  
}

void WebGPU__Direct__ChainedStruct__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ChainedStruct"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ChainedStruct",
      "THIS", "WebGPU::Direct::ChainedStruct");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUChainedStruct *n = (WGPUChainedStruct *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUChainedStruct);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "next", 4, (void **) &n->next, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_enum(aTHX_ h, "sType", 5,  &n->sType, newSVpvs("WebGPU::Direct::SType"));

}

SV *WGPUChainedStruct__wrap( const WGPUChainedStruct * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::ChainedStruct", GV_ADD));
  WebGPU__Direct__ChainedStruct__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__ChainedStruct;
void WebGPU__Direct__ChainedStructOut__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ChainedStructOut"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ChainedStructOut",
      "THIS", "WebGPU::Direct::ChainedStructOut");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUChainedStructOut *n = (WGPUChainedStructOut *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUChainedStructOut);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "next", 4, (void **) &n->next, newSVpvs("WebGPU::Direct::ChainedStructOut"));
  _pack_enum(aTHX_ h, "sType", 5,  &n->sType, newSVpvs("WebGPU::Direct::SType"));

  
}

void WebGPU__Direct__ChainedStructOut__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ChainedStructOut"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ChainedStructOut",
      "THIS", "WebGPU::Direct::ChainedStructOut");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUChainedStructOut *n = (WGPUChainedStructOut *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUChainedStructOut);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "next", 4, (void **) &n->next, newSVpvs("WebGPU::Direct::ChainedStructOut"));
  _unpack_enum(aTHX_ h, "sType", 5,  &n->sType, newSVpvs("WebGPU::Direct::SType"));

}

SV *WGPUChainedStructOut__wrap( const WGPUChainedStructOut * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::ChainedStructOut", GV_ADD));
  WebGPU__Direct__ChainedStructOut__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__ChainedStructOut;
void WebGPU__Direct__AdapterProperties__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::AdapterProperties"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::AdapterProperties",
      "THIS", "WebGPU::Direct::AdapterProperties");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUAdapterProperties);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStructOut"));
  _pack_uint32_t(aTHX_ h, "vendorID", 8,  &n->vendorID, NULL);
  _pack_str(aTHX_ h, "vendorName", 10,  &n->vendorName, NULL);
  _pack_str(aTHX_ h, "architecture", 12,  &n->architecture, NULL);
  _pack_uint32_t(aTHX_ h, "deviceID", 8,  &n->deviceID, NULL);
  _pack_str(aTHX_ h, "name", 4,  &n->name, NULL);
  _pack_str(aTHX_ h, "driverDescription", 17,  &n->driverDescription, NULL);
  _pack_enum(aTHX_ h, "adapterType", 11,  &n->adapterType, newSVpvs("WebGPU::Direct::AdapterType"));
  _pack_enum(aTHX_ h, "backendType", 11,  &n->backendType, newSVpvs("WebGPU::Direct::BackendType"));

  
}

void WebGPU__Direct__AdapterProperties__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::AdapterProperties"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::AdapterProperties",
      "THIS", "WebGPU::Direct::AdapterProperties");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUAdapterProperties *n = (WGPUAdapterProperties *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUAdapterProperties);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStructOut"));
  _unpack_uint32_t(aTHX_ h, "vendorID", 8,  &n->vendorID, NULL);
  _unpack_str(aTHX_ h, "vendorName", 10,  &n->vendorName, NULL);
  _unpack_str(aTHX_ h, "architecture", 12,  &n->architecture, NULL);
  _unpack_uint32_t(aTHX_ h, "deviceID", 8,  &n->deviceID, NULL);
  _unpack_str(aTHX_ h, "name", 4,  &n->name, NULL);
  _unpack_str(aTHX_ h, "driverDescription", 17,  &n->driverDescription, NULL);
  _unpack_enum(aTHX_ h, "adapterType", 11,  &n->adapterType, newSVpvs("WebGPU::Direct::AdapterType"));
  _unpack_enum(aTHX_ h, "backendType", 11,  &n->backendType, newSVpvs("WebGPU::Direct::BackendType"));

}

SV *WGPUAdapterProperties__wrap( const WGPUAdapterProperties * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::AdapterProperties", GV_ADD));
  WebGPU__Direct__AdapterProperties__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__AdapterProperties;
void WebGPU__Direct__BindGroupEntry__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::BindGroupEntry"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::BindGroupEntry",
      "THIS", "WebGPU::Direct::BindGroupEntry");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUBindGroupEntry *n = (WGPUBindGroupEntry *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUBindGroupEntry);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_uint32_t(aTHX_ h, "binding", 7,  &n->binding, NULL);
  _pack_opaque(aTHX_ h, "buffer", 6, (void **) &n->buffer, newSVpvs("WebGPU::Direct::Buffer"));
  _pack_uint64_t(aTHX_ h, "offset", 6,  &n->offset, NULL);
  _pack_uint64_t(aTHX_ h, "size", 4,  &n->size, NULL);
  _pack_opaque(aTHX_ h, "sampler", 7, (void **) &n->sampler, newSVpvs("WebGPU::Direct::Sampler"));
  _pack_opaque(aTHX_ h, "textureView", 11, (void **) &n->textureView, newSVpvs("WebGPU::Direct::TextureView"));

  
}

void WebGPU__Direct__BindGroupEntry__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::BindGroupEntry"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::BindGroupEntry",
      "THIS", "WebGPU::Direct::BindGroupEntry");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUBindGroupEntry *n = (WGPUBindGroupEntry *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUBindGroupEntry);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_uint32_t(aTHX_ h, "binding", 7,  &n->binding, NULL);
  _unpack_opaque(aTHX_ h, "buffer", 6, (void **) &n->buffer, newSVpvs("WebGPU::Direct::Buffer"));
  _unpack_uint64_t(aTHX_ h, "offset", 6,  &n->offset, NULL);
  _unpack_uint64_t(aTHX_ h, "size", 4,  &n->size, NULL);
  _unpack_opaque(aTHX_ h, "sampler", 7, (void **) &n->sampler, newSVpvs("WebGPU::Direct::Sampler"));
  _unpack_opaque(aTHX_ h, "textureView", 11, (void **) &n->textureView, newSVpvs("WebGPU::Direct::TextureView"));

}

SV *WGPUBindGroupEntry__wrap( const WGPUBindGroupEntry * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::BindGroupEntry", GV_ADD));
  WebGPU__Direct__BindGroupEntry__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__BindGroupEntry;
void WebGPU__Direct__BlendComponent__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::BlendComponent"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::BlendComponent",
      "THIS", "WebGPU::Direct::BlendComponent");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUBlendComponent *n = (WGPUBlendComponent *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUBlendComponent);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_enum(aTHX_ h, "operation", 9,  &n->operation, newSVpvs("WebGPU::Direct::BlendOperation"));
  _pack_enum(aTHX_ h, "srcFactor", 9,  &n->srcFactor, newSVpvs("WebGPU::Direct::BlendFactor"));
  _pack_enum(aTHX_ h, "dstFactor", 9,  &n->dstFactor, newSVpvs("WebGPU::Direct::BlendFactor"));

  
}

void WebGPU__Direct__BlendComponent__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::BlendComponent"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::BlendComponent",
      "THIS", "WebGPU::Direct::BlendComponent");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUBlendComponent *n = (WGPUBlendComponent *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUBlendComponent);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_enum(aTHX_ h, "operation", 9,  &n->operation, newSVpvs("WebGPU::Direct::BlendOperation"));
  _unpack_enum(aTHX_ h, "srcFactor", 9,  &n->srcFactor, newSVpvs("WebGPU::Direct::BlendFactor"));
  _unpack_enum(aTHX_ h, "dstFactor", 9,  &n->dstFactor, newSVpvs("WebGPU::Direct::BlendFactor"));

}

SV *WGPUBlendComponent__wrap( const WGPUBlendComponent * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::BlendComponent", GV_ADD));
  WebGPU__Direct__BlendComponent__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__BlendComponent;
void WebGPU__Direct__BufferBindingLayout__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::BufferBindingLayout"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::BufferBindingLayout",
      "THIS", "WebGPU::Direct::BufferBindingLayout");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUBufferBindingLayout *n = (WGPUBufferBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUBufferBindingLayout);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_enum(aTHX_ h, "type", 4,  &n->type, newSVpvs("WebGPU::Direct::BufferBindingType"));
  _pack_uint32_t(aTHX_ h, "hasDynamicOffset", 16,  &n->hasDynamicOffset, NULL);
  _pack_uint64_t(aTHX_ h, "minBindingSize", 14,  &n->minBindingSize, NULL);

  
}

void WebGPU__Direct__BufferBindingLayout__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::BufferBindingLayout"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::BufferBindingLayout",
      "THIS", "WebGPU::Direct::BufferBindingLayout");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUBufferBindingLayout *n = (WGPUBufferBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUBufferBindingLayout);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_enum(aTHX_ h, "type", 4,  &n->type, newSVpvs("WebGPU::Direct::BufferBindingType"));
  _unpack_uint32_t(aTHX_ h, "hasDynamicOffset", 16,  &n->hasDynamicOffset, NULL);
  _unpack_uint64_t(aTHX_ h, "minBindingSize", 14,  &n->minBindingSize, NULL);

}

SV *WGPUBufferBindingLayout__wrap( const WGPUBufferBindingLayout * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::BufferBindingLayout", GV_ADD));
  WebGPU__Direct__BufferBindingLayout__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__BufferBindingLayout;
void WebGPU__Direct__BufferDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::BufferDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::BufferDescriptor",
      "THIS", "WebGPU::Direct::BufferDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUBufferDescriptor *n = (WGPUBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUBufferDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _pack_uint32_t(aTHX_ h, "usage", 5,  &n->usage, NULL);
  _pack_uint64_t(aTHX_ h, "size", 4,  &n->size, NULL);
  _pack_uint32_t(aTHX_ h, "mappedAtCreation", 16,  &n->mappedAtCreation, NULL);

  
}

void WebGPU__Direct__BufferDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::BufferDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::BufferDescriptor",
      "THIS", "WebGPU::Direct::BufferDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUBufferDescriptor *n = (WGPUBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUBufferDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _unpack_uint32_t(aTHX_ h, "usage", 5,  &n->usage, NULL);
  _unpack_uint64_t(aTHX_ h, "size", 4,  &n->size, NULL);
  _unpack_uint32_t(aTHX_ h, "mappedAtCreation", 16,  &n->mappedAtCreation, NULL);

}

SV *WGPUBufferDescriptor__wrap( const WGPUBufferDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::BufferDescriptor", GV_ADD));
  WebGPU__Direct__BufferDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__BufferDescriptor;
void WebGPU__Direct__Color__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::Color"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::Color",
      "THIS", "WebGPU::Direct::Color");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUColor *n = (WGPUColor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUColor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_double(aTHX_ h, "r", 1,  &n->r, NULL);
  _pack_double(aTHX_ h, "g", 1,  &n->g, NULL);
  _pack_double(aTHX_ h, "b", 1,  &n->b, NULL);
  _pack_double(aTHX_ h, "a", 1,  &n->a, NULL);

  
}

void WebGPU__Direct__Color__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::Color"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::Color",
      "THIS", "WebGPU::Direct::Color");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUColor *n = (WGPUColor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUColor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_double(aTHX_ h, "r", 1,  &n->r, NULL);
  _unpack_double(aTHX_ h, "g", 1,  &n->g, NULL);
  _unpack_double(aTHX_ h, "b", 1,  &n->b, NULL);
  _unpack_double(aTHX_ h, "a", 1,  &n->a, NULL);

}

SV *WGPUColor__wrap( const WGPUColor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::Color", GV_ADD));
  WebGPU__Direct__Color__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__Color;
void WebGPU__Direct__CommandBufferDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::CommandBufferDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::CommandBufferDescriptor",
      "THIS", "WebGPU::Direct::CommandBufferDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUCommandBufferDescriptor *n = (WGPUCommandBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUCommandBufferDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);

  
}

void WebGPU__Direct__CommandBufferDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::CommandBufferDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::CommandBufferDescriptor",
      "THIS", "WebGPU::Direct::CommandBufferDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUCommandBufferDescriptor *n = (WGPUCommandBufferDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUCommandBufferDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);

}

SV *WGPUCommandBufferDescriptor__wrap( const WGPUCommandBufferDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::CommandBufferDescriptor", GV_ADD));
  WebGPU__Direct__CommandBufferDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__CommandBufferDescriptor;
void WebGPU__Direct__CommandEncoderDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::CommandEncoderDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::CommandEncoderDescriptor",
      "THIS", "WebGPU::Direct::CommandEncoderDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUCommandEncoderDescriptor *n = (WGPUCommandEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUCommandEncoderDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);

  
}

void WebGPU__Direct__CommandEncoderDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::CommandEncoderDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::CommandEncoderDescriptor",
      "THIS", "WebGPU::Direct::CommandEncoderDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUCommandEncoderDescriptor *n = (WGPUCommandEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUCommandEncoderDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);

}

SV *WGPUCommandEncoderDescriptor__wrap( const WGPUCommandEncoderDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::CommandEncoderDescriptor", GV_ADD));
  WebGPU__Direct__CommandEncoderDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__CommandEncoderDescriptor;
void WebGPU__Direct__CompilationMessage__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::CompilationMessage"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::CompilationMessage",
      "THIS", "WebGPU::Direct::CompilationMessage");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUCompilationMessage);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "message", 7,  &n->message, NULL);
  _pack_enum(aTHX_ h, "type", 4,  &n->type, newSVpvs("WebGPU::Direct::CompilationMessageType"));
  _pack_uint64_t(aTHX_ h, "lineNum", 7,  &n->lineNum, NULL);
  _pack_uint64_t(aTHX_ h, "linePos", 7,  &n->linePos, NULL);
  _pack_uint64_t(aTHX_ h, "offset", 6,  &n->offset, NULL);
  _pack_uint64_t(aTHX_ h, "length", 6,  &n->length, NULL);
  _pack_uint64_t(aTHX_ h, "utf16LinePos", 12,  &n->utf16LinePos, NULL);
  _pack_uint64_t(aTHX_ h, "utf16Offset", 11,  &n->utf16Offset, NULL);
  _pack_uint64_t(aTHX_ h, "utf16Length", 11,  &n->utf16Length, NULL);

  
}

void WebGPU__Direct__CompilationMessage__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::CompilationMessage"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::CompilationMessage",
      "THIS", "WebGPU::Direct::CompilationMessage");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUCompilationMessage *n = (WGPUCompilationMessage *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUCompilationMessage);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "message", 7,  &n->message, NULL);
  _unpack_enum(aTHX_ h, "type", 4,  &n->type, newSVpvs("WebGPU::Direct::CompilationMessageType"));
  _unpack_uint64_t(aTHX_ h, "lineNum", 7,  &n->lineNum, NULL);
  _unpack_uint64_t(aTHX_ h, "linePos", 7,  &n->linePos, NULL);
  _unpack_uint64_t(aTHX_ h, "offset", 6,  &n->offset, NULL);
  _unpack_uint64_t(aTHX_ h, "length", 6,  &n->length, NULL);
  _unpack_uint64_t(aTHX_ h, "utf16LinePos", 12,  &n->utf16LinePos, NULL);
  _unpack_uint64_t(aTHX_ h, "utf16Offset", 11,  &n->utf16Offset, NULL);
  _unpack_uint64_t(aTHX_ h, "utf16Length", 11,  &n->utf16Length, NULL);

}

SV *WGPUCompilationMessage__wrap( const WGPUCompilationMessage * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::CompilationMessage", GV_ADD));
  WebGPU__Direct__CompilationMessage__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__CompilationMessage;
void WebGPU__Direct__ComputePassTimestampWrites__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ComputePassTimestampWrites"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ComputePassTimestampWrites",
      "THIS", "WebGPU::Direct::ComputePassTimestampWrites");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUComputePassTimestampWrites *n = (WGPUComputePassTimestampWrites *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUComputePassTimestampWrites);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_opaque(aTHX_ h, "querySet", 8, (void **) &n->querySet, newSVpvs("WebGPU::Direct::QuerySet"));
  _pack_uint32_t(aTHX_ h, "beginningOfPassWriteIndex", 25,  &n->beginningOfPassWriteIndex, NULL);
  _pack_uint32_t(aTHX_ h, "endOfPassWriteIndex", 19,  &n->endOfPassWriteIndex, NULL);

  
}

void WebGPU__Direct__ComputePassTimestampWrites__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ComputePassTimestampWrites"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ComputePassTimestampWrites",
      "THIS", "WebGPU::Direct::ComputePassTimestampWrites");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUComputePassTimestampWrites *n = (WGPUComputePassTimestampWrites *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUComputePassTimestampWrites);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_opaque(aTHX_ h, "querySet", 8, (void **) &n->querySet, newSVpvs("WebGPU::Direct::QuerySet"));
  _unpack_uint32_t(aTHX_ h, "beginningOfPassWriteIndex", 25,  &n->beginningOfPassWriteIndex, NULL);
  _unpack_uint32_t(aTHX_ h, "endOfPassWriteIndex", 19,  &n->endOfPassWriteIndex, NULL);

}

SV *WGPUComputePassTimestampWrites__wrap( const WGPUComputePassTimestampWrites * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::ComputePassTimestampWrites", GV_ADD));
  WebGPU__Direct__ComputePassTimestampWrites__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__ComputePassTimestampWrites;
void WebGPU__Direct__ConstantEntry__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ConstantEntry"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ConstantEntry",
      "THIS", "WebGPU::Direct::ConstantEntry");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUConstantEntry *n = (WGPUConstantEntry *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUConstantEntry);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "key", 3,  &n->key, NULL);
  _pack_double(aTHX_ h, "value", 5,  &n->value, NULL);

  
}

void WebGPU__Direct__ConstantEntry__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ConstantEntry"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ConstantEntry",
      "THIS", "WebGPU::Direct::ConstantEntry");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUConstantEntry *n = (WGPUConstantEntry *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUConstantEntry);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "key", 3,  &n->key, NULL);
  _unpack_double(aTHX_ h, "value", 5,  &n->value, NULL);

}

SV *WGPUConstantEntry__wrap( const WGPUConstantEntry * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::ConstantEntry", GV_ADD));
  WebGPU__Direct__ConstantEntry__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__ConstantEntry;
void WebGPU__Direct__Extent3D__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::Extent3D"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::Extent3D",
      "THIS", "WebGPU::Direct::Extent3D");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUExtent3D *n = (WGPUExtent3D *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUExtent3D);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_uint32_t(aTHX_ h, "width", 5,  &n->width, NULL);
  _pack_uint32_t(aTHX_ h, "height", 6,  &n->height, NULL);
  _pack_uint32_t(aTHX_ h, "depthOrArrayLayers", 18,  &n->depthOrArrayLayers, NULL);

  
}

void WebGPU__Direct__Extent3D__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::Extent3D"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::Extent3D",
      "THIS", "WebGPU::Direct::Extent3D");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUExtent3D *n = (WGPUExtent3D *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUExtent3D);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_uint32_t(aTHX_ h, "width", 5,  &n->width, NULL);
  _unpack_uint32_t(aTHX_ h, "height", 6,  &n->height, NULL);
  _unpack_uint32_t(aTHX_ h, "depthOrArrayLayers", 18,  &n->depthOrArrayLayers, NULL);

}

SV *WGPUExtent3D__wrap( const WGPUExtent3D * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::Extent3D", GV_ADD));
  WebGPU__Direct__Extent3D__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__Extent3D;
void WebGPU__Direct__InstanceDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::InstanceDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::InstanceDescriptor",
      "THIS", "WebGPU::Direct::InstanceDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUInstanceDescriptor *n = (WGPUInstanceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUInstanceDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

  
}

void WebGPU__Direct__InstanceDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::InstanceDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::InstanceDescriptor",
      "THIS", "WebGPU::Direct::InstanceDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUInstanceDescriptor *n = (WGPUInstanceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUInstanceDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));

}

SV *WGPUInstanceDescriptor__wrap( const WGPUInstanceDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::InstanceDescriptor", GV_ADD));
  WebGPU__Direct__InstanceDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__InstanceDescriptor;
void WebGPU__Direct__Limits__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::Limits"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::Limits",
      "THIS", "WebGPU::Direct::Limits");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPULimits);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_uint32_t(aTHX_ h, "maxTextureDimension1D", 21,  &n->maxTextureDimension1D, NULL);
  _pack_uint32_t(aTHX_ h, "maxTextureDimension2D", 21,  &n->maxTextureDimension2D, NULL);
  _pack_uint32_t(aTHX_ h, "maxTextureDimension3D", 21,  &n->maxTextureDimension3D, NULL);
  _pack_uint32_t(aTHX_ h, "maxTextureArrayLayers", 21,  &n->maxTextureArrayLayers, NULL);
  _pack_uint32_t(aTHX_ h, "maxBindGroups", 13,  &n->maxBindGroups, NULL);
  _pack_uint32_t(aTHX_ h, "maxBindGroupsPlusVertexBuffers", 30,  &n->maxBindGroupsPlusVertexBuffers, NULL);
  _pack_uint32_t(aTHX_ h, "maxBindingsPerBindGroup", 23,  &n->maxBindingsPerBindGroup, NULL);
  _pack_uint32_t(aTHX_ h, "maxDynamicUniformBuffersPerPipelineLayout", 41,  &n->maxDynamicUniformBuffersPerPipelineLayout, NULL);
  _pack_uint32_t(aTHX_ h, "maxDynamicStorageBuffersPerPipelineLayout", 41,  &n->maxDynamicStorageBuffersPerPipelineLayout, NULL);
  _pack_uint32_t(aTHX_ h, "maxSampledTexturesPerShaderStage", 32,  &n->maxSampledTexturesPerShaderStage, NULL);
  _pack_uint32_t(aTHX_ h, "maxSamplersPerShaderStage", 25,  &n->maxSamplersPerShaderStage, NULL);
  _pack_uint32_t(aTHX_ h, "maxStorageBuffersPerShaderStage", 31,  &n->maxStorageBuffersPerShaderStage, NULL);
  _pack_uint32_t(aTHX_ h, "maxStorageTexturesPerShaderStage", 32,  &n->maxStorageTexturesPerShaderStage, NULL);
  _pack_uint32_t(aTHX_ h, "maxUniformBuffersPerShaderStage", 31,  &n->maxUniformBuffersPerShaderStage, NULL);
  _pack_uint64_t(aTHX_ h, "maxUniformBufferBindingSize", 27,  &n->maxUniformBufferBindingSize, NULL);
  _pack_uint64_t(aTHX_ h, "maxStorageBufferBindingSize", 27,  &n->maxStorageBufferBindingSize, NULL);
  _pack_uint32_t(aTHX_ h, "minUniformBufferOffsetAlignment", 31,  &n->minUniformBufferOffsetAlignment, NULL);
  _pack_uint32_t(aTHX_ h, "minStorageBufferOffsetAlignment", 31,  &n->minStorageBufferOffsetAlignment, NULL);
  _pack_uint32_t(aTHX_ h, "maxVertexBuffers", 16,  &n->maxVertexBuffers, NULL);
  _pack_uint64_t(aTHX_ h, "maxBufferSize", 13,  &n->maxBufferSize, NULL);
  _pack_uint32_t(aTHX_ h, "maxVertexAttributes", 19,  &n->maxVertexAttributes, NULL);
  _pack_uint32_t(aTHX_ h, "maxVertexBufferArrayStride", 26,  &n->maxVertexBufferArrayStride, NULL);
  _pack_uint32_t(aTHX_ h, "maxInterStageShaderComponents", 29,  &n->maxInterStageShaderComponents, NULL);
  _pack_uint32_t(aTHX_ h, "maxInterStageShaderVariables", 28,  &n->maxInterStageShaderVariables, NULL);
  _pack_uint32_t(aTHX_ h, "maxColorAttachments", 19,  &n->maxColorAttachments, NULL);
  _pack_uint32_t(aTHX_ h, "maxColorAttachmentBytesPerSample", 32,  &n->maxColorAttachmentBytesPerSample, NULL);
  _pack_uint32_t(aTHX_ h, "maxComputeWorkgroupStorageSize", 30,  &n->maxComputeWorkgroupStorageSize, NULL);
  _pack_uint32_t(aTHX_ h, "maxComputeInvocationsPerWorkgroup", 33,  &n->maxComputeInvocationsPerWorkgroup, NULL);
  _pack_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeX", 24,  &n->maxComputeWorkgroupSizeX, NULL);
  _pack_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeY", 24,  &n->maxComputeWorkgroupSizeY, NULL);
  _pack_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeZ", 24,  &n->maxComputeWorkgroupSizeZ, NULL);
  _pack_uint32_t(aTHX_ h, "maxComputeWorkgroupsPerDimension", 32,  &n->maxComputeWorkgroupsPerDimension, NULL);

  
}

void WebGPU__Direct__Limits__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::Limits"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::Limits",
      "THIS", "WebGPU::Direct::Limits");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPULimits *n = (WGPULimits *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPULimits);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_uint32_t(aTHX_ h, "maxTextureDimension1D", 21,  &n->maxTextureDimension1D, NULL);
  _unpack_uint32_t(aTHX_ h, "maxTextureDimension2D", 21,  &n->maxTextureDimension2D, NULL);
  _unpack_uint32_t(aTHX_ h, "maxTextureDimension3D", 21,  &n->maxTextureDimension3D, NULL);
  _unpack_uint32_t(aTHX_ h, "maxTextureArrayLayers", 21,  &n->maxTextureArrayLayers, NULL);
  _unpack_uint32_t(aTHX_ h, "maxBindGroups", 13,  &n->maxBindGroups, NULL);
  _unpack_uint32_t(aTHX_ h, "maxBindGroupsPlusVertexBuffers", 30,  &n->maxBindGroupsPlusVertexBuffers, NULL);
  _unpack_uint32_t(aTHX_ h, "maxBindingsPerBindGroup", 23,  &n->maxBindingsPerBindGroup, NULL);
  _unpack_uint32_t(aTHX_ h, "maxDynamicUniformBuffersPerPipelineLayout", 41,  &n->maxDynamicUniformBuffersPerPipelineLayout, NULL);
  _unpack_uint32_t(aTHX_ h, "maxDynamicStorageBuffersPerPipelineLayout", 41,  &n->maxDynamicStorageBuffersPerPipelineLayout, NULL);
  _unpack_uint32_t(aTHX_ h, "maxSampledTexturesPerShaderStage", 32,  &n->maxSampledTexturesPerShaderStage, NULL);
  _unpack_uint32_t(aTHX_ h, "maxSamplersPerShaderStage", 25,  &n->maxSamplersPerShaderStage, NULL);
  _unpack_uint32_t(aTHX_ h, "maxStorageBuffersPerShaderStage", 31,  &n->maxStorageBuffersPerShaderStage, NULL);
  _unpack_uint32_t(aTHX_ h, "maxStorageTexturesPerShaderStage", 32,  &n->maxStorageTexturesPerShaderStage, NULL);
  _unpack_uint32_t(aTHX_ h, "maxUniformBuffersPerShaderStage", 31,  &n->maxUniformBuffersPerShaderStage, NULL);
  _unpack_uint64_t(aTHX_ h, "maxUniformBufferBindingSize", 27,  &n->maxUniformBufferBindingSize, NULL);
  _unpack_uint64_t(aTHX_ h, "maxStorageBufferBindingSize", 27,  &n->maxStorageBufferBindingSize, NULL);
  _unpack_uint32_t(aTHX_ h, "minUniformBufferOffsetAlignment", 31,  &n->minUniformBufferOffsetAlignment, NULL);
  _unpack_uint32_t(aTHX_ h, "minStorageBufferOffsetAlignment", 31,  &n->minStorageBufferOffsetAlignment, NULL);
  _unpack_uint32_t(aTHX_ h, "maxVertexBuffers", 16,  &n->maxVertexBuffers, NULL);
  _unpack_uint64_t(aTHX_ h, "maxBufferSize", 13,  &n->maxBufferSize, NULL);
  _unpack_uint32_t(aTHX_ h, "maxVertexAttributes", 19,  &n->maxVertexAttributes, NULL);
  _unpack_uint32_t(aTHX_ h, "maxVertexBufferArrayStride", 26,  &n->maxVertexBufferArrayStride, NULL);
  _unpack_uint32_t(aTHX_ h, "maxInterStageShaderComponents", 29,  &n->maxInterStageShaderComponents, NULL);
  _unpack_uint32_t(aTHX_ h, "maxInterStageShaderVariables", 28,  &n->maxInterStageShaderVariables, NULL);
  _unpack_uint32_t(aTHX_ h, "maxColorAttachments", 19,  &n->maxColorAttachments, NULL);
  _unpack_uint32_t(aTHX_ h, "maxColorAttachmentBytesPerSample", 32,  &n->maxColorAttachmentBytesPerSample, NULL);
  _unpack_uint32_t(aTHX_ h, "maxComputeWorkgroupStorageSize", 30,  &n->maxComputeWorkgroupStorageSize, NULL);
  _unpack_uint32_t(aTHX_ h, "maxComputeInvocationsPerWorkgroup", 33,  &n->maxComputeInvocationsPerWorkgroup, NULL);
  _unpack_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeX", 24,  &n->maxComputeWorkgroupSizeX, NULL);
  _unpack_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeY", 24,  &n->maxComputeWorkgroupSizeY, NULL);
  _unpack_uint32_t(aTHX_ h, "maxComputeWorkgroupSizeZ", 24,  &n->maxComputeWorkgroupSizeZ, NULL);
  _unpack_uint32_t(aTHX_ h, "maxComputeWorkgroupsPerDimension", 32,  &n->maxComputeWorkgroupsPerDimension, NULL);

}

SV *WGPULimits__wrap( const WGPULimits * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::Limits", GV_ADD));
  WebGPU__Direct__Limits__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__Limits;
void WebGPU__Direct__MultisampleState__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::MultisampleState"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::MultisampleState",
      "THIS", "WebGPU::Direct::MultisampleState");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUMultisampleState *n = (WGPUMultisampleState *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUMultisampleState);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_uint32_t(aTHX_ h, "count", 5,  &n->count, NULL);
  _pack_uint32_t(aTHX_ h, "mask", 4,  &n->mask, NULL);
  _pack_uint32_t(aTHX_ h, "alphaToCoverageEnabled", 22,  &n->alphaToCoverageEnabled, NULL);

  
}

void WebGPU__Direct__MultisampleState__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::MultisampleState"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::MultisampleState",
      "THIS", "WebGPU::Direct::MultisampleState");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUMultisampleState *n = (WGPUMultisampleState *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUMultisampleState);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_uint32_t(aTHX_ h, "count", 5,  &n->count, NULL);
  _unpack_uint32_t(aTHX_ h, "mask", 4,  &n->mask, NULL);
  _unpack_uint32_t(aTHX_ h, "alphaToCoverageEnabled", 22,  &n->alphaToCoverageEnabled, NULL);

}

SV *WGPUMultisampleState__wrap( const WGPUMultisampleState * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::MultisampleState", GV_ADD));
  WebGPU__Direct__MultisampleState__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__MultisampleState;
void WebGPU__Direct__Origin3D__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::Origin3D"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::Origin3D",
      "THIS", "WebGPU::Direct::Origin3D");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUOrigin3D *n = (WGPUOrigin3D *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUOrigin3D);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_uint32_t(aTHX_ h, "x", 1,  &n->x, NULL);
  _pack_uint32_t(aTHX_ h, "y", 1,  &n->y, NULL);
  _pack_uint32_t(aTHX_ h, "z", 1,  &n->z, NULL);

  
}

void WebGPU__Direct__Origin3D__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::Origin3D"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::Origin3D",
      "THIS", "WebGPU::Direct::Origin3D");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUOrigin3D *n = (WGPUOrigin3D *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUOrigin3D);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_uint32_t(aTHX_ h, "x", 1,  &n->x, NULL);
  _unpack_uint32_t(aTHX_ h, "y", 1,  &n->y, NULL);
  _unpack_uint32_t(aTHX_ h, "z", 1,  &n->z, NULL);

}

SV *WGPUOrigin3D__wrap( const WGPUOrigin3D * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::Origin3D", GV_ADD));
  WebGPU__Direct__Origin3D__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__Origin3D;
void WebGPU__Direct__PipelineLayoutDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::PipelineLayoutDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::PipelineLayoutDescriptor",
      "THIS", "WebGPU::Direct::PipelineLayoutDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUPipelineLayoutDescriptor *n = (WGPUPipelineLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUPipelineLayoutDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _pack_opaque(aTHX_ h, "bindGroupLayouts", 16, (void **) &n->bindGroupLayouts, newSVpvs("WebGPU::Direct::BindGroupLayout"));

  
}

void WebGPU__Direct__PipelineLayoutDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::PipelineLayoutDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::PipelineLayoutDescriptor",
      "THIS", "WebGPU::Direct::PipelineLayoutDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUPipelineLayoutDescriptor *n = (WGPUPipelineLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUPipelineLayoutDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _unpack_size_t(aTHX_ h, "bindGroupLayoutCount", 20,  &n->bindGroupLayoutCount, NULL);
  _unpack_opaque(aTHX_ h, "bindGroupLayouts", 16, (void **) &n->bindGroupLayouts, newSVpvs("WebGPU::Direct::BindGroupLayout"));

}

SV *WGPUPipelineLayoutDescriptor__wrap( const WGPUPipelineLayoutDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::PipelineLayoutDescriptor", GV_ADD));
  WebGPU__Direct__PipelineLayoutDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__PipelineLayoutDescriptor;
void WebGPU__Direct__PrimitiveDepthClipControl__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::PrimitiveDepthClipControl"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::PrimitiveDepthClipControl",
      "THIS", "WebGPU::Direct::PrimitiveDepthClipControl");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUPrimitiveDepthClipControl *n = (WGPUPrimitiveDepthClipControl *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUPrimitiveDepthClipControl);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_uint32_t(aTHX_ h, "unclippedDepth", 14,  &n->unclippedDepth, NULL);

  
}

void WebGPU__Direct__PrimitiveDepthClipControl__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::PrimitiveDepthClipControl"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::PrimitiveDepthClipControl",
      "THIS", "WebGPU::Direct::PrimitiveDepthClipControl");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUPrimitiveDepthClipControl *n = (WGPUPrimitiveDepthClipControl *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUPrimitiveDepthClipControl);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_uint32_t(aTHX_ h, "unclippedDepth", 14,  &n->unclippedDepth, NULL);

}

SV *WGPUPrimitiveDepthClipControl__wrap( const WGPUPrimitiveDepthClipControl * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::PrimitiveDepthClipControl", GV_ADD));
  WebGPU__Direct__PrimitiveDepthClipControl__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__PrimitiveDepthClipControl;
void WebGPU__Direct__PrimitiveState__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::PrimitiveState"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::PrimitiveState",
      "THIS", "WebGPU::Direct::PrimitiveState");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUPrimitiveState *n = (WGPUPrimitiveState *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUPrimitiveState);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_enum(aTHX_ h, "topology", 8,  &n->topology, newSVpvs("WebGPU::Direct::PrimitiveTopology"));
  _pack_enum(aTHX_ h, "stripIndexFormat", 16,  &n->stripIndexFormat, newSVpvs("WebGPU::Direct::IndexFormat"));
  _pack_enum(aTHX_ h, "frontFace", 9,  &n->frontFace, newSVpvs("WebGPU::Direct::FrontFace"));
  _pack_enum(aTHX_ h, "cullMode", 8,  &n->cullMode, newSVpvs("WebGPU::Direct::CullMode"));

  
}

void WebGPU__Direct__PrimitiveState__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::PrimitiveState"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::PrimitiveState",
      "THIS", "WebGPU::Direct::PrimitiveState");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUPrimitiveState *n = (WGPUPrimitiveState *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUPrimitiveState);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_enum(aTHX_ h, "topology", 8,  &n->topology, newSVpvs("WebGPU::Direct::PrimitiveTopology"));
  _unpack_enum(aTHX_ h, "stripIndexFormat", 16,  &n->stripIndexFormat, newSVpvs("WebGPU::Direct::IndexFormat"));
  _unpack_enum(aTHX_ h, "frontFace", 9,  &n->frontFace, newSVpvs("WebGPU::Direct::FrontFace"));
  _unpack_enum(aTHX_ h, "cullMode", 8,  &n->cullMode, newSVpvs("WebGPU::Direct::CullMode"));

}

SV *WGPUPrimitiveState__wrap( const WGPUPrimitiveState * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::PrimitiveState", GV_ADD));
  WebGPU__Direct__PrimitiveState__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__PrimitiveState;
void WebGPU__Direct__QuerySetDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::QuerySetDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::QuerySetDescriptor",
      "THIS", "WebGPU::Direct::QuerySetDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUQuerySetDescriptor *n = (WGPUQuerySetDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUQuerySetDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _pack_enum(aTHX_ h, "type", 4,  &n->type, newSVpvs("WebGPU::Direct::QueryType"));
  _pack_uint32_t(aTHX_ h, "count", 5,  &n->count, NULL);

  
}

void WebGPU__Direct__QuerySetDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::QuerySetDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::QuerySetDescriptor",
      "THIS", "WebGPU::Direct::QuerySetDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUQuerySetDescriptor *n = (WGPUQuerySetDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUQuerySetDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _unpack_enum(aTHX_ h, "type", 4,  &n->type, newSVpvs("WebGPU::Direct::QueryType"));
  _unpack_uint32_t(aTHX_ h, "count", 5,  &n->count, NULL);

}

SV *WGPUQuerySetDescriptor__wrap( const WGPUQuerySetDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::QuerySetDescriptor", GV_ADD));
  WebGPU__Direct__QuerySetDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__QuerySetDescriptor;
void WebGPU__Direct__QueueDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::QueueDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::QueueDescriptor",
      "THIS", "WebGPU::Direct::QueueDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUQueueDescriptor *n = (WGPUQueueDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUQueueDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);

  
}

void WebGPU__Direct__QueueDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::QueueDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::QueueDescriptor",
      "THIS", "WebGPU::Direct::QueueDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUQueueDescriptor *n = (WGPUQueueDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUQueueDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);

}

SV *WGPUQueueDescriptor__wrap( const WGPUQueueDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::QueueDescriptor", GV_ADD));
  WebGPU__Direct__QueueDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__QueueDescriptor;
void WebGPU__Direct__RenderBundleDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RenderBundleDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RenderBundleDescriptor",
      "THIS", "WebGPU::Direct::RenderBundleDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURenderBundleDescriptor *n = (WGPURenderBundleDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURenderBundleDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);

  
}

void WebGPU__Direct__RenderBundleDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RenderBundleDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RenderBundleDescriptor",
      "THIS", "WebGPU::Direct::RenderBundleDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURenderBundleDescriptor *n = (WGPURenderBundleDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURenderBundleDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);

}

SV *WGPURenderBundleDescriptor__wrap( const WGPURenderBundleDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::RenderBundleDescriptor", GV_ADD));
  WebGPU__Direct__RenderBundleDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__RenderBundleDescriptor;
void WebGPU__Direct__RenderBundleEncoderDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RenderBundleEncoderDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RenderBundleEncoderDescriptor",
      "THIS", "WebGPU::Direct::RenderBundleEncoderDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURenderBundleEncoderDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _pack_objarray(aTHX_ h, "colorFormats", 12, (void **) &n->colorFormats, &n->colorFormatCount, sizeof(*n->colorFormats), newSVpvs("WebGPU::Direct::TextureFormat"));
  _pack_enum(aTHX_ h, "depthStencilFormat", 18,  &n->depthStencilFormat, newSVpvs("WebGPU::Direct::TextureFormat"));
  _pack_uint32_t(aTHX_ h, "sampleCount", 11,  &n->sampleCount, NULL);
  _pack_uint32_t(aTHX_ h, "depthReadOnly", 13,  &n->depthReadOnly, NULL);
  _pack_uint32_t(aTHX_ h, "stencilReadOnly", 15,  &n->stencilReadOnly, NULL);

  
}

void WebGPU__Direct__RenderBundleEncoderDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RenderBundleEncoderDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RenderBundleEncoderDescriptor",
      "THIS", "WebGPU::Direct::RenderBundleEncoderDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURenderBundleEncoderDescriptor *n = (WGPURenderBundleEncoderDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURenderBundleEncoderDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _unpack_size_t(aTHX_ h, "colorFormatCount", 16,  &n->colorFormatCount, NULL);
  _unpack_objarray(aTHX_ h, "colorFormats", 12, (void **) &n->colorFormats, &n->colorFormatCount, sizeof(*n->colorFormats), newSVpvs("WebGPU::Direct::TextureFormat"));
  _unpack_enum(aTHX_ h, "depthStencilFormat", 18,  &n->depthStencilFormat, newSVpvs("WebGPU::Direct::TextureFormat"));
  _unpack_uint32_t(aTHX_ h, "sampleCount", 11,  &n->sampleCount, NULL);
  _unpack_uint32_t(aTHX_ h, "depthReadOnly", 13,  &n->depthReadOnly, NULL);
  _unpack_uint32_t(aTHX_ h, "stencilReadOnly", 15,  &n->stencilReadOnly, NULL);

}

SV *WGPURenderBundleEncoderDescriptor__wrap( const WGPURenderBundleEncoderDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::RenderBundleEncoderDescriptor", GV_ADD));
  WebGPU__Direct__RenderBundleEncoderDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__RenderBundleEncoderDescriptor;
void WebGPU__Direct__RenderPassDepthStencilAttachment__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RenderPassDepthStencilAttachment"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RenderPassDepthStencilAttachment",
      "THIS", "WebGPU::Direct::RenderPassDepthStencilAttachment");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURenderPassDepthStencilAttachment);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_opaque(aTHX_ h, "view", 4, (void **) &n->view, newSVpvs("WebGPU::Direct::TextureView"));
  _pack_enum(aTHX_ h, "depthLoadOp", 11,  &n->depthLoadOp, newSVpvs("WebGPU::Direct::LoadOp"));
  _pack_enum(aTHX_ h, "depthStoreOp", 12,  &n->depthStoreOp, newSVpvs("WebGPU::Direct::StoreOp"));
  _pack_float(aTHX_ h, "depthClearValue", 15,  &n->depthClearValue, NULL);
  _pack_uint32_t(aTHX_ h, "depthReadOnly", 13,  &n->depthReadOnly, NULL);
  _pack_enum(aTHX_ h, "stencilLoadOp", 13,  &n->stencilLoadOp, newSVpvs("WebGPU::Direct::LoadOp"));
  _pack_enum(aTHX_ h, "stencilStoreOp", 14,  &n->stencilStoreOp, newSVpvs("WebGPU::Direct::StoreOp"));
  _pack_uint32_t(aTHX_ h, "stencilClearValue", 17,  &n->stencilClearValue, NULL);
  _pack_uint32_t(aTHX_ h, "stencilReadOnly", 15,  &n->stencilReadOnly, NULL);

  
}

void WebGPU__Direct__RenderPassDepthStencilAttachment__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RenderPassDepthStencilAttachment"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RenderPassDepthStencilAttachment",
      "THIS", "WebGPU::Direct::RenderPassDepthStencilAttachment");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURenderPassDepthStencilAttachment *n = (WGPURenderPassDepthStencilAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURenderPassDepthStencilAttachment);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_opaque(aTHX_ h, "view", 4, (void **) &n->view, newSVpvs("WebGPU::Direct::TextureView"));
  _unpack_enum(aTHX_ h, "depthLoadOp", 11,  &n->depthLoadOp, newSVpvs("WebGPU::Direct::LoadOp"));
  _unpack_enum(aTHX_ h, "depthStoreOp", 12,  &n->depthStoreOp, newSVpvs("WebGPU::Direct::StoreOp"));
  _unpack_float(aTHX_ h, "depthClearValue", 15,  &n->depthClearValue, NULL);
  _unpack_uint32_t(aTHX_ h, "depthReadOnly", 13,  &n->depthReadOnly, NULL);
  _unpack_enum(aTHX_ h, "stencilLoadOp", 13,  &n->stencilLoadOp, newSVpvs("WebGPU::Direct::LoadOp"));
  _unpack_enum(aTHX_ h, "stencilStoreOp", 14,  &n->stencilStoreOp, newSVpvs("WebGPU::Direct::StoreOp"));
  _unpack_uint32_t(aTHX_ h, "stencilClearValue", 17,  &n->stencilClearValue, NULL);
  _unpack_uint32_t(aTHX_ h, "stencilReadOnly", 15,  &n->stencilReadOnly, NULL);

}

SV *WGPURenderPassDepthStencilAttachment__wrap( const WGPURenderPassDepthStencilAttachment * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::RenderPassDepthStencilAttachment", GV_ADD));
  WebGPU__Direct__RenderPassDepthStencilAttachment__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__RenderPassDepthStencilAttachment;
void WebGPU__Direct__RenderPassDescriptorMaxDrawCount__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RenderPassDescriptorMaxDrawCount"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RenderPassDescriptorMaxDrawCount",
      "THIS", "WebGPU::Direct::RenderPassDescriptorMaxDrawCount");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURenderPassDescriptorMaxDrawCount *n = (WGPURenderPassDescriptorMaxDrawCount *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURenderPassDescriptorMaxDrawCount);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_uint64_t(aTHX_ h, "maxDrawCount", 12,  &n->maxDrawCount, NULL);

  
}

void WebGPU__Direct__RenderPassDescriptorMaxDrawCount__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RenderPassDescriptorMaxDrawCount"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RenderPassDescriptorMaxDrawCount",
      "THIS", "WebGPU::Direct::RenderPassDescriptorMaxDrawCount");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURenderPassDescriptorMaxDrawCount *n = (WGPURenderPassDescriptorMaxDrawCount *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURenderPassDescriptorMaxDrawCount);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_uint64_t(aTHX_ h, "maxDrawCount", 12,  &n->maxDrawCount, NULL);

}

SV *WGPURenderPassDescriptorMaxDrawCount__wrap( const WGPURenderPassDescriptorMaxDrawCount * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::RenderPassDescriptorMaxDrawCount", GV_ADD));
  WebGPU__Direct__RenderPassDescriptorMaxDrawCount__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__RenderPassDescriptorMaxDrawCount;
void WebGPU__Direct__RenderPassTimestampWrites__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RenderPassTimestampWrites"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RenderPassTimestampWrites",
      "THIS", "WebGPU::Direct::RenderPassTimestampWrites");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURenderPassTimestampWrites *n = (WGPURenderPassTimestampWrites *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURenderPassTimestampWrites);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_opaque(aTHX_ h, "querySet", 8, (void **) &n->querySet, newSVpvs("WebGPU::Direct::QuerySet"));
  _pack_uint32_t(aTHX_ h, "beginningOfPassWriteIndex", 25,  &n->beginningOfPassWriteIndex, NULL);
  _pack_uint32_t(aTHX_ h, "endOfPassWriteIndex", 19,  &n->endOfPassWriteIndex, NULL);

  
}

void WebGPU__Direct__RenderPassTimestampWrites__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RenderPassTimestampWrites"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RenderPassTimestampWrites",
      "THIS", "WebGPU::Direct::RenderPassTimestampWrites");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURenderPassTimestampWrites *n = (WGPURenderPassTimestampWrites *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURenderPassTimestampWrites);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_opaque(aTHX_ h, "querySet", 8, (void **) &n->querySet, newSVpvs("WebGPU::Direct::QuerySet"));
  _unpack_uint32_t(aTHX_ h, "beginningOfPassWriteIndex", 25,  &n->beginningOfPassWriteIndex, NULL);
  _unpack_uint32_t(aTHX_ h, "endOfPassWriteIndex", 19,  &n->endOfPassWriteIndex, NULL);

}

SV *WGPURenderPassTimestampWrites__wrap( const WGPURenderPassTimestampWrites * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::RenderPassTimestampWrites", GV_ADD));
  WebGPU__Direct__RenderPassTimestampWrites__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__RenderPassTimestampWrites;
void WebGPU__Direct__RequestAdapterOptions__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RequestAdapterOptions"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RequestAdapterOptions",
      "THIS", "WebGPU::Direct::RequestAdapterOptions");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURequestAdapterOptions *n = (WGPURequestAdapterOptions *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURequestAdapterOptions);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_opaque(aTHX_ h, "compatibleSurface", 17, (void **) &n->compatibleSurface, newSVpvs("WebGPU::Direct::Surface"));
  _pack_enum(aTHX_ h, "powerPreference", 15,  &n->powerPreference, newSVpvs("WebGPU::Direct::PowerPreference"));
  _pack_enum(aTHX_ h, "backendType", 11,  &n->backendType, newSVpvs("WebGPU::Direct::BackendType"));
  _pack_uint32_t(aTHX_ h, "forceFallbackAdapter", 20,  &n->forceFallbackAdapter, NULL);

  
}

void WebGPU__Direct__RequestAdapterOptions__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RequestAdapterOptions"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RequestAdapterOptions",
      "THIS", "WebGPU::Direct::RequestAdapterOptions");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURequestAdapterOptions *n = (WGPURequestAdapterOptions *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURequestAdapterOptions);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_opaque(aTHX_ h, "compatibleSurface", 17, (void **) &n->compatibleSurface, newSVpvs("WebGPU::Direct::Surface"));
  _unpack_enum(aTHX_ h, "powerPreference", 15,  &n->powerPreference, newSVpvs("WebGPU::Direct::PowerPreference"));
  _unpack_enum(aTHX_ h, "backendType", 11,  &n->backendType, newSVpvs("WebGPU::Direct::BackendType"));
  _unpack_uint32_t(aTHX_ h, "forceFallbackAdapter", 20,  &n->forceFallbackAdapter, NULL);

}

SV *WGPURequestAdapterOptions__wrap( const WGPURequestAdapterOptions * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::RequestAdapterOptions", GV_ADD));
  WebGPU__Direct__RequestAdapterOptions__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__RequestAdapterOptions;
void WebGPU__Direct__SamplerBindingLayout__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SamplerBindingLayout"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SamplerBindingLayout",
      "THIS", "WebGPU::Direct::SamplerBindingLayout");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSamplerBindingLayout *n = (WGPUSamplerBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSamplerBindingLayout);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_enum(aTHX_ h, "type", 4,  &n->type, newSVpvs("WebGPU::Direct::SamplerBindingType"));

  
}

void WebGPU__Direct__SamplerBindingLayout__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SamplerBindingLayout"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SamplerBindingLayout",
      "THIS", "WebGPU::Direct::SamplerBindingLayout");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSamplerBindingLayout *n = (WGPUSamplerBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSamplerBindingLayout);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_enum(aTHX_ h, "type", 4,  &n->type, newSVpvs("WebGPU::Direct::SamplerBindingType"));

}

SV *WGPUSamplerBindingLayout__wrap( const WGPUSamplerBindingLayout * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::SamplerBindingLayout", GV_ADD));
  WebGPU__Direct__SamplerBindingLayout__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__SamplerBindingLayout;
void WebGPU__Direct__SamplerDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SamplerDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SamplerDescriptor",
      "THIS", "WebGPU::Direct::SamplerDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSamplerDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _pack_enum(aTHX_ h, "addressModeU", 12,  &n->addressModeU, newSVpvs("WebGPU::Direct::AddressMode"));
  _pack_enum(aTHX_ h, "addressModeV", 12,  &n->addressModeV, newSVpvs("WebGPU::Direct::AddressMode"));
  _pack_enum(aTHX_ h, "addressModeW", 12,  &n->addressModeW, newSVpvs("WebGPU::Direct::AddressMode"));
  _pack_enum(aTHX_ h, "magFilter", 9,  &n->magFilter, newSVpvs("WebGPU::Direct::FilterMode"));
  _pack_enum(aTHX_ h, "minFilter", 9,  &n->minFilter, newSVpvs("WebGPU::Direct::FilterMode"));
  _pack_enum(aTHX_ h, "mipmapFilter", 12,  &n->mipmapFilter, newSVpvs("WebGPU::Direct::MipmapFilterMode"));
  _pack_float(aTHX_ h, "lodMinClamp", 11,  &n->lodMinClamp, NULL);
  _pack_float(aTHX_ h, "lodMaxClamp", 11,  &n->lodMaxClamp, NULL);
  _pack_enum(aTHX_ h, "compare", 7,  &n->compare, newSVpvs("WebGPU::Direct::CompareFunction"));
  _pack_uint16_t(aTHX_ h, "maxAnisotropy", 13,  &n->maxAnisotropy, NULL);

  
}

void WebGPU__Direct__SamplerDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SamplerDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SamplerDescriptor",
      "THIS", "WebGPU::Direct::SamplerDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSamplerDescriptor *n = (WGPUSamplerDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSamplerDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _unpack_enum(aTHX_ h, "addressModeU", 12,  &n->addressModeU, newSVpvs("WebGPU::Direct::AddressMode"));
  _unpack_enum(aTHX_ h, "addressModeV", 12,  &n->addressModeV, newSVpvs("WebGPU::Direct::AddressMode"));
  _unpack_enum(aTHX_ h, "addressModeW", 12,  &n->addressModeW, newSVpvs("WebGPU::Direct::AddressMode"));
  _unpack_enum(aTHX_ h, "magFilter", 9,  &n->magFilter, newSVpvs("WebGPU::Direct::FilterMode"));
  _unpack_enum(aTHX_ h, "minFilter", 9,  &n->minFilter, newSVpvs("WebGPU::Direct::FilterMode"));
  _unpack_enum(aTHX_ h, "mipmapFilter", 12,  &n->mipmapFilter, newSVpvs("WebGPU::Direct::MipmapFilterMode"));
  _unpack_float(aTHX_ h, "lodMinClamp", 11,  &n->lodMinClamp, NULL);
  _unpack_float(aTHX_ h, "lodMaxClamp", 11,  &n->lodMaxClamp, NULL);
  _unpack_enum(aTHX_ h, "compare", 7,  &n->compare, newSVpvs("WebGPU::Direct::CompareFunction"));
  _unpack_uint16_t(aTHX_ h, "maxAnisotropy", 13,  &n->maxAnisotropy, NULL);

}

SV *WGPUSamplerDescriptor__wrap( const WGPUSamplerDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::SamplerDescriptor", GV_ADD));
  WebGPU__Direct__SamplerDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__SamplerDescriptor;
void WebGPU__Direct__ShaderModuleCompilationHint__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ShaderModuleCompilationHint"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ShaderModuleCompilationHint",
      "THIS", "WebGPU::Direct::ShaderModuleCompilationHint");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUShaderModuleCompilationHint *n = (WGPUShaderModuleCompilationHint *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUShaderModuleCompilationHint);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint, NULL);
  _pack_opaque(aTHX_ h, "layout", 6, (void **) &n->layout, newSVpvs("WebGPU::Direct::PipelineLayout"));

  
}

void WebGPU__Direct__ShaderModuleCompilationHint__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ShaderModuleCompilationHint"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ShaderModuleCompilationHint",
      "THIS", "WebGPU::Direct::ShaderModuleCompilationHint");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUShaderModuleCompilationHint *n = (WGPUShaderModuleCompilationHint *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUShaderModuleCompilationHint);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint, NULL);
  _unpack_opaque(aTHX_ h, "layout", 6, (void **) &n->layout, newSVpvs("WebGPU::Direct::PipelineLayout"));

}

SV *WGPUShaderModuleCompilationHint__wrap( const WGPUShaderModuleCompilationHint * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::ShaderModuleCompilationHint", GV_ADD));
  WebGPU__Direct__ShaderModuleCompilationHint__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__ShaderModuleCompilationHint;
void WebGPU__Direct__ShaderModuleSPIRVDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ShaderModuleSPIRVDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ShaderModuleSPIRVDescriptor",
      "THIS", "WebGPU::Direct::ShaderModuleSPIRVDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUShaderModuleSPIRVDescriptor *n = (WGPUShaderModuleSPIRVDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUShaderModuleSPIRVDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_uint32_t(aTHX_ h, "codeSize", 8,  &n->codeSize, NULL);
  // "code" is a ptr type uint32_t, and that's not quite right yet, using opaque
  _pack_void(aTHX_ h, "code", 4,  &n->code, NULL);

  
}

void WebGPU__Direct__ShaderModuleSPIRVDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ShaderModuleSPIRVDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ShaderModuleSPIRVDescriptor",
      "THIS", "WebGPU::Direct::ShaderModuleSPIRVDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUShaderModuleSPIRVDescriptor *n = (WGPUShaderModuleSPIRVDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUShaderModuleSPIRVDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_uint32_t(aTHX_ h, "codeSize", 8,  &n->codeSize, NULL);
  // "code" is a ptr type uint32_t, and that's not quite right yet, using opaque
  _unpack_void(aTHX_ h, "code", 4,  &n->code, NULL);

}

SV *WGPUShaderModuleSPIRVDescriptor__wrap( const WGPUShaderModuleSPIRVDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::ShaderModuleSPIRVDescriptor", GV_ADD));
  WebGPU__Direct__ShaderModuleSPIRVDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__ShaderModuleSPIRVDescriptor;
void WebGPU__Direct__ShaderModuleWGSLDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ShaderModuleWGSLDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ShaderModuleWGSLDescriptor",
      "THIS", "WebGPU::Direct::ShaderModuleWGSLDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUShaderModuleWGSLDescriptor *n = (WGPUShaderModuleWGSLDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUShaderModuleWGSLDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "code", 4,  &n->code, NULL);

  
}

void WebGPU__Direct__ShaderModuleWGSLDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ShaderModuleWGSLDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ShaderModuleWGSLDescriptor",
      "THIS", "WebGPU::Direct::ShaderModuleWGSLDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUShaderModuleWGSLDescriptor *n = (WGPUShaderModuleWGSLDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUShaderModuleWGSLDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "code", 4,  &n->code, NULL);

}

SV *WGPUShaderModuleWGSLDescriptor__wrap( const WGPUShaderModuleWGSLDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::ShaderModuleWGSLDescriptor", GV_ADD));
  WebGPU__Direct__ShaderModuleWGSLDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__ShaderModuleWGSLDescriptor;
void WebGPU__Direct__StencilFaceState__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::StencilFaceState"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::StencilFaceState",
      "THIS", "WebGPU::Direct::StencilFaceState");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUStencilFaceState *n = (WGPUStencilFaceState *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUStencilFaceState);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_enum(aTHX_ h, "compare", 7,  &n->compare, newSVpvs("WebGPU::Direct::CompareFunction"));
  _pack_enum(aTHX_ h, "failOp", 6,  &n->failOp, newSVpvs("WebGPU::Direct::StencilOperation"));
  _pack_enum(aTHX_ h, "depthFailOp", 11,  &n->depthFailOp, newSVpvs("WebGPU::Direct::StencilOperation"));
  _pack_enum(aTHX_ h, "passOp", 6,  &n->passOp, newSVpvs("WebGPU::Direct::StencilOperation"));

  
}

void WebGPU__Direct__StencilFaceState__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::StencilFaceState"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::StencilFaceState",
      "THIS", "WebGPU::Direct::StencilFaceState");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUStencilFaceState *n = (WGPUStencilFaceState *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUStencilFaceState);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_enum(aTHX_ h, "compare", 7,  &n->compare, newSVpvs("WebGPU::Direct::CompareFunction"));
  _unpack_enum(aTHX_ h, "failOp", 6,  &n->failOp, newSVpvs("WebGPU::Direct::StencilOperation"));
  _unpack_enum(aTHX_ h, "depthFailOp", 11,  &n->depthFailOp, newSVpvs("WebGPU::Direct::StencilOperation"));
  _unpack_enum(aTHX_ h, "passOp", 6,  &n->passOp, newSVpvs("WebGPU::Direct::StencilOperation"));

}

SV *WGPUStencilFaceState__wrap( const WGPUStencilFaceState * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::StencilFaceState", GV_ADD));
  WebGPU__Direct__StencilFaceState__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__StencilFaceState;
void WebGPU__Direct__StorageTextureBindingLayout__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::StorageTextureBindingLayout"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::StorageTextureBindingLayout",
      "THIS", "WebGPU::Direct::StorageTextureBindingLayout");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUStorageTextureBindingLayout *n = (WGPUStorageTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUStorageTextureBindingLayout);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_enum(aTHX_ h, "access", 6,  &n->access, newSVpvs("WebGPU::Direct::StorageTextureAccess"));
  _pack_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WebGPU::Direct::TextureFormat"));
  _pack_enum(aTHX_ h, "viewDimension", 13,  &n->viewDimension, newSVpvs("WebGPU::Direct::TextureViewDimension"));

  
}

void WebGPU__Direct__StorageTextureBindingLayout__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::StorageTextureBindingLayout"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::StorageTextureBindingLayout",
      "THIS", "WebGPU::Direct::StorageTextureBindingLayout");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUStorageTextureBindingLayout *n = (WGPUStorageTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUStorageTextureBindingLayout);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_enum(aTHX_ h, "access", 6,  &n->access, newSVpvs("WebGPU::Direct::StorageTextureAccess"));
  _unpack_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WebGPU::Direct::TextureFormat"));
  _unpack_enum(aTHX_ h, "viewDimension", 13,  &n->viewDimension, newSVpvs("WebGPU::Direct::TextureViewDimension"));

}

SV *WGPUStorageTextureBindingLayout__wrap( const WGPUStorageTextureBindingLayout * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::StorageTextureBindingLayout", GV_ADD));
  WebGPU__Direct__StorageTextureBindingLayout__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__StorageTextureBindingLayout;
void WebGPU__Direct__SurfaceCapabilities__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceCapabilities"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceCapabilities",
      "THIS", "WebGPU::Direct::SurfaceCapabilities");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceCapabilities *n = (WGPUSurfaceCapabilities *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceCapabilities);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStructOut"));
  _pack_objarray(aTHX_ h, "formats", 7, (void **) &n->formats, &n->formatCount, sizeof(*n->formats), newSVpvs("WebGPU::Direct::TextureFormat"));
  _pack_objarray(aTHX_ h, "presentModes", 12, (void **) &n->presentModes, &n->presentModeCount, sizeof(*n->presentModes), newSVpvs("WebGPU::Direct::PresentMode"));
  _pack_objarray(aTHX_ h, "alphaModes", 10, (void **) &n->alphaModes, &n->alphaModeCount, sizeof(*n->alphaModes), newSVpvs("WebGPU::Direct::CompositeAlphaMode"));

  
}

void WebGPU__Direct__SurfaceCapabilities__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceCapabilities"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceCapabilities",
      "THIS", "WebGPU::Direct::SurfaceCapabilities");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceCapabilities *n = (WGPUSurfaceCapabilities *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceCapabilities);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStructOut"));
  _unpack_size_t(aTHX_ h, "formatCount", 11,  &n->formatCount, NULL);
  _unpack_objarray(aTHX_ h, "formats", 7, (void **) &n->formats, &n->formatCount, sizeof(*n->formats), newSVpvs("WebGPU::Direct::TextureFormat"));
  _unpack_size_t(aTHX_ h, "presentModeCount", 16,  &n->presentModeCount, NULL);
  _unpack_objarray(aTHX_ h, "presentModes", 12, (void **) &n->presentModes, &n->presentModeCount, sizeof(*n->presentModes), newSVpvs("WebGPU::Direct::PresentMode"));
  _unpack_size_t(aTHX_ h, "alphaModeCount", 14,  &n->alphaModeCount, NULL);
  _unpack_objarray(aTHX_ h, "alphaModes", 10, (void **) &n->alphaModes, &n->alphaModeCount, sizeof(*n->alphaModes), newSVpvs("WebGPU::Direct::CompositeAlphaMode"));

}

SV *WGPUSurfaceCapabilities__wrap( const WGPUSurfaceCapabilities * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::SurfaceCapabilities", GV_ADD));
  WebGPU__Direct__SurfaceCapabilities__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__SurfaceCapabilities;
void WebGPU__Direct__SurfaceConfiguration__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceConfiguration"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceConfiguration",
      "THIS", "WebGPU::Direct::SurfaceConfiguration");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceConfiguration *n = (WGPUSurfaceConfiguration *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceConfiguration);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_opaque(aTHX_ h, "device", 6, (void **) &n->device, newSVpvs("WebGPU::Direct::Device"));
  _pack_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WebGPU::Direct::TextureFormat"));
  _pack_uint32_t(aTHX_ h, "usage", 5,  &n->usage, NULL);
  _pack_objarray(aTHX_ h, "viewFormats", 11, (void **) &n->viewFormats, &n->viewFormatCount, sizeof(*n->viewFormats), newSVpvs("WebGPU::Direct::TextureFormat"));
  _pack_enum(aTHX_ h, "alphaMode", 9,  &n->alphaMode, newSVpvs("WebGPU::Direct::CompositeAlphaMode"));
  _pack_uint32_t(aTHX_ h, "width", 5,  &n->width, NULL);
  _pack_uint32_t(aTHX_ h, "height", 6,  &n->height, NULL);
  _pack_enum(aTHX_ h, "presentMode", 11,  &n->presentMode, newSVpvs("WebGPU::Direct::PresentMode"));

  
}

void WebGPU__Direct__SurfaceConfiguration__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceConfiguration"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceConfiguration",
      "THIS", "WebGPU::Direct::SurfaceConfiguration");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceConfiguration *n = (WGPUSurfaceConfiguration *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceConfiguration);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_opaque(aTHX_ h, "device", 6, (void **) &n->device, newSVpvs("WebGPU::Direct::Device"));
  _unpack_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WebGPU::Direct::TextureFormat"));
  _unpack_uint32_t(aTHX_ h, "usage", 5,  &n->usage, NULL);
  _unpack_size_t(aTHX_ h, "viewFormatCount", 15,  &n->viewFormatCount, NULL);
  _unpack_objarray(aTHX_ h, "viewFormats", 11, (void **) &n->viewFormats, &n->viewFormatCount, sizeof(*n->viewFormats), newSVpvs("WebGPU::Direct::TextureFormat"));
  _unpack_enum(aTHX_ h, "alphaMode", 9,  &n->alphaMode, newSVpvs("WebGPU::Direct::CompositeAlphaMode"));
  _unpack_uint32_t(aTHX_ h, "width", 5,  &n->width, NULL);
  _unpack_uint32_t(aTHX_ h, "height", 6,  &n->height, NULL);
  _unpack_enum(aTHX_ h, "presentMode", 11,  &n->presentMode, newSVpvs("WebGPU::Direct::PresentMode"));

}

SV *WGPUSurfaceConfiguration__wrap( const WGPUSurfaceConfiguration * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::SurfaceConfiguration", GV_ADD));
  WebGPU__Direct__SurfaceConfiguration__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__SurfaceConfiguration;
void WebGPU__Direct__SurfaceDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceDescriptor",
      "THIS", "WebGPU::Direct::SurfaceDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceDescriptor *n = (WGPUSurfaceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);

  
}

void WebGPU__Direct__SurfaceDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceDescriptor",
      "THIS", "WebGPU::Direct::SurfaceDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceDescriptor *n = (WGPUSurfaceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);

}

SV *WGPUSurfaceDescriptor__wrap( const WGPUSurfaceDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::SurfaceDescriptor", GV_ADD));
  WebGPU__Direct__SurfaceDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__SurfaceDescriptor;
void WebGPU__Direct__SurfaceDescriptorFromAndroidNativeWindow__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow",
      "THIS", "WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceDescriptorFromAndroidNativeWindow *n = (WGPUSurfaceDescriptorFromAndroidNativeWindow *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceDescriptorFromAndroidNativeWindow);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  // "window" is a ptr type void, and that's not quite right yet, using opaque
  _pack_void(aTHX_ h, "window", 6,  &n->window, NULL);

  
}

void WebGPU__Direct__SurfaceDescriptorFromAndroidNativeWindow__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow",
      "THIS", "WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceDescriptorFromAndroidNativeWindow *n = (WGPUSurfaceDescriptorFromAndroidNativeWindow *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceDescriptorFromAndroidNativeWindow);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  // "window" is a ptr type void, and that's not quite right yet, using opaque
  _unpack_void(aTHX_ h, "window", 6,  &n->window, NULL);

}

SV *WGPUSurfaceDescriptorFromAndroidNativeWindow__wrap( const WGPUSurfaceDescriptorFromAndroidNativeWindow * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::SurfaceDescriptorFromAndroidNativeWindow", GV_ADD));
  WebGPU__Direct__SurfaceDescriptorFromAndroidNativeWindow__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__SurfaceDescriptorFromAndroidNativeWindow;
void WebGPU__Direct__SurfaceDescriptorFromCanvasHTMLSelector__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector",
      "THIS", "WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceDescriptorFromCanvasHTMLSelector *n = (WGPUSurfaceDescriptorFromCanvasHTMLSelector *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceDescriptorFromCanvasHTMLSelector);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "selector", 8,  &n->selector, NULL);

  
}

void WebGPU__Direct__SurfaceDescriptorFromCanvasHTMLSelector__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector",
      "THIS", "WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceDescriptorFromCanvasHTMLSelector *n = (WGPUSurfaceDescriptorFromCanvasHTMLSelector *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceDescriptorFromCanvasHTMLSelector);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "selector", 8,  &n->selector, NULL);

}

SV *WGPUSurfaceDescriptorFromCanvasHTMLSelector__wrap( const WGPUSurfaceDescriptorFromCanvasHTMLSelector * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::SurfaceDescriptorFromCanvasHTMLSelector", GV_ADD));
  WebGPU__Direct__SurfaceDescriptorFromCanvasHTMLSelector__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__SurfaceDescriptorFromCanvasHTMLSelector;
void WebGPU__Direct__SurfaceDescriptorFromMetalLayer__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceDescriptorFromMetalLayer"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceDescriptorFromMetalLayer",
      "THIS", "WebGPU::Direct::SurfaceDescriptorFromMetalLayer");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceDescriptorFromMetalLayer *n = (WGPUSurfaceDescriptorFromMetalLayer *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceDescriptorFromMetalLayer);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  // "layer" is a ptr type void, and that's not quite right yet, using opaque
  _pack_void(aTHX_ h, "layer", 5,  &n->layer, NULL);

  
}

void WebGPU__Direct__SurfaceDescriptorFromMetalLayer__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceDescriptorFromMetalLayer"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceDescriptorFromMetalLayer",
      "THIS", "WebGPU::Direct::SurfaceDescriptorFromMetalLayer");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceDescriptorFromMetalLayer *n = (WGPUSurfaceDescriptorFromMetalLayer *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceDescriptorFromMetalLayer);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  // "layer" is a ptr type void, and that's not quite right yet, using opaque
  _unpack_void(aTHX_ h, "layer", 5,  &n->layer, NULL);

}

SV *WGPUSurfaceDescriptorFromMetalLayer__wrap( const WGPUSurfaceDescriptorFromMetalLayer * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::SurfaceDescriptorFromMetalLayer", GV_ADD));
  WebGPU__Direct__SurfaceDescriptorFromMetalLayer__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__SurfaceDescriptorFromMetalLayer;
void WebGPU__Direct__SurfaceDescriptorFromWaylandSurface__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceDescriptorFromWaylandSurface"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceDescriptorFromWaylandSurface",
      "THIS", "WebGPU::Direct::SurfaceDescriptorFromWaylandSurface");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceDescriptorFromWaylandSurface *n = (WGPUSurfaceDescriptorFromWaylandSurface *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceDescriptorFromWaylandSurface);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  // "display" is a ptr type void, and that's not quite right yet, using opaque
  _pack_void(aTHX_ h, "display", 7,  &n->display, NULL);
  // "surface" is a ptr type void, and that's not quite right yet, using opaque
  _pack_void(aTHX_ h, "surface", 7,  &n->surface, NULL);

  
}

void WebGPU__Direct__SurfaceDescriptorFromWaylandSurface__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceDescriptorFromWaylandSurface"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceDescriptorFromWaylandSurface",
      "THIS", "WebGPU::Direct::SurfaceDescriptorFromWaylandSurface");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceDescriptorFromWaylandSurface *n = (WGPUSurfaceDescriptorFromWaylandSurface *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceDescriptorFromWaylandSurface);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  // "display" is a ptr type void, and that's not quite right yet, using opaque
  _unpack_void(aTHX_ h, "display", 7,  &n->display, NULL);
  // "surface" is a ptr type void, and that's not quite right yet, using opaque
  _unpack_void(aTHX_ h, "surface", 7,  &n->surface, NULL);

}

SV *WGPUSurfaceDescriptorFromWaylandSurface__wrap( const WGPUSurfaceDescriptorFromWaylandSurface * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::SurfaceDescriptorFromWaylandSurface", GV_ADD));
  WebGPU__Direct__SurfaceDescriptorFromWaylandSurface__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__SurfaceDescriptorFromWaylandSurface;
void WebGPU__Direct__SurfaceDescriptorFromWindowsHWND__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceDescriptorFromWindowsHWND"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceDescriptorFromWindowsHWND",
      "THIS", "WebGPU::Direct::SurfaceDescriptorFromWindowsHWND");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceDescriptorFromWindowsHWND *n = (WGPUSurfaceDescriptorFromWindowsHWND *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceDescriptorFromWindowsHWND);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  // "hinstance" is a ptr type void, and that's not quite right yet, using opaque
  _pack_void(aTHX_ h, "hinstance", 9,  &n->hinstance, NULL);
  // "hwnd" is a ptr type void, and that's not quite right yet, using opaque
  _pack_void(aTHX_ h, "hwnd", 4,  &n->hwnd, NULL);

  
}

void WebGPU__Direct__SurfaceDescriptorFromWindowsHWND__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceDescriptorFromWindowsHWND"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceDescriptorFromWindowsHWND",
      "THIS", "WebGPU::Direct::SurfaceDescriptorFromWindowsHWND");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceDescriptorFromWindowsHWND *n = (WGPUSurfaceDescriptorFromWindowsHWND *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceDescriptorFromWindowsHWND);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  // "hinstance" is a ptr type void, and that's not quite right yet, using opaque
  _unpack_void(aTHX_ h, "hinstance", 9,  &n->hinstance, NULL);
  // "hwnd" is a ptr type void, and that's not quite right yet, using opaque
  _unpack_void(aTHX_ h, "hwnd", 4,  &n->hwnd, NULL);

}

SV *WGPUSurfaceDescriptorFromWindowsHWND__wrap( const WGPUSurfaceDescriptorFromWindowsHWND * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::SurfaceDescriptorFromWindowsHWND", GV_ADD));
  WebGPU__Direct__SurfaceDescriptorFromWindowsHWND__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__SurfaceDescriptorFromWindowsHWND;
void WebGPU__Direct__SurfaceDescriptorFromXcbWindow__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceDescriptorFromXcbWindow"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceDescriptorFromXcbWindow",
      "THIS", "WebGPU::Direct::SurfaceDescriptorFromXcbWindow");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceDescriptorFromXcbWindow *n = (WGPUSurfaceDescriptorFromXcbWindow *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceDescriptorFromXcbWindow);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  // "connection" is a ptr type void, and that's not quite right yet, using opaque
  _pack_void(aTHX_ h, "connection", 10,  &n->connection, NULL);
  _pack_uint32_t(aTHX_ h, "window", 6,  &n->window, NULL);

  
}

void WebGPU__Direct__SurfaceDescriptorFromXcbWindow__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceDescriptorFromXcbWindow"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceDescriptorFromXcbWindow",
      "THIS", "WebGPU::Direct::SurfaceDescriptorFromXcbWindow");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceDescriptorFromXcbWindow *n = (WGPUSurfaceDescriptorFromXcbWindow *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceDescriptorFromXcbWindow);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  // "connection" is a ptr type void, and that's not quite right yet, using opaque
  _unpack_void(aTHX_ h, "connection", 10,  &n->connection, NULL);
  _unpack_uint32_t(aTHX_ h, "window", 6,  &n->window, NULL);

}

SV *WGPUSurfaceDescriptorFromXcbWindow__wrap( const WGPUSurfaceDescriptorFromXcbWindow * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::SurfaceDescriptorFromXcbWindow", GV_ADD));
  WebGPU__Direct__SurfaceDescriptorFromXcbWindow__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__SurfaceDescriptorFromXcbWindow;
void WebGPU__Direct__SurfaceDescriptorFromXlibWindow__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceDescriptorFromXlibWindow"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceDescriptorFromXlibWindow",
      "THIS", "WebGPU::Direct::SurfaceDescriptorFromXlibWindow");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceDescriptorFromXlibWindow *n = (WGPUSurfaceDescriptorFromXlibWindow *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceDescriptorFromXlibWindow);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  // "display" is a ptr type void, and that's not quite right yet, using opaque
  _pack_void(aTHX_ h, "display", 7,  &n->display, NULL);
  _pack_uint64_t(aTHX_ h, "window", 6,  &n->window, NULL);

  
}

void WebGPU__Direct__SurfaceDescriptorFromXlibWindow__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceDescriptorFromXlibWindow"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceDescriptorFromXlibWindow",
      "THIS", "WebGPU::Direct::SurfaceDescriptorFromXlibWindow");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceDescriptorFromXlibWindow *n = (WGPUSurfaceDescriptorFromXlibWindow *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceDescriptorFromXlibWindow);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_obj(aTHX_ h, "chain", 5,  &n->chain, sizeof(n->chain), newSVpvs("WebGPU::Direct::ChainedStruct"));
  // "display" is a ptr type void, and that's not quite right yet, using opaque
  _unpack_void(aTHX_ h, "display", 7,  &n->display, NULL);
  _unpack_uint64_t(aTHX_ h, "window", 6,  &n->window, NULL);

}

SV *WGPUSurfaceDescriptorFromXlibWindow__wrap( const WGPUSurfaceDescriptorFromXlibWindow * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::SurfaceDescriptorFromXlibWindow", GV_ADD));
  WebGPU__Direct__SurfaceDescriptorFromXlibWindow__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__SurfaceDescriptorFromXlibWindow;
void WebGPU__Direct__SurfaceTexture__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceTexture"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceTexture",
      "THIS", "WebGPU::Direct::SurfaceTexture");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceTexture *n = (WGPUSurfaceTexture *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceTexture);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_opaque(aTHX_ h, "texture", 7, (void **) &n->texture, newSVpvs("WebGPU::Direct::Texture"));
  _pack_uint32_t(aTHX_ h, "suboptimal", 10,  &n->suboptimal, NULL);
  _pack_enum(aTHX_ h, "status", 6,  &n->status, newSVpvs("WebGPU::Direct::SurfaceGetCurrentTextureStatus"));

  
}

void WebGPU__Direct__SurfaceTexture__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SurfaceTexture"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SurfaceTexture",
      "THIS", "WebGPU::Direct::SurfaceTexture");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSurfaceTexture *n = (WGPUSurfaceTexture *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSurfaceTexture);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_opaque(aTHX_ h, "texture", 7, (void **) &n->texture, newSVpvs("WebGPU::Direct::Texture"));
  _unpack_uint32_t(aTHX_ h, "suboptimal", 10,  &n->suboptimal, NULL);
  _unpack_enum(aTHX_ h, "status", 6,  &n->status, newSVpvs("WebGPU::Direct::SurfaceGetCurrentTextureStatus"));

}

SV *WGPUSurfaceTexture__wrap( const WGPUSurfaceTexture * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::SurfaceTexture", GV_ADD));
  WebGPU__Direct__SurfaceTexture__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__SurfaceTexture;
void WebGPU__Direct__TextureBindingLayout__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::TextureBindingLayout"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::TextureBindingLayout",
      "THIS", "WebGPU::Direct::TextureBindingLayout");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUTextureBindingLayout *n = (WGPUTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUTextureBindingLayout);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_enum(aTHX_ h, "sampleType", 10,  &n->sampleType, newSVpvs("WebGPU::Direct::TextureSampleType"));
  _pack_enum(aTHX_ h, "viewDimension", 13,  &n->viewDimension, newSVpvs("WebGPU::Direct::TextureViewDimension"));
  _pack_uint32_t(aTHX_ h, "multisampled", 12,  &n->multisampled, NULL);

  
}

void WebGPU__Direct__TextureBindingLayout__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::TextureBindingLayout"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::TextureBindingLayout",
      "THIS", "WebGPU::Direct::TextureBindingLayout");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUTextureBindingLayout *n = (WGPUTextureBindingLayout *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUTextureBindingLayout);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_enum(aTHX_ h, "sampleType", 10,  &n->sampleType, newSVpvs("WebGPU::Direct::TextureSampleType"));
  _unpack_enum(aTHX_ h, "viewDimension", 13,  &n->viewDimension, newSVpvs("WebGPU::Direct::TextureViewDimension"));
  _unpack_uint32_t(aTHX_ h, "multisampled", 12,  &n->multisampled, NULL);

}

SV *WGPUTextureBindingLayout__wrap( const WGPUTextureBindingLayout * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::TextureBindingLayout", GV_ADD));
  WebGPU__Direct__TextureBindingLayout__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__TextureBindingLayout;
void WebGPU__Direct__TextureDataLayout__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::TextureDataLayout"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::TextureDataLayout",
      "THIS", "WebGPU::Direct::TextureDataLayout");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUTextureDataLayout *n = (WGPUTextureDataLayout *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUTextureDataLayout);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_uint64_t(aTHX_ h, "offset", 6,  &n->offset, NULL);
  _pack_uint32_t(aTHX_ h, "bytesPerRow", 11,  &n->bytesPerRow, NULL);
  _pack_uint32_t(aTHX_ h, "rowsPerImage", 12,  &n->rowsPerImage, NULL);

  
}

void WebGPU__Direct__TextureDataLayout__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::TextureDataLayout"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::TextureDataLayout",
      "THIS", "WebGPU::Direct::TextureDataLayout");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUTextureDataLayout *n = (WGPUTextureDataLayout *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUTextureDataLayout);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_uint64_t(aTHX_ h, "offset", 6,  &n->offset, NULL);
  _unpack_uint32_t(aTHX_ h, "bytesPerRow", 11,  &n->bytesPerRow, NULL);
  _unpack_uint32_t(aTHX_ h, "rowsPerImage", 12,  &n->rowsPerImage, NULL);

}

SV *WGPUTextureDataLayout__wrap( const WGPUTextureDataLayout * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::TextureDataLayout", GV_ADD));
  WebGPU__Direct__TextureDataLayout__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__TextureDataLayout;
void WebGPU__Direct__TextureViewDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::TextureViewDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::TextureViewDescriptor",
      "THIS", "WebGPU::Direct::TextureViewDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUTextureViewDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _pack_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WebGPU::Direct::TextureFormat"));
  _pack_enum(aTHX_ h, "dimension", 9,  &n->dimension, newSVpvs("WebGPU::Direct::TextureViewDimension"));
  _pack_uint32_t(aTHX_ h, "baseMipLevel", 12,  &n->baseMipLevel, NULL);
  _pack_uint32_t(aTHX_ h, "mipLevelCount", 13,  &n->mipLevelCount, NULL);
  _pack_uint32_t(aTHX_ h, "baseArrayLayer", 14,  &n->baseArrayLayer, NULL);
  _pack_uint32_t(aTHX_ h, "arrayLayerCount", 15,  &n->arrayLayerCount, NULL);
  _pack_enum(aTHX_ h, "aspect", 6,  &n->aspect, newSVpvs("WebGPU::Direct::TextureAspect"));

  
}

void WebGPU__Direct__TextureViewDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::TextureViewDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::TextureViewDescriptor",
      "THIS", "WebGPU::Direct::TextureViewDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUTextureViewDescriptor *n = (WGPUTextureViewDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUTextureViewDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _unpack_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WebGPU::Direct::TextureFormat"));
  _unpack_enum(aTHX_ h, "dimension", 9,  &n->dimension, newSVpvs("WebGPU::Direct::TextureViewDimension"));
  _unpack_uint32_t(aTHX_ h, "baseMipLevel", 12,  &n->baseMipLevel, NULL);
  _unpack_uint32_t(aTHX_ h, "mipLevelCount", 13,  &n->mipLevelCount, NULL);
  _unpack_uint32_t(aTHX_ h, "baseArrayLayer", 14,  &n->baseArrayLayer, NULL);
  _unpack_uint32_t(aTHX_ h, "arrayLayerCount", 15,  &n->arrayLayerCount, NULL);
  _unpack_enum(aTHX_ h, "aspect", 6,  &n->aspect, newSVpvs("WebGPU::Direct::TextureAspect"));

}

SV *WGPUTextureViewDescriptor__wrap( const WGPUTextureViewDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::TextureViewDescriptor", GV_ADD));
  WebGPU__Direct__TextureViewDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__TextureViewDescriptor;
void WebGPU__Direct__VertexAttribute__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::VertexAttribute"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::VertexAttribute",
      "THIS", "WebGPU::Direct::VertexAttribute");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUVertexAttribute *n = (WGPUVertexAttribute *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUVertexAttribute);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WebGPU::Direct::VertexFormat"));
  _pack_uint64_t(aTHX_ h, "offset", 6,  &n->offset, NULL);
  _pack_uint32_t(aTHX_ h, "shaderLocation", 14,  &n->shaderLocation, NULL);

  
}

void WebGPU__Direct__VertexAttribute__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::VertexAttribute"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::VertexAttribute",
      "THIS", "WebGPU::Direct::VertexAttribute");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUVertexAttribute *n = (WGPUVertexAttribute *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUVertexAttribute);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WebGPU::Direct::VertexFormat"));
  _unpack_uint64_t(aTHX_ h, "offset", 6,  &n->offset, NULL);
  _unpack_uint32_t(aTHX_ h, "shaderLocation", 14,  &n->shaderLocation, NULL);

}

SV *WGPUVertexAttribute__wrap( const WGPUVertexAttribute * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::VertexAttribute", GV_ADD));
  WebGPU__Direct__VertexAttribute__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__VertexAttribute;
void WebGPU__Direct__BindGroupDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::BindGroupDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::BindGroupDescriptor",
      "THIS", "WebGPU::Direct::BindGroupDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUBindGroupDescriptor *n = (WGPUBindGroupDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUBindGroupDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _pack_opaque(aTHX_ h, "layout", 6, (void **) &n->layout, newSVpvs("WebGPU::Direct::BindGroupLayout"));
  _pack_objarray(aTHX_ h, "entries", 7, (void **) &n->entries, &n->entryCount, sizeof(*n->entries), newSVpvs("WebGPU::Direct::BindGroupEntry"));

  
}

void WebGPU__Direct__BindGroupDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::BindGroupDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::BindGroupDescriptor",
      "THIS", "WebGPU::Direct::BindGroupDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUBindGroupDescriptor *n = (WGPUBindGroupDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUBindGroupDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _unpack_opaque(aTHX_ h, "layout", 6, (void **) &n->layout, newSVpvs("WebGPU::Direct::BindGroupLayout"));
  _unpack_size_t(aTHX_ h, "entryCount", 10,  &n->entryCount, NULL);
  _unpack_objarray(aTHX_ h, "entries", 7, (void **) &n->entries, &n->entryCount, sizeof(*n->entries), newSVpvs("WebGPU::Direct::BindGroupEntry"));

}

SV *WGPUBindGroupDescriptor__wrap( const WGPUBindGroupDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::BindGroupDescriptor", GV_ADD));
  WebGPU__Direct__BindGroupDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__BindGroupDescriptor;
void WebGPU__Direct__BindGroupLayoutEntry__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::BindGroupLayoutEntry"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::BindGroupLayoutEntry",
      "THIS", "WebGPU::Direct::BindGroupLayoutEntry");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUBindGroupLayoutEntry *n = (WGPUBindGroupLayoutEntry *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUBindGroupLayoutEntry);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_uint32_t(aTHX_ h, "binding", 7,  &n->binding, NULL);
  _pack_uint32_t(aTHX_ h, "visibility", 10,  &n->visibility, NULL);
  _pack_obj(aTHX_ h, "buffer", 6,  &n->buffer, sizeof(n->buffer), newSVpvs("WebGPU::Direct::BufferBindingLayout"));
  _pack_obj(aTHX_ h, "sampler", 7,  &n->sampler, sizeof(n->sampler), newSVpvs("WebGPU::Direct::SamplerBindingLayout"));
  _pack_obj(aTHX_ h, "texture", 7,  &n->texture, sizeof(n->texture), newSVpvs("WebGPU::Direct::TextureBindingLayout"));
  _pack_obj(aTHX_ h, "storageTexture", 14,  &n->storageTexture, sizeof(n->storageTexture), newSVpvs("WebGPU::Direct::StorageTextureBindingLayout"));

  
}

void WebGPU__Direct__BindGroupLayoutEntry__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::BindGroupLayoutEntry"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::BindGroupLayoutEntry",
      "THIS", "WebGPU::Direct::BindGroupLayoutEntry");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUBindGroupLayoutEntry *n = (WGPUBindGroupLayoutEntry *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUBindGroupLayoutEntry);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_uint32_t(aTHX_ h, "binding", 7,  &n->binding, NULL);
  _unpack_uint32_t(aTHX_ h, "visibility", 10,  &n->visibility, NULL);
  _unpack_obj(aTHX_ h, "buffer", 6,  &n->buffer, sizeof(n->buffer), newSVpvs("WebGPU::Direct::BufferBindingLayout"));
  _unpack_obj(aTHX_ h, "sampler", 7,  &n->sampler, sizeof(n->sampler), newSVpvs("WebGPU::Direct::SamplerBindingLayout"));
  _unpack_obj(aTHX_ h, "texture", 7,  &n->texture, sizeof(n->texture), newSVpvs("WebGPU::Direct::TextureBindingLayout"));
  _unpack_obj(aTHX_ h, "storageTexture", 14,  &n->storageTexture, sizeof(n->storageTexture), newSVpvs("WebGPU::Direct::StorageTextureBindingLayout"));

}

SV *WGPUBindGroupLayoutEntry__wrap( const WGPUBindGroupLayoutEntry * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::BindGroupLayoutEntry", GV_ADD));
  WebGPU__Direct__BindGroupLayoutEntry__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__BindGroupLayoutEntry;
void WebGPU__Direct__BlendState__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::BlendState"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::BlendState",
      "THIS", "WebGPU::Direct::BlendState");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUBlendState *n = (WGPUBlendState *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUBlendState);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_obj(aTHX_ h, "color", 5,  &n->color, sizeof(n->color), newSVpvs("WebGPU::Direct::BlendComponent"));
  _pack_obj(aTHX_ h, "alpha", 5,  &n->alpha, sizeof(n->alpha), newSVpvs("WebGPU::Direct::BlendComponent"));

  
}

void WebGPU__Direct__BlendState__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::BlendState"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::BlendState",
      "THIS", "WebGPU::Direct::BlendState");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUBlendState *n = (WGPUBlendState *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUBlendState);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_obj(aTHX_ h, "color", 5,  &n->color, sizeof(n->color), newSVpvs("WebGPU::Direct::BlendComponent"));
  _unpack_obj(aTHX_ h, "alpha", 5,  &n->alpha, sizeof(n->alpha), newSVpvs("WebGPU::Direct::BlendComponent"));

}

SV *WGPUBlendState__wrap( const WGPUBlendState * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::BlendState", GV_ADD));
  WebGPU__Direct__BlendState__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__BlendState;
void WebGPU__Direct__CompilationInfo__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::CompilationInfo"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::CompilationInfo",
      "THIS", "WebGPU::Direct::CompilationInfo");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUCompilationInfo *n = (WGPUCompilationInfo *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUCompilationInfo);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_objarray(aTHX_ h, "messages", 8, (void **) &n->messages, &n->messageCount, sizeof(*n->messages), newSVpvs("WebGPU::Direct::CompilationMessage"));

  
}

void WebGPU__Direct__CompilationInfo__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::CompilationInfo"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::CompilationInfo",
      "THIS", "WebGPU::Direct::CompilationInfo");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUCompilationInfo *n = (WGPUCompilationInfo *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUCompilationInfo);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_size_t(aTHX_ h, "messageCount", 12,  &n->messageCount, NULL);
  _unpack_objarray(aTHX_ h, "messages", 8, (void **) &n->messages, &n->messageCount, sizeof(*n->messages), newSVpvs("WebGPU::Direct::CompilationMessage"));

}

SV *WGPUCompilationInfo__wrap( const WGPUCompilationInfo * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::CompilationInfo", GV_ADD));
  WebGPU__Direct__CompilationInfo__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__CompilationInfo;
void WebGPU__Direct__ComputePassDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ComputePassDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ComputePassDescriptor",
      "THIS", "WebGPU::Direct::ComputePassDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUComputePassDescriptor *n = (WGPUComputePassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUComputePassDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _pack_objptr(aTHX_ h, "timestampWrites", 15, (void **) &n->timestampWrites, newSVpvs("WebGPU::Direct::ComputePassTimestampWrites"));

  
}

void WebGPU__Direct__ComputePassDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ComputePassDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ComputePassDescriptor",
      "THIS", "WebGPU::Direct::ComputePassDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUComputePassDescriptor *n = (WGPUComputePassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUComputePassDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _unpack_objptr(aTHX_ h, "timestampWrites", 15, (void **) &n->timestampWrites, newSVpvs("WebGPU::Direct::ComputePassTimestampWrites"));

}

SV *WGPUComputePassDescriptor__wrap( const WGPUComputePassDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::ComputePassDescriptor", GV_ADD));
  WebGPU__Direct__ComputePassDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__ComputePassDescriptor;
void WebGPU__Direct__DepthStencilState__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::DepthStencilState"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::DepthStencilState",
      "THIS", "WebGPU::Direct::DepthStencilState");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUDepthStencilState);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WebGPU::Direct::TextureFormat"));
  _pack_uint32_t(aTHX_ h, "depthWriteEnabled", 17,  &n->depthWriteEnabled, NULL);
  _pack_enum(aTHX_ h, "depthCompare", 12,  &n->depthCompare, newSVpvs("WebGPU::Direct::CompareFunction"));
  _pack_obj(aTHX_ h, "stencilFront", 12,  &n->stencilFront, sizeof(n->stencilFront), newSVpvs("WebGPU::Direct::StencilFaceState"));
  _pack_obj(aTHX_ h, "stencilBack", 11,  &n->stencilBack, sizeof(n->stencilBack), newSVpvs("WebGPU::Direct::StencilFaceState"));
  _pack_uint32_t(aTHX_ h, "stencilReadMask", 15,  &n->stencilReadMask, NULL);
  _pack_uint32_t(aTHX_ h, "stencilWriteMask", 16,  &n->stencilWriteMask, NULL);
  _pack_int32_t(aTHX_ h, "depthBias", 9,  &n->depthBias, NULL);
  _pack_float(aTHX_ h, "depthBiasSlopeScale", 19,  &n->depthBiasSlopeScale, NULL);
  _pack_float(aTHX_ h, "depthBiasClamp", 14,  &n->depthBiasClamp, NULL);

  
}

void WebGPU__Direct__DepthStencilState__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::DepthStencilState"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::DepthStencilState",
      "THIS", "WebGPU::Direct::DepthStencilState");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUDepthStencilState *n = (WGPUDepthStencilState *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUDepthStencilState);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WebGPU::Direct::TextureFormat"));
  _unpack_uint32_t(aTHX_ h, "depthWriteEnabled", 17,  &n->depthWriteEnabled, NULL);
  _unpack_enum(aTHX_ h, "depthCompare", 12,  &n->depthCompare, newSVpvs("WebGPU::Direct::CompareFunction"));
  _unpack_obj(aTHX_ h, "stencilFront", 12,  &n->stencilFront, sizeof(n->stencilFront), newSVpvs("WebGPU::Direct::StencilFaceState"));
  _unpack_obj(aTHX_ h, "stencilBack", 11,  &n->stencilBack, sizeof(n->stencilBack), newSVpvs("WebGPU::Direct::StencilFaceState"));
  _unpack_uint32_t(aTHX_ h, "stencilReadMask", 15,  &n->stencilReadMask, NULL);
  _unpack_uint32_t(aTHX_ h, "stencilWriteMask", 16,  &n->stencilWriteMask, NULL);
  _unpack_int32_t(aTHX_ h, "depthBias", 9,  &n->depthBias, NULL);
  _unpack_float(aTHX_ h, "depthBiasSlopeScale", 19,  &n->depthBiasSlopeScale, NULL);
  _unpack_float(aTHX_ h, "depthBiasClamp", 14,  &n->depthBiasClamp, NULL);

}

SV *WGPUDepthStencilState__wrap( const WGPUDepthStencilState * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::DepthStencilState", GV_ADD));
  WebGPU__Direct__DepthStencilState__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__DepthStencilState;
void WebGPU__Direct__ImageCopyBuffer__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ImageCopyBuffer"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ImageCopyBuffer",
      "THIS", "WebGPU::Direct::ImageCopyBuffer");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUImageCopyBuffer *n = (WGPUImageCopyBuffer *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUImageCopyBuffer);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_obj(aTHX_ h, "layout", 6,  &n->layout, sizeof(n->layout), newSVpvs("WebGPU::Direct::TextureDataLayout"));
  _pack_opaque(aTHX_ h, "buffer", 6, (void **) &n->buffer, newSVpvs("WebGPU::Direct::Buffer"));

  
}

void WebGPU__Direct__ImageCopyBuffer__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ImageCopyBuffer"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ImageCopyBuffer",
      "THIS", "WebGPU::Direct::ImageCopyBuffer");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUImageCopyBuffer *n = (WGPUImageCopyBuffer *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUImageCopyBuffer);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_obj(aTHX_ h, "layout", 6,  &n->layout, sizeof(n->layout), newSVpvs("WebGPU::Direct::TextureDataLayout"));
  _unpack_opaque(aTHX_ h, "buffer", 6, (void **) &n->buffer, newSVpvs("WebGPU::Direct::Buffer"));

}

SV *WGPUImageCopyBuffer__wrap( const WGPUImageCopyBuffer * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::ImageCopyBuffer", GV_ADD));
  WebGPU__Direct__ImageCopyBuffer__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__ImageCopyBuffer;
void WebGPU__Direct__ImageCopyTexture__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ImageCopyTexture"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ImageCopyTexture",
      "THIS", "WebGPU::Direct::ImageCopyTexture");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUImageCopyTexture *n = (WGPUImageCopyTexture *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUImageCopyTexture);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_opaque(aTHX_ h, "texture", 7, (void **) &n->texture, newSVpvs("WebGPU::Direct::Texture"));
  _pack_uint32_t(aTHX_ h, "mipLevel", 8,  &n->mipLevel, NULL);
  _pack_obj(aTHX_ h, "origin", 6,  &n->origin, sizeof(n->origin), newSVpvs("WebGPU::Direct::Origin3D"));
  _pack_enum(aTHX_ h, "aspect", 6,  &n->aspect, newSVpvs("WebGPU::Direct::TextureAspect"));

  
}

void WebGPU__Direct__ImageCopyTexture__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ImageCopyTexture"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ImageCopyTexture",
      "THIS", "WebGPU::Direct::ImageCopyTexture");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUImageCopyTexture *n = (WGPUImageCopyTexture *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUImageCopyTexture);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_opaque(aTHX_ h, "texture", 7, (void **) &n->texture, newSVpvs("WebGPU::Direct::Texture"));
  _unpack_uint32_t(aTHX_ h, "mipLevel", 8,  &n->mipLevel, NULL);
  _unpack_obj(aTHX_ h, "origin", 6,  &n->origin, sizeof(n->origin), newSVpvs("WebGPU::Direct::Origin3D"));
  _unpack_enum(aTHX_ h, "aspect", 6,  &n->aspect, newSVpvs("WebGPU::Direct::TextureAspect"));

}

SV *WGPUImageCopyTexture__wrap( const WGPUImageCopyTexture * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::ImageCopyTexture", GV_ADD));
  WebGPU__Direct__ImageCopyTexture__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__ImageCopyTexture;
void WebGPU__Direct__ProgrammableStageDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ProgrammableStageDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ProgrammableStageDescriptor",
      "THIS", "WebGPU::Direct::ProgrammableStageDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUProgrammableStageDescriptor *n = (WGPUProgrammableStageDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUProgrammableStageDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_opaque(aTHX_ h, "module", 6, (void **) &n->module, newSVpvs("WebGPU::Direct::ShaderModule"));
  _pack_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint, NULL);
  _pack_objarray(aTHX_ h, "constants", 9, (void **) &n->constants, &n->constantCount, sizeof(*n->constants), newSVpvs("WebGPU::Direct::ConstantEntry"));

  
}

void WebGPU__Direct__ProgrammableStageDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ProgrammableStageDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ProgrammableStageDescriptor",
      "THIS", "WebGPU::Direct::ProgrammableStageDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUProgrammableStageDescriptor *n = (WGPUProgrammableStageDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUProgrammableStageDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_opaque(aTHX_ h, "module", 6, (void **) &n->module, newSVpvs("WebGPU::Direct::ShaderModule"));
  _unpack_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint, NULL);
  _unpack_size_t(aTHX_ h, "constantCount", 13,  &n->constantCount, NULL);
  _unpack_objarray(aTHX_ h, "constants", 9, (void **) &n->constants, &n->constantCount, sizeof(*n->constants), newSVpvs("WebGPU::Direct::ConstantEntry"));

}

SV *WGPUProgrammableStageDescriptor__wrap( const WGPUProgrammableStageDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::ProgrammableStageDescriptor", GV_ADD));
  WebGPU__Direct__ProgrammableStageDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__ProgrammableStageDescriptor;
void WebGPU__Direct__RenderPassColorAttachment__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RenderPassColorAttachment"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RenderPassColorAttachment",
      "THIS", "WebGPU::Direct::RenderPassColorAttachment");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURenderPassColorAttachment *n = (WGPURenderPassColorAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURenderPassColorAttachment);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_opaque(aTHX_ h, "view", 4, (void **) &n->view, newSVpvs("WebGPU::Direct::TextureView"));
  _pack_opaque(aTHX_ h, "resolveTarget", 13, (void **) &n->resolveTarget, newSVpvs("WebGPU::Direct::TextureView"));
  _pack_enum(aTHX_ h, "loadOp", 6,  &n->loadOp, newSVpvs("WebGPU::Direct::LoadOp"));
  _pack_enum(aTHX_ h, "storeOp", 7,  &n->storeOp, newSVpvs("WebGPU::Direct::StoreOp"));
  _pack_obj(aTHX_ h, "clearValue", 10,  &n->clearValue, sizeof(n->clearValue), newSVpvs("WebGPU::Direct::Color"));

  
}

void WebGPU__Direct__RenderPassColorAttachment__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RenderPassColorAttachment"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RenderPassColorAttachment",
      "THIS", "WebGPU::Direct::RenderPassColorAttachment");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURenderPassColorAttachment *n = (WGPURenderPassColorAttachment *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURenderPassColorAttachment);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_opaque(aTHX_ h, "view", 4, (void **) &n->view, newSVpvs("WebGPU::Direct::TextureView"));
  _unpack_opaque(aTHX_ h, "resolveTarget", 13, (void **) &n->resolveTarget, newSVpvs("WebGPU::Direct::TextureView"));
  _unpack_enum(aTHX_ h, "loadOp", 6,  &n->loadOp, newSVpvs("WebGPU::Direct::LoadOp"));
  _unpack_enum(aTHX_ h, "storeOp", 7,  &n->storeOp, newSVpvs("WebGPU::Direct::StoreOp"));
  _unpack_obj(aTHX_ h, "clearValue", 10,  &n->clearValue, sizeof(n->clearValue), newSVpvs("WebGPU::Direct::Color"));

}

SV *WGPURenderPassColorAttachment__wrap( const WGPURenderPassColorAttachment * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::RenderPassColorAttachment", GV_ADD));
  WebGPU__Direct__RenderPassColorAttachment__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__RenderPassColorAttachment;
void WebGPU__Direct__RequiredLimits__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RequiredLimits"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RequiredLimits",
      "THIS", "WebGPU::Direct::RequiredLimits");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURequiredLimits *n = (WGPURequiredLimits *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURequiredLimits);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_obj(aTHX_ h, "limits", 6,  &n->limits, sizeof(n->limits), newSVpvs("WebGPU::Direct::Limits"));

  
}

void WebGPU__Direct__RequiredLimits__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RequiredLimits"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RequiredLimits",
      "THIS", "WebGPU::Direct::RequiredLimits");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURequiredLimits *n = (WGPURequiredLimits *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURequiredLimits);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_obj(aTHX_ h, "limits", 6,  &n->limits, sizeof(n->limits), newSVpvs("WebGPU::Direct::Limits"));

}

SV *WGPURequiredLimits__wrap( const WGPURequiredLimits * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::RequiredLimits", GV_ADD));
  WebGPU__Direct__RequiredLimits__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__RequiredLimits;
void WebGPU__Direct__ShaderModuleDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ShaderModuleDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ShaderModuleDescriptor",
      "THIS", "WebGPU::Direct::ShaderModuleDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUShaderModuleDescriptor *n = (WGPUShaderModuleDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUShaderModuleDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _pack_objarray(aTHX_ h, "hints", 5, (void **) &n->hints, &n->hintCount, sizeof(*n->hints), newSVpvs("WebGPU::Direct::ShaderModuleCompilationHint"));

  
}

void WebGPU__Direct__ShaderModuleDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ShaderModuleDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ShaderModuleDescriptor",
      "THIS", "WebGPU::Direct::ShaderModuleDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUShaderModuleDescriptor *n = (WGPUShaderModuleDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUShaderModuleDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _unpack_size_t(aTHX_ h, "hintCount", 9,  &n->hintCount, NULL);
  _unpack_objarray(aTHX_ h, "hints", 5, (void **) &n->hints, &n->hintCount, sizeof(*n->hints), newSVpvs("WebGPU::Direct::ShaderModuleCompilationHint"));

}

SV *WGPUShaderModuleDescriptor__wrap( const WGPUShaderModuleDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::ShaderModuleDescriptor", GV_ADD));
  WebGPU__Direct__ShaderModuleDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__ShaderModuleDescriptor;
void WebGPU__Direct__SupportedLimits__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SupportedLimits"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SupportedLimits",
      "THIS", "WebGPU::Direct::SupportedLimits");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSupportedLimits *n = (WGPUSupportedLimits *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSupportedLimits);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStructOut"));
  _pack_obj(aTHX_ h, "limits", 6,  &n->limits, sizeof(n->limits), newSVpvs("WebGPU::Direct::Limits"));

  
}

void WebGPU__Direct__SupportedLimits__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::SupportedLimits"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::SupportedLimits",
      "THIS", "WebGPU::Direct::SupportedLimits");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUSupportedLimits *n = (WGPUSupportedLimits *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUSupportedLimits);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStructOut"));
  _unpack_obj(aTHX_ h, "limits", 6,  &n->limits, sizeof(n->limits), newSVpvs("WebGPU::Direct::Limits"));

}

SV *WGPUSupportedLimits__wrap( const WGPUSupportedLimits * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::SupportedLimits", GV_ADD));
  WebGPU__Direct__SupportedLimits__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__SupportedLimits;
void WebGPU__Direct__TextureDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::TextureDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::TextureDescriptor",
      "THIS", "WebGPU::Direct::TextureDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUTextureDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _pack_uint32_t(aTHX_ h, "usage", 5,  &n->usage, NULL);
  _pack_enum(aTHX_ h, "dimension", 9,  &n->dimension, newSVpvs("WebGPU::Direct::TextureDimension"));
  _pack_obj(aTHX_ h, "size", 4,  &n->size, sizeof(n->size), newSVpvs("WebGPU::Direct::Extent3D"));
  _pack_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WebGPU::Direct::TextureFormat"));
  _pack_uint32_t(aTHX_ h, "mipLevelCount", 13,  &n->mipLevelCount, NULL);
  _pack_uint32_t(aTHX_ h, "sampleCount", 11,  &n->sampleCount, NULL);
  _pack_objarray(aTHX_ h, "viewFormats", 11, (void **) &n->viewFormats, &n->viewFormatCount, sizeof(*n->viewFormats), newSVpvs("WebGPU::Direct::TextureFormat"));

  
}

void WebGPU__Direct__TextureDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::TextureDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::TextureDescriptor",
      "THIS", "WebGPU::Direct::TextureDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUTextureDescriptor *n = (WGPUTextureDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUTextureDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _unpack_uint32_t(aTHX_ h, "usage", 5,  &n->usage, NULL);
  _unpack_enum(aTHX_ h, "dimension", 9,  &n->dimension, newSVpvs("WebGPU::Direct::TextureDimension"));
  _unpack_obj(aTHX_ h, "size", 4,  &n->size, sizeof(n->size), newSVpvs("WebGPU::Direct::Extent3D"));
  _unpack_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WebGPU::Direct::TextureFormat"));
  _unpack_uint32_t(aTHX_ h, "mipLevelCount", 13,  &n->mipLevelCount, NULL);
  _unpack_uint32_t(aTHX_ h, "sampleCount", 11,  &n->sampleCount, NULL);
  _unpack_size_t(aTHX_ h, "viewFormatCount", 15,  &n->viewFormatCount, NULL);
  _unpack_objarray(aTHX_ h, "viewFormats", 11, (void **) &n->viewFormats, &n->viewFormatCount, sizeof(*n->viewFormats), newSVpvs("WebGPU::Direct::TextureFormat"));

}

SV *WGPUTextureDescriptor__wrap( const WGPUTextureDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::TextureDescriptor", GV_ADD));
  WebGPU__Direct__TextureDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__TextureDescriptor;
void WebGPU__Direct__VertexBufferLayout__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::VertexBufferLayout"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::VertexBufferLayout",
      "THIS", "WebGPU::Direct::VertexBufferLayout");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUVertexBufferLayout *n = (WGPUVertexBufferLayout *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUVertexBufferLayout);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_uint64_t(aTHX_ h, "arrayStride", 11,  &n->arrayStride, NULL);
  _pack_enum(aTHX_ h, "stepMode", 8,  &n->stepMode, newSVpvs("WebGPU::Direct::VertexStepMode"));
  _pack_objarray(aTHX_ h, "attributes", 10, (void **) &n->attributes, &n->attributeCount, sizeof(*n->attributes), newSVpvs("WebGPU::Direct::VertexAttribute"));

  
}

void WebGPU__Direct__VertexBufferLayout__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::VertexBufferLayout"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::VertexBufferLayout",
      "THIS", "WebGPU::Direct::VertexBufferLayout");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUVertexBufferLayout *n = (WGPUVertexBufferLayout *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUVertexBufferLayout);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_uint64_t(aTHX_ h, "arrayStride", 11,  &n->arrayStride, NULL);
  _unpack_enum(aTHX_ h, "stepMode", 8,  &n->stepMode, newSVpvs("WebGPU::Direct::VertexStepMode"));
  _unpack_size_t(aTHX_ h, "attributeCount", 14,  &n->attributeCount, NULL);
  _unpack_objarray(aTHX_ h, "attributes", 10, (void **) &n->attributes, &n->attributeCount, sizeof(*n->attributes), newSVpvs("WebGPU::Direct::VertexAttribute"));

}

SV *WGPUVertexBufferLayout__wrap( const WGPUVertexBufferLayout * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::VertexBufferLayout", GV_ADD));
  WebGPU__Direct__VertexBufferLayout__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__VertexBufferLayout;
void WebGPU__Direct__BindGroupLayoutDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::BindGroupLayoutDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::BindGroupLayoutDescriptor",
      "THIS", "WebGPU::Direct::BindGroupLayoutDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUBindGroupLayoutDescriptor *n = (WGPUBindGroupLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUBindGroupLayoutDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _pack_objarray(aTHX_ h, "entries", 7, (void **) &n->entries, &n->entryCount, sizeof(*n->entries), newSVpvs("WebGPU::Direct::BindGroupLayoutEntry"));

  
}

void WebGPU__Direct__BindGroupLayoutDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::BindGroupLayoutDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::BindGroupLayoutDescriptor",
      "THIS", "WebGPU::Direct::BindGroupLayoutDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUBindGroupLayoutDescriptor *n = (WGPUBindGroupLayoutDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUBindGroupLayoutDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _unpack_size_t(aTHX_ h, "entryCount", 10,  &n->entryCount, NULL);
  _unpack_objarray(aTHX_ h, "entries", 7, (void **) &n->entries, &n->entryCount, sizeof(*n->entries), newSVpvs("WebGPU::Direct::BindGroupLayoutEntry"));

}

SV *WGPUBindGroupLayoutDescriptor__wrap( const WGPUBindGroupLayoutDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::BindGroupLayoutDescriptor", GV_ADD));
  WebGPU__Direct__BindGroupLayoutDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__BindGroupLayoutDescriptor;
void WebGPU__Direct__ColorTargetState__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ColorTargetState"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ColorTargetState",
      "THIS", "WebGPU::Direct::ColorTargetState");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUColorTargetState *n = (WGPUColorTargetState *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUColorTargetState);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WebGPU::Direct::TextureFormat"));
  _pack_objptr(aTHX_ h, "blend", 5, (void **) &n->blend, newSVpvs("WebGPU::Direct::BlendState"));
  _pack_uint32_t(aTHX_ h, "writeMask", 9,  &n->writeMask, NULL);

  
}

void WebGPU__Direct__ColorTargetState__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ColorTargetState"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ColorTargetState",
      "THIS", "WebGPU::Direct::ColorTargetState");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUColorTargetState *n = (WGPUColorTargetState *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUColorTargetState);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_enum(aTHX_ h, "format", 6,  &n->format, newSVpvs("WebGPU::Direct::TextureFormat"));
  _unpack_objptr(aTHX_ h, "blend", 5, (void **) &n->blend, newSVpvs("WebGPU::Direct::BlendState"));
  _unpack_uint32_t(aTHX_ h, "writeMask", 9,  &n->writeMask, NULL);

}

SV *WGPUColorTargetState__wrap( const WGPUColorTargetState * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::ColorTargetState", GV_ADD));
  WebGPU__Direct__ColorTargetState__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__ColorTargetState;
void WebGPU__Direct__ComputePipelineDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ComputePipelineDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ComputePipelineDescriptor",
      "THIS", "WebGPU::Direct::ComputePipelineDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUComputePipelineDescriptor *n = (WGPUComputePipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUComputePipelineDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _pack_opaque(aTHX_ h, "layout", 6, (void **) &n->layout, newSVpvs("WebGPU::Direct::PipelineLayout"));
  _pack_obj(aTHX_ h, "compute", 7,  &n->compute, sizeof(n->compute), newSVpvs("WebGPU::Direct::ProgrammableStageDescriptor"));

  
}

void WebGPU__Direct__ComputePipelineDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::ComputePipelineDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::ComputePipelineDescriptor",
      "THIS", "WebGPU::Direct::ComputePipelineDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUComputePipelineDescriptor *n = (WGPUComputePipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUComputePipelineDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _unpack_opaque(aTHX_ h, "layout", 6, (void **) &n->layout, newSVpvs("WebGPU::Direct::PipelineLayout"));
  _unpack_obj(aTHX_ h, "compute", 7,  &n->compute, sizeof(n->compute), newSVpvs("WebGPU::Direct::ProgrammableStageDescriptor"));

}

SV *WGPUComputePipelineDescriptor__wrap( const WGPUComputePipelineDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::ComputePipelineDescriptor", GV_ADD));
  WebGPU__Direct__ComputePipelineDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__ComputePipelineDescriptor;
void WebGPU__Direct__DeviceDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::DeviceDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::DeviceDescriptor",
      "THIS", "WebGPU::Direct::DeviceDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUDeviceDescriptor *n = (WGPUDeviceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUDeviceDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _pack_objarray(aTHX_ h, "requiredFeatures", 16, (void **) &n->requiredFeatures, &n->requiredFeatureCount, sizeof(*n->requiredFeatures), newSVpvs("WebGPU::Direct::FeatureName"));
  _pack_objptr(aTHX_ h, "requiredLimits", 14, (void **) &n->requiredLimits, newSVpvs("WebGPU::Direct::RequiredLimits"));
  _pack_obj(aTHX_ h, "defaultQueue", 12,  &n->defaultQueue, sizeof(n->defaultQueue), newSVpvs("WebGPU::Direct::QueueDescriptor"));
  _pack_void(aTHX_ h, "deviceLostCallback", 18,  &n->deviceLostCallback, NULL);
  // "deviceLostUserdata" is a ptr type void, and that's not quite right yet, using opaque
  _pack_void(aTHX_ h, "deviceLostUserdata", 18,  &n->deviceLostUserdata, NULL);

  
}

void WebGPU__Direct__DeviceDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::DeviceDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::DeviceDescriptor",
      "THIS", "WebGPU::Direct::DeviceDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUDeviceDescriptor *n = (WGPUDeviceDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUDeviceDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _unpack_size_t(aTHX_ h, "requiredFeatureCount", 20,  &n->requiredFeatureCount, NULL);
  _unpack_objarray(aTHX_ h, "requiredFeatures", 16, (void **) &n->requiredFeatures, &n->requiredFeatureCount, sizeof(*n->requiredFeatures), newSVpvs("WebGPU::Direct::FeatureName"));
  _unpack_objptr(aTHX_ h, "requiredLimits", 14, (void **) &n->requiredLimits, newSVpvs("WebGPU::Direct::RequiredLimits"));
  _unpack_obj(aTHX_ h, "defaultQueue", 12,  &n->defaultQueue, sizeof(n->defaultQueue), newSVpvs("WebGPU::Direct::QueueDescriptor"));
  _unpack_void(aTHX_ h, "deviceLostCallback", 18,  &n->deviceLostCallback, NULL);
  // "deviceLostUserdata" is a ptr type void, and that's not quite right yet, using opaque
  _unpack_void(aTHX_ h, "deviceLostUserdata", 18,  &n->deviceLostUserdata, NULL);

}

SV *WGPUDeviceDescriptor__wrap( const WGPUDeviceDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::DeviceDescriptor", GV_ADD));
  WebGPU__Direct__DeviceDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__DeviceDescriptor;
void WebGPU__Direct__RenderPassDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RenderPassDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RenderPassDescriptor",
      "THIS", "WebGPU::Direct::RenderPassDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURenderPassDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _pack_objarray(aTHX_ h, "colorAttachments", 16, (void **) &n->colorAttachments, &n->colorAttachmentCount, sizeof(*n->colorAttachments), newSVpvs("WebGPU::Direct::RenderPassColorAttachment"));
  _pack_objptr(aTHX_ h, "depthStencilAttachment", 22, (void **) &n->depthStencilAttachment, newSVpvs("WebGPU::Direct::RenderPassDepthStencilAttachment"));
  _pack_opaque(aTHX_ h, "occlusionQuerySet", 17, (void **) &n->occlusionQuerySet, newSVpvs("WebGPU::Direct::QuerySet"));
  _pack_objptr(aTHX_ h, "timestampWrites", 15, (void **) &n->timestampWrites, newSVpvs("WebGPU::Direct::RenderPassTimestampWrites"));

  
}

void WebGPU__Direct__RenderPassDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RenderPassDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RenderPassDescriptor",
      "THIS", "WebGPU::Direct::RenderPassDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURenderPassDescriptor *n = (WGPURenderPassDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURenderPassDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _unpack_size_t(aTHX_ h, "colorAttachmentCount", 20,  &n->colorAttachmentCount, NULL);
  _unpack_objarray(aTHX_ h, "colorAttachments", 16, (void **) &n->colorAttachments, &n->colorAttachmentCount, sizeof(*n->colorAttachments), newSVpvs("WebGPU::Direct::RenderPassColorAttachment"));
  _unpack_objptr(aTHX_ h, "depthStencilAttachment", 22, (void **) &n->depthStencilAttachment, newSVpvs("WebGPU::Direct::RenderPassDepthStencilAttachment"));
  _unpack_opaque(aTHX_ h, "occlusionQuerySet", 17, (void **) &n->occlusionQuerySet, newSVpvs("WebGPU::Direct::QuerySet"));
  _unpack_objptr(aTHX_ h, "timestampWrites", 15, (void **) &n->timestampWrites, newSVpvs("WebGPU::Direct::RenderPassTimestampWrites"));

}

SV *WGPURenderPassDescriptor__wrap( const WGPURenderPassDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::RenderPassDescriptor", GV_ADD));
  WebGPU__Direct__RenderPassDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__RenderPassDescriptor;
void WebGPU__Direct__VertexState__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::VertexState"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::VertexState",
      "THIS", "WebGPU::Direct::VertexState");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUVertexState *n = (WGPUVertexState *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUVertexState);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_opaque(aTHX_ h, "module", 6, (void **) &n->module, newSVpvs("WebGPU::Direct::ShaderModule"));
  _pack_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint, NULL);
  _pack_objarray(aTHX_ h, "constants", 9, (void **) &n->constants, &n->constantCount, sizeof(*n->constants), newSVpvs("WebGPU::Direct::ConstantEntry"));
  _pack_objarray(aTHX_ h, "buffers", 7, (void **) &n->buffers, &n->bufferCount, sizeof(*n->buffers), newSVpvs("WebGPU::Direct::VertexBufferLayout"));

  
}

void WebGPU__Direct__VertexState__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::VertexState"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::VertexState",
      "THIS", "WebGPU::Direct::VertexState");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUVertexState *n = (WGPUVertexState *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUVertexState);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_opaque(aTHX_ h, "module", 6, (void **) &n->module, newSVpvs("WebGPU::Direct::ShaderModule"));
  _unpack_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint, NULL);
  _unpack_size_t(aTHX_ h, "constantCount", 13,  &n->constantCount, NULL);
  _unpack_objarray(aTHX_ h, "constants", 9, (void **) &n->constants, &n->constantCount, sizeof(*n->constants), newSVpvs("WebGPU::Direct::ConstantEntry"));
  _unpack_size_t(aTHX_ h, "bufferCount", 11,  &n->bufferCount, NULL);
  _unpack_objarray(aTHX_ h, "buffers", 7, (void **) &n->buffers, &n->bufferCount, sizeof(*n->buffers), newSVpvs("WebGPU::Direct::VertexBufferLayout"));

}

SV *WGPUVertexState__wrap( const WGPUVertexState * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::VertexState", GV_ADD));
  WebGPU__Direct__VertexState__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__VertexState;
void WebGPU__Direct__FragmentState__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::FragmentState"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::FragmentState",
      "THIS", "WebGPU::Direct::FragmentState");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUFragmentState *n = (WGPUFragmentState *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUFragmentState);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_opaque(aTHX_ h, "module", 6, (void **) &n->module, newSVpvs("WebGPU::Direct::ShaderModule"));
  _pack_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint, NULL);
  _pack_objarray(aTHX_ h, "constants", 9, (void **) &n->constants, &n->constantCount, sizeof(*n->constants), newSVpvs("WebGPU::Direct::ConstantEntry"));
  _pack_objarray(aTHX_ h, "targets", 7, (void **) &n->targets, &n->targetCount, sizeof(*n->targets), newSVpvs("WebGPU::Direct::ColorTargetState"));

  
}

void WebGPU__Direct__FragmentState__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::FragmentState"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::FragmentState",
      "THIS", "WebGPU::Direct::FragmentState");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPUFragmentState *n = (WGPUFragmentState *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPUFragmentState);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_opaque(aTHX_ h, "module", 6, (void **) &n->module, newSVpvs("WebGPU::Direct::ShaderModule"));
  _unpack_str(aTHX_ h, "entryPoint", 10,  &n->entryPoint, NULL);
  _unpack_size_t(aTHX_ h, "constantCount", 13,  &n->constantCount, NULL);
  _unpack_objarray(aTHX_ h, "constants", 9, (void **) &n->constants, &n->constantCount, sizeof(*n->constants), newSVpvs("WebGPU::Direct::ConstantEntry"));
  _unpack_size_t(aTHX_ h, "targetCount", 11,  &n->targetCount, NULL);
  _unpack_objarray(aTHX_ h, "targets", 7, (void **) &n->targets, &n->targetCount, sizeof(*n->targets), newSVpvs("WebGPU::Direct::ColorTargetState"));

}

SV *WGPUFragmentState__wrap( const WGPUFragmentState * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::FragmentState", GV_ADD));
  WebGPU__Direct__FragmentState__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__FragmentState;
void WebGPU__Direct__RenderPipelineDescriptor__pack( SV *THIS )
{
  
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RenderPipelineDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RenderPipelineDescriptor",
      "THIS", "WebGPU::Direct::RenderPipelineDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURenderPipelineDescriptor *n = (WGPURenderPipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURenderPipelineDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _pack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _pack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _pack_opaque(aTHX_ h, "layout", 6, (void **) &n->layout, newSVpvs("WebGPU::Direct::PipelineLayout"));
  _pack_obj(aTHX_ h, "vertex", 6,  &n->vertex, sizeof(n->vertex), newSVpvs("WebGPU::Direct::VertexState"));
  _pack_obj(aTHX_ h, "primitive", 9,  &n->primitive, sizeof(n->primitive), newSVpvs("WebGPU::Direct::PrimitiveState"));
  _pack_objptr(aTHX_ h, "depthStencil", 12, (void **) &n->depthStencil, newSVpvs("WebGPU::Direct::DepthStencilState"));
  _pack_obj(aTHX_ h, "multisample", 11,  &n->multisample, sizeof(n->multisample), newSVpvs("WebGPU::Direct::MultisampleState"));
  _pack_objptr(aTHX_ h, "fragment", 8, (void **) &n->fragment, newSVpvs("WebGPU::Direct::FragmentState"));

  
}

void WebGPU__Direct__RenderPipelineDescriptor__unpack( SV *THIS )
{
  if (!SvROK(THIS) || !sv_derived_from(THIS, "WebGPU::Direct::RenderPipelineDescriptor"))
  {
    croak_nocontext("%s: %s is not of type %s",
      "WebGPU::Direct::RenderPipelineDescriptor",
      "THIS", "WebGPU::Direct::RenderPipelineDescriptor");
  }

  HV *h = (HV *)SvRV(THIS);
  WGPURenderPipelineDescriptor *n = (WGPURenderPipelineDescriptor *) _get_struct_ptr(aTHX, THIS, NULL);
  if ( !n )
  {
    Newxz(n, 1, WGPURenderPipelineDescriptor);
    sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  }
  _unpack_objptr(aTHX_ h, "nextInChain", 11, (void **) &n->nextInChain, newSVpvs("WebGPU::Direct::ChainedStruct"));
  _unpack_str(aTHX_ h, "label", 5,  &n->label, NULL);
  _unpack_opaque(aTHX_ h, "layout", 6, (void **) &n->layout, newSVpvs("WebGPU::Direct::PipelineLayout"));
  _unpack_obj(aTHX_ h, "vertex", 6,  &n->vertex, sizeof(n->vertex), newSVpvs("WebGPU::Direct::VertexState"));
  _unpack_obj(aTHX_ h, "primitive", 9,  &n->primitive, sizeof(n->primitive), newSVpvs("WebGPU::Direct::PrimitiveState"));
  _unpack_objptr(aTHX_ h, "depthStencil", 12, (void **) &n->depthStencil, newSVpvs("WebGPU::Direct::DepthStencilState"));
  _unpack_obj(aTHX_ h, "multisample", 11,  &n->multisample, sizeof(n->multisample), newSVpvs("WebGPU::Direct::MultisampleState"));
  _unpack_objptr(aTHX_ h, "fragment", 8, (void **) &n->fragment, newSVpvs("WebGPU::Direct::FragmentState"));

}

SV *WGPURenderPipelineDescriptor__wrap( const WGPURenderPipelineDescriptor * n )
{
  HV *h = newHV();
  SV *RETVAL = sv_2mortal(newRV((SV*)h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::RenderPipelineDescriptor", GV_ADD));
  WebGPU__Direct__RenderPipelineDescriptor__unpack(RETVAL);
  return SvREFCNT_inc(RETVAL);
}

typedef SV* WebGPU__Direct__RenderPipelineDescriptor;
void WebGPU__Direct__BufferMapCallback__callback( WGPUBufferMapAsyncStatus status, void * userdata )
  {
    cb_data *cb = (cb_data *)userdata;
    if ( cb->guard1 != CB_GUARD || cb->guard2 != cb->guard1 )
    {
      croak("Got a callback with improper guards: 0x%X, 0x%X", cb->guard1, cb->guard2);
    }

    dSP;
    dTARGET;
    PUSHMARK(SP);
    WebGPU__Direct__BufferMapCallback tm_status = newSV(0); 	sv_setiv(tm_status, (IV)status);
; 
    XPUSHs(tm_status); 
    XPUSHs(cb->data);
    PUTBACK;
    call_sv((SV *)cb->perlsub, G_VOID);
  }

void WebGPU__Direct__CompilationInfoCallback__callback( WGPUCompilationInfoRequestStatus status, struct WGPUCompilationInfo const * compilationInfo, void * userdata )
  {
    cb_data *cb = (cb_data *)userdata;
    if ( cb->guard1 != CB_GUARD || cb->guard2 != cb->guard1 )
    {
      croak("Got a callback with improper guards: 0x%X, 0x%X", cb->guard1, cb->guard2);
    }

    dSP;
    dTARGET;
    PUSHMARK(SP);
    WebGPU__Direct__CompilationInfoCallback tm_status = newSV(0); 	sv_setiv(tm_status, (IV)status);
; 
    XPUSHs(tm_status); 
    WebGPU__Direct__CompilationInfoCallback tm_compilationInfo = newSV(0);     tm_compilationInfo = WGPUCompilationInfo__wrap(compilationInfo);
; 
    XPUSHs(tm_compilationInfo); 
    XPUSHs(cb->data);
    PUTBACK;
    call_sv((SV *)cb->perlsub, G_VOID);
  }

void WebGPU__Direct__CreateComputePipelineAsyncCallback__callback( WGPUCreatePipelineAsyncStatus status, WGPUComputePipeline pipeline, char const * message, void * userdata )
  {
    cb_data *cb = (cb_data *)userdata;
    if ( cb->guard1 != CB_GUARD || cb->guard2 != cb->guard1 )
    {
      croak("Got a callback with improper guards: 0x%X, 0x%X", cb->guard1, cb->guard2);
    }

    dSP;
    dTARGET;
    PUSHMARK(SP);
    WebGPU__Direct__CreateComputePipelineAsyncCallback tm_status = newSV(0); 	sv_setiv(tm_status, (IV)status);
; 
    XPUSHs(tm_status); 
    WebGPU__Direct__CreateComputePipelineAsyncCallback tm_pipeline = newSV(0);     tm_pipeline = WGPUComputePipeline__wrap(pipeline);
; 
    XPUSHs(tm_pipeline); 
    WebGPU__Direct__CreateComputePipelineAsyncCallback tm_message = newSV(0); 	sv_setpv((SV*)tm_message, message);
; 
    XPUSHs(tm_message); 
    XPUSHs(cb->data);
    PUTBACK;
    call_sv((SV *)cb->perlsub, G_VOID);
  }

void WebGPU__Direct__CreateRenderPipelineAsyncCallback__callback( WGPUCreatePipelineAsyncStatus status, WGPURenderPipeline pipeline, char const * message, void * userdata )
  {
    cb_data *cb = (cb_data *)userdata;
    if ( cb->guard1 != CB_GUARD || cb->guard2 != cb->guard1 )
    {
      croak("Got a callback with improper guards: 0x%X, 0x%X", cb->guard1, cb->guard2);
    }

    dSP;
    dTARGET;
    PUSHMARK(SP);
    WebGPU__Direct__CreateRenderPipelineAsyncCallback tm_status = newSV(0); 	sv_setiv(tm_status, (IV)status);
; 
    XPUSHs(tm_status); 
    WebGPU__Direct__CreateRenderPipelineAsyncCallback tm_pipeline = newSV(0);     tm_pipeline = WGPURenderPipeline__wrap(pipeline);
; 
    XPUSHs(tm_pipeline); 
    WebGPU__Direct__CreateRenderPipelineAsyncCallback tm_message = newSV(0); 	sv_setpv((SV*)tm_message, message);
; 
    XPUSHs(tm_message); 
    XPUSHs(cb->data);
    PUTBACK;
    call_sv((SV *)cb->perlsub, G_VOID);
  }

void WebGPU__Direct__DeviceLostCallback__callback( WGPUDeviceLostReason reason, char const * message, void * userdata )
  {
    cb_data *cb = (cb_data *)userdata;
    if ( cb->guard1 != CB_GUARD || cb->guard2 != cb->guard1 )
    {
      croak("Got a callback with improper guards: 0x%X, 0x%X", cb->guard1, cb->guard2);
    }

    dSP;
    dTARGET;
    PUSHMARK(SP);
    WebGPU__Direct__DeviceLostCallback tm_reason = newSV(0); 	sv_setiv(tm_reason, (IV)reason);
; 
    XPUSHs(tm_reason); 
    WebGPU__Direct__DeviceLostCallback tm_message = newSV(0); 	sv_setpv((SV*)tm_message, message);
; 
    XPUSHs(tm_message); 
    XPUSHs(cb->data);
    PUTBACK;
    call_sv((SV *)cb->perlsub, G_VOID);
  }

void WebGPU__Direct__ErrorCallback__callback( WGPUErrorType type, char const * message, void * userdata )
  {
    cb_data *cb = (cb_data *)userdata;
    if ( cb->guard1 != CB_GUARD || cb->guard2 != cb->guard1 )
    {
      croak("Got a callback with improper guards: 0x%X, 0x%X", cb->guard1, cb->guard2);
    }

    dSP;
    dTARGET;
    PUSHMARK(SP);
    WebGPU__Direct__ErrorCallback tm_type = newSV(0); 	sv_setiv(tm_type, (IV)type);
; 
    XPUSHs(tm_type); 
    WebGPU__Direct__ErrorCallback tm_message = newSV(0); 	sv_setpv((SV*)tm_message, message);
; 
    XPUSHs(tm_message); 
    XPUSHs(cb->data);
    PUTBACK;
    call_sv((SV *)cb->perlsub, G_VOID);
  }

void WebGPU__Direct__QueueWorkDoneCallback__callback( WGPUQueueWorkDoneStatus status, void * userdata )
  {
    cb_data *cb = (cb_data *)userdata;
    if ( cb->guard1 != CB_GUARD || cb->guard2 != cb->guard1 )
    {
      croak("Got a callback with improper guards: 0x%X, 0x%X", cb->guard1, cb->guard2);
    }

    dSP;
    dTARGET;
    PUSHMARK(SP);
    WebGPU__Direct__QueueWorkDoneCallback tm_status = newSV(0); 	sv_setiv(tm_status, (IV)status);
; 
    XPUSHs(tm_status); 
    XPUSHs(cb->data);
    PUTBACK;
    call_sv((SV *)cb->perlsub, G_VOID);
  }

void WebGPU__Direct__RequestAdapterCallback__callback( WGPURequestAdapterStatus status, WGPUAdapter adapter, char const * message, void * userdata )
  {
    cb_data *cb = (cb_data *)userdata;
    if ( cb->guard1 != CB_GUARD || cb->guard2 != cb->guard1 )
    {
      croak("Got a callback with improper guards: 0x%X, 0x%X", cb->guard1, cb->guard2);
    }

    dSP;
    dTARGET;
    PUSHMARK(SP);
    WebGPU__Direct__RequestAdapterCallback tm_status = newSV(0); 	sv_setiv(tm_status, (IV)status);
; 
    XPUSHs(tm_status); 
    WebGPU__Direct__RequestAdapterCallback tm_adapter = newSV(0);     tm_adapter = WGPUAdapter__wrap(adapter);
; 
    XPUSHs(tm_adapter); 
    WebGPU__Direct__RequestAdapterCallback tm_message = newSV(0); 	sv_setpv((SV*)tm_message, message);
; 
    XPUSHs(tm_message); 
    XPUSHs(cb->data);
    PUTBACK;
    call_sv((SV *)cb->perlsub, G_VOID);
  }

void WebGPU__Direct__RequestDeviceCallback__callback( WGPURequestDeviceStatus status, WGPUDevice device, char const * message, void * userdata )
  {
    cb_data *cb = (cb_data *)userdata;
    if ( cb->guard1 != CB_GUARD || cb->guard2 != cb->guard1 )
    {
      croak("Got a callback with improper guards: 0x%X, 0x%X", cb->guard1, cb->guard2);
    }

    dSP;
    dTARGET;
    PUSHMARK(SP);
    WebGPU__Direct__RequestDeviceCallback tm_status = newSV(0); 	sv_setiv(tm_status, (IV)status);
; 
    XPUSHs(tm_status); 
    WebGPU__Direct__RequestDeviceCallback tm_device = newSV(0);     tm_device = WGPUDevice__wrap(device);
; 
    XPUSHs(tm_device); 
    WebGPU__Direct__RequestDeviceCallback tm_message = newSV(0); 	sv_setpv((SV*)tm_message, message);
; 
    XPUSHs(tm_message); 
    XPUSHs(cb->data);
    PUTBACK;
    call_sv((SV *)cb->perlsub, G_VOID);
  }

