#define PERL_NO_GET_CONTEXT
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

#define _find_set_x(type, init) \
SV *_find_set_##type(pTHX_ HV *h, const char *key, I32 klen, void *field)      \
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
  return fp;                                                                   \
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

_find_set_x(str, newSVpvs(""));

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

_find_set_x(bool, newSViv(FALSE));

#include "xs/webgpu.c"

MODULE = WebGPU::Direct		PACKAGE = WebGPU::Direct::XS		PREFIX = wgpu

INCLUDE: xs/webgpu.xs

#ifdef HAS_X11

MODULE = WebGPU::Direct         PACKAGE = WebGPU::Direct::XS::Backend         PREFIX = wgpu

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


#endif
