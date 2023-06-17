#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <webgpu/webgpu.h>

void * _get_struct_ptr(pTHX_ SV *obj, SV *base)
{
  if ( !sv_isobject(obj) )
  {
    croak("%s is not an object", SvPVbyte_nolen(obj));
  }
  if ( base )
  {
    if (!sv_derived_from(obj, SvPVbyte_nolen(base)))
    {
      croak("%s is not of type %s", SvPVbyte_nolen(obj), SvPVbyte_nolen(base));
    }
  }

  SV *h = SvRV(obj);
  MAGIC *mg = mg_find(h, PERL_MAGIC_ext);

  if ( mg == NULL )
  {
    return NULL;
  }

  return mg->mg_ptr;
}

SV *_void__wrap( const void *n )
{
  SV *h = newSV(0);
  SV *RETVAL = sv_2mortal(newRV(h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::Opaque", GV_ADD));
  return RETVAL;
}

/* ------------------------------------------------------------------
   obj
   ------------------------------------------------------------------ */

void _set_obj(pTHX_ SV *new_value, void **field, SV *base)
{
  if ( !base )
  {
    croak("Could not find requirement base for %s", SvPV_nolen(new_value));
  }

  void *v = SvOK(new_value) ? _get_struct_ptr(aTHX_ new_value, base) : NULL;
  *field = v;
}

int _mg_set_obj(pTHX_ SV* sv, MAGIC* mg)
{
  SV *base = mg->mg_obj;
  _set_obj(aTHX_ sv, (void *) mg->mg_ptr, base);
  return 0;
}

STATIC MGVTBL _mg_vtbl_obj = {
  .svt_set = _mg_set_obj
};

SV *_find_set_obj(pTHX_ HV *h, const char *key, I32 klen, void *field, SV* base)
{
  SV **f;
  SV *fp;

  f = hv_fetch(h, key, klen, 0);
  if ( f && *f )
  {
    fp = *f;
  }
  else
  {
    fp = newSV(0);
    sv_magicext(fp, base, PERL_MAGIC_ext, &_mg_vtbl_obj, (const char *)field, 0);
    hv_store(h, key, klen, fp, 0);
  }
  _set_obj(aTHX_ fp, field, base);

  return fp;
}
/* ------------------------------------------------------------------
   void (Impl)
   ------------------------------------------------------------------ */

void _set_void(pTHX_ SV *new_value, void **field, SV *base)
{
  if ( !base )
  {
    croak("Could not find requirement base for %s", SvPV_nolen(new_value));
  }

  void *v = SvOK(new_value) ? _get_struct_ptr(aTHX_ new_value, base) : NULL;
  *field = v;
}

int _mg_set_void(pTHX_ SV* sv, MAGIC* mg)
{
  SV *base = mg->mg_obj;
  _set_void(aTHX_ sv, (void *) mg->mg_ptr, base);
  return 0;
}

STATIC MGVTBL _mg_vtbl_void = {
  .svt_set = _mg_set_void
};

SV *_find_set_void(pTHX_ HV *h, const char *key, I32 klen, void *field, SV* base)
{
  SV **f;
  SV *fp;

  f = hv_fetch(h, key, klen, 0);
  if ( f && *f )
  {
    fp = *f;
  }
  else
  {
    fp = newSV(0);
    sv_magicext(fp, base, PERL_MAGIC_ext, &_mg_vtbl_void, (const char *)field, 0);
    hv_store(h, key, klen, fp, 0);
  }
  _set_void(aTHX_ fp, field, base);

  return fp;
}

/* Integer and Floating types */ 

#define _find_set_x(type, init, rt, cast) \
rt _find_set_##type(pTHX_ HV *h, const char *key, I32 klen, void *field)      \
{                                                                              \
  SV **f;                                                                      \
  SV *fp;                                                                      \
                                                                               \
  f = hv_fetch(h, key, klen, 0);                                               \
  if ( f && *f )                                                               \
  {                                                                            \
    fp = *f;                                                                   \
  }                                                                            \
  else                                                                         \
  {                                                                            \
    fp = init;                                                                 \
    sv_magicext(fp, NULL, PERL_MAGIC_ext, &_mg_vtbl_##type, (const char*)field, 0);    \
    hv_store(h, key, klen, fp, 0);                                             \
  }                                                                            \
  _set_##type(aTHX_ fp, field);                                                \
                                                                               \
  return cast(fp);                                                             \
}

/* ------------------------------------------------------------------
   str
   ------------------------------------------------------------------ */

void _set_str(pTHX_ SV *new_value, void **field)
{
  char *v = SvPVbyte_nolen(new_value);
  *field = v;
}

int _mg_set_str(pTHX_ SV* sv, MAGIC* mg)
{
  char **s = (char **) mg->mg_ptr;
  _set_str(aTHX_ sv, (void *) mg->mg_ptr);
  return 0;
}

STATIC MGVTBL _mg_vtbl_str = {
  .svt_set = _mg_set_str
};

_find_set_x(str, newSVpvs(""), char*, SvPVbyte_nolen);

/* ------------------------------------------------------------------
   enum
   ------------------------------------------------------------------ */

void _set_enum(pTHX_ SV *new_value, I32 *field)
{
  I32 v = (I32)SvIV(new_value);
  *field = v;
}

int _mg_set_enum(pTHX_ SV* sv, MAGIC* mg)
{
  I32 *s = (I32 *) mg->mg_ptr;
  _set_enum(aTHX_ sv, (void *) mg->mg_ptr);
  return 0;
}

STATIC MGVTBL _mg_vtbl_enum = {
  .svt_set = _mg_set_enum
};

_find_set_x(enum, newSViv(0), int, SvIV);

/* ------------------------------------------------------------------
   bool
   ------------------------------------------------------------------ */

void _set_bool(pTHX_ SV *new_value, bool *field)
{
  bool v = (bool)SvIV(new_value);
  *field = v;
}

int _mg_set_bool(pTHX_ SV* sv, MAGIC* mg)
{
  bool *s = (bool *) mg->mg_ptr;
  _set_bool(aTHX_ sv, (void *) mg->mg_ptr);
  return 0;
}

STATIC MGVTBL _mg_vtbl_bool = {
  .svt_set = _mg_set_bool
};

_find_set_x(bool, newSViv(FALSE), bool, SvIV);

/* ------------------------------------------------------------------
   double
   ------------------------------------------------------------------ */

void _set_double(pTHX_ SV *new_value, double *field)
{
  double v = (double)SvNV(new_value);
  *field = v;
}

int _mg_set_double(pTHX_ SV* sv, MAGIC* mg)
{
  double *s = (double *) mg->mg_ptr;
  _set_double(aTHX_ sv, (void *) mg->mg_ptr);
  return 0;
}

STATIC MGVTBL _mg_vtbl_double = {
  .svt_set = _mg_set_double
};

_find_set_x(double, newSVnv(0), double, SvNV);

/* ------------------------------------------------------------------
   float
   ------------------------------------------------------------------ */

void _set_float(pTHX_ SV *new_value, float *field)
{
  float v = (U16)SvNV(new_value);
  *field = v;
}

int _mg_set_float(pTHX_ SV* sv, MAGIC* mg)
{
  float *s = (float *) mg->mg_ptr;
  _set_float(aTHX_ sv, (void *) mg->mg_ptr);
  return 0;
}

STATIC MGVTBL _mg_vtbl_float = {
  .svt_set = _mg_set_float
};

_find_set_x(float, newSVnv(0), float, SvNV);

/* ------------------------------------------------------------------
   uint16_t
   ------------------------------------------------------------------ */

void _set_uint16_t(pTHX_ SV *new_value, U16 *field)
{
  U16 v = (U16)SvIV(new_value);
  *field = v;
}

int _mg_set_uint16_t(pTHX_ SV* sv, MAGIC* mg)
{
  U16 *s = (U16 *) mg->mg_ptr;
  _set_uint16_t(aTHX_ sv, (void *) mg->mg_ptr);
  return 0;
}

STATIC MGVTBL _mg_vtbl_uint16_t = {
  .svt_set = _mg_set_uint16_t
};

_find_set_x(uint16_t, newSViv(0), uint16_t, SvIV);

/* ------------------------------------------------------------------
   uint32_t
   ------------------------------------------------------------------ */

void _set_uint32_t(pTHX_ SV *new_value, U32 *field)
{
  U32 v = (U32)SvIV(new_value);
  *field = v;
}

int _mg_set_uint32_t(pTHX_ SV* sv, MAGIC* mg)
{
  U32 *s = (U32 *) mg->mg_ptr;
  _set_uint32_t(aTHX_ sv, (void *) mg->mg_ptr);
  return 0;
}

STATIC MGVTBL _mg_vtbl_uint32_t = {
  .svt_set = _mg_set_uint32_t
};

_find_set_x(uint32_t, newSViv(0), uint32_t, SvIV);

/* ------------------------------------------------------------------
   uint64_t
   ------------------------------------------------------------------ */

void _set_uint64_t(pTHX_ SV *new_value, U64 *field)
{
  U64 v = (U64)SvIV(new_value);
  *field = v;
}

int _mg_set_uint64_t(pTHX_ SV* sv, MAGIC* mg)
{
  U64 *s = (U64 *) mg->mg_ptr;
  _set_uint64_t(aTHX_ sv, (void *) mg->mg_ptr);
  return 0;
}

STATIC MGVTBL _mg_vtbl_uint64_t = {
  .svt_set = _mg_set_uint64_t
};

_find_set_x(uint64_t, newSViv(0), uint64_t, SvIV);

/* ------------------------------------------------------------------
   int32_t
   ------------------------------------------------------------------ */

void _set_int32_t(pTHX_ SV *new_value, I32 *field)
{
  I32 v = (I32)SvIV(new_value);
  *field = v;
}

int _mg_set_int32_t(pTHX_ SV* sv, MAGIC* mg)
{
  I32 *s = (I32 *) mg->mg_ptr;
  _set_int32_t(aTHX_ sv, (void *) mg->mg_ptr);
  return 0;
}

STATIC MGVTBL _mg_vtbl_int32_t = {
  .svt_set = _mg_set_int32_t
};

_find_set_x(int32_t, newSViv(0), int32_t, SvIV);

/* ------------------------------------------------------------------
   END
   ------------------------------------------------------------------ */

#include "xs/webgpu.c"

MODULE = WebGPU::Direct		PACKAGE = WebGPU::Direct::XS		PREFIX = wgpu

INCLUDE: xs/webgpu.xs

#ifdef HAS_X11

MODULE = WebGPU::Direct         PACKAGE = WebGPU::Direct::XS::Backend         PREFIX = wgpu

=c
int
desc(w)
       WGPUSurfaceDescriptor const *w
   CODE:
       warn("%zu\n", __LINE__);
       const WGPUChainedStruct * n = w->nextInChain;
       warn("%zu\n", __LINE__);
       warn("%zx\n", w);
       warn("%zx\n", n);
       warn("%zu\n", __LINE__);
       RETVAL = w->nextInChain->sType;
       warn("%zu\n", __LINE__);
   OUTPUT:
       RETVAL

#include <X11/Xlib.h>

WGPUSurface
CreateSurface(CLASS)
        char *CLASS = NO_INIT
    PROTOTYPE: $
    CODE:
        Zero((void*)&RETVAL, sizeof(RETVAL), char);
        {
          WGPUInstance instance;
          WGPUSurface surface;
          WGPUAdapter adapter;
          WGPUDevice device;
          WGPUSwapChainDescriptor config;
          WGPUSwapChain swapchain;
          instance = wgpuCreateInstance(&(const WGPUInstanceDescriptor){0});
          warn("%d\n", &(const WGPUInstanceDescriptor){0});

	  int xw = 640;
	  int yh = 360;
	  {
            Display *display = NULL;
            Window window = 0;
	    display = XOpenDisplay(NULL);

	    if (!display)
	    {
	      XSRETURN_UNDEF;
	    }

	    window = XCreateSimpleWindow(display, DefaultRootWindow(display),
				      10, 10,
				      xw, yh,
				      1, 0,
				      0
				     );

	    int scrnum = DefaultScreen( display );
	    Window root = RootWindow( display, scrnum );

	    XMapWindow( display, window );

            const WGPUSurfaceDescriptor *d = &(const WGPUSurfaceDescriptor){
              .nextInChain =
                  (const WGPUChainedStruct *)&(
                      const WGPUSurfaceDescriptorFromXlibWindow){
                      .chain =
                          (const WGPUChainedStruct){
                              .sType = WGPUSType_SurfaceDescriptorFromXlibWindow,
                          },
                      .display = display,
                      .window = window,
                  },
            };
            RETVAL = wgpuInstanceCreateSurface(instance, d);
	  }
        }
    OUTPUT:
        RETVAL

WGPUSurfaceDescriptorFromXlibWindow
new_window_x11(CLASS, xw, yh)
        char *CLASS = NO_INIT
        int   xw
        int   yh
    PROTOTYPE: $
    CODE:
        Zero((void*)&RETVAL, sizeof(RETVAL), char);
        xw = xw || 640;
        yh = yh || 360;
        {
          RETVAL.chain.sType = WGPUSType_SurfaceDescriptorFromXlibWindow;
          RETVAL.display = XOpenDisplay(NULL);

          if (!RETVAL.display)
          {
            XSRETURN_UNDEF;
          }

          RETVAL.window = XCreateSimpleWindow(RETVAL.display, DefaultRootWindow(RETVAL.display),
                                    10, 10,
                                    xw, yh,
                                    1, 0,
                                    0
                                   );

          int scrnum = DefaultScreen( RETVAL.display );
          Window root = RootWindow( RETVAL.display, scrnum );

          XMapWindow( RETVAL.display, RETVAL.window );
        }
    OUTPUT:
        RETVAL


=cut
#endif
