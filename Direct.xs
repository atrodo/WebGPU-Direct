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
  SV *h = newSViv( *(int *)n);
  SV *RETVAL = sv_2mortal(newRV(h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv("WebGPU::Direct::Opaque", GV_ADD));
  return SvREFCNT_inc(RETVAL);
}

SV *_new( SV *CLASS )
{
  dSP;
  PUSHMARK(SP);
  EXTEND(SP, 1);
  PUSHs(CLASS);
  PUTBACK;

  int count = call_method("new", G_SCALAR);

  if (count != 1)
  {
    croak("Could not call new on %s\n", SvPV_nolen(CLASS));
  }

  SV *THIS = SvREFCNT_inc(POPs);

  return THIS;
}

void _unpack( SV *THIS )
{
  // Do not attempt to call unpack on undef
  if ( !SvOK(THIS) )
  {
    return;
  }

  dSP;
  PUSHMARK(SP);
  EXTEND(SP, 1);
  PUSHs(THIS);
  PUTBACK;

  int count = call_method("unpack", G_SCALAR);

  if (count != 1)
  {
    croak("Could not call unpack on %s\n", SvPV_nolen(THIS));
  }

  return;
}

SV *_new_with( SV *CLASS, void *n)
{
  if ( n == NULL )
  {
    return SvREFCNT_inc(newSV(0));
  }

  SV *h = (SV *)newHV();
  SV *RETVAL = sv_2mortal(newRV(h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv(SvPV_nolen(CLASS), GV_ADD));
  return SvREFCNT_inc(RETVAL);
}

/* ------------------------------------------------------------------
   obj
   ------------------------------------------------------------------ */

void _set_obj(pTHX_ SV *new_value, void *field, SV *base)
{
  if ( !base )
  {
    croak("Could not find requirement base for %s", SvPV_nolen(new_value));
  }

  void *v = SvOK(new_value) ? _get_struct_ptr(aTHX_ new_value, base) : NULL;
  field = v;
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

SV *_unpack_obj(pTHX_ HV *h, const char *key, I32 klen, void *field, SV* base)
{
  SV **f = NULL;

  if ( field == NULL )
  {
    croak("The field value for objptr must not be null, for %s{%s}", SvPV_nolen(base), key);
  }

  f = hv_fetch(h, key, klen, 1);

  if ( !( f && *f ) )
  {
    croak("Could not save new value for %s", key);
  }

  void *n = NULL;
  if ( sv_isobject(*f) )
  {
    n = _get_struct_ptr(aTHX_ *f, base);
  }

  if ( n == NULL || n != field )
  {
    SV *val = _new_with(base, field);
    SvREFCNT_inc(val);
    f = hv_store(h, key, klen, val, 0);

    if ( !f )
    {
      SvREFCNT_dec(val);
      croak("Could not save value to hash for %s in type %s", key, SvPV_nolen(base));
    }
    //*f  = _new_with(base, field);
  }

  _unpack(*f);

  return *f;
}

SV *_pack_obj(pTHX_ HV *h, const char *key, I32 klen, void *field, SV *base)
{
  SV **f;
  SV *fp;

  if ( field == NULL )
  {
    croak("The field value to _pack_obj must not be null, for %s{%s}", SvPV_nolen(base), key);
  }

  // Find the field from the hash
  f = hv_fetch(h, key, klen, 0);

  // If the field is not found, create a default one
  if ( !( f && *f ) )
  {
    return _unpack_obj(aTHX_ h, key, klen, field, base);
  }

  // Save the new value to the field
  _set_obj(aTHX_ *f, field, base);
  SvREFCNT_inc(*f);

  return *f;
}

SV *_find_obj(pTHX_ HV *h, const char *key, I32 klen, void *field, SV *base)
{
  SV **f;

  if ( field == NULL )
  {
    croak("The field value to _find_obj must not be null, for %s{%s}", SvPV_nolen(base), key);
  }

  // Find the field from the hash
  f = hv_fetch(h, key, klen, 0);

  // If the field is not found, create a default one
  if ( !( f && *f ) )
  {
    return _unpack_obj(aTHX_ h, key, klen, field, base);
  }

  return *f;
}

void _store_obj(pTHX_ HV *h, const char *key, I32 klen, void *field, SV* base, SV *value)
{
  SvREFCNT_inc(value);
  SV **f = hv_store(h, "next", 4, value, 0);

  if ( !f )
  {
    SvREFCNT_dec(value);
    croak("Could not save value to hash for %s in type %s", key, SvPV_nolen(base));
  }

  _pack_obj(aTHX_ h, key, klen, field, base);

  return;
}

SV *_find_set_obj(pTHX_ HV *h, const char *key, I32 klen, void *field, SV* base)
{
  return _pack_obj(aTHX_ h, key, klen, field, base);
}

/* ------------------------------------------------------------------
   objptr
   ------------------------------------------------------------------ */

void _set_objptr(pTHX_ SV *new_value, void **field, SV *base)
{
  if ( !base )
  {
    croak("Could not find requirement base for %s", SvPV_nolen(new_value));
  }

  void *v = SvOK(new_value) ? _get_struct_ptr(aTHX_ new_value, base) : NULL;
  *field = v;
}

int _mg_set_objptr(pTHX_ SV* sv, MAGIC* mg)
{
  SV *base = mg->mg_obj;
  _set_objptr(aTHX_ sv, (void *) mg->mg_ptr, base);
  return 0;
}

STATIC MGVTBL _mg_vtbl_objptr = {
  .svt_set = _mg_set_objptr
};

SV *_unpack_objptr(pTHX_ HV *h, const char *key, I32 klen, void **field, SV* base)
{
  SV **f = NULL;

  if ( field == NULL )
  {
    croak("The field value for objptr must not be null, for %s{%s}", SvPV_nolen(base), key);
  }

  f = hv_fetch(h, key, klen, 1);

  if ( !( f && *f ) )
  {
    croak("Could not save new value for %s", key);
  }

  void *n = NULL;
  if ( sv_isobject(*f) )
  {
    n = _get_struct_ptr(aTHX_ *f, base);
  }

  if ( n == NULL || n != *field )
  {

    SV *val = _new_with(base, *field);
    SvREFCNT_inc(val);
    f = hv_store(h, key, klen, val, 0);

    if ( !f )
    {
      SvREFCNT_dec(val);
      croak("Could not save value to hash for %s in type %s", key, SvPV_nolen(base));
    }
    //*f  = _new_with(base, *field);
  }

  _unpack(*f);

  return *f;
}

SV *_pack_objptr(pTHX_ HV *h, const char *key, I32 klen, void **field, SV *base)
{
  SV **f;
  SV *fp;

  if ( field == NULL )
  {
    croak("The field value to _pack_objptr must not be null, for %s{%s}", SvPV_nolen(base), key);
  }

  // Find the field from the hash
  f = hv_fetch(h, key, klen, 0);

  // If the field is not found, create a default one
  if ( !( f && *f ) )
  {
    return _unpack_objptr(aTHX_ h, key, klen, field, base);
  }

  // Save the new value to the field
  _set_objptr(aTHX_ *f, field, base);
  SvREFCNT_inc(*f);

  return *f;
}

SV *_find_objptr(pTHX_ HV *h, const char *key, I32 klen, void **field, SV *base)
{
  SV **f;

  if ( field == NULL )
  {
    croak("The field value to _find_objptr must not be null, for %s{%s}", SvPV_nolen(base), key);
  }

  // Find the field from the hash
  f = hv_fetch(h, key, klen, 0);

  // If the field is not found, create a default one
  if ( !( f && *f ) )
  {
    return _unpack_objptr(aTHX_ h, key, klen, field, base);
  }

  return *f;
}

void _store_objptr(pTHX_ HV *h, const char *key, I32 klen, void **field, SV* base, SV *value)
{
  SvREFCNT_inc(value);
  SV **f = hv_store(h, "next", 4, value, 0);

  if ( !f )
  {
    SvREFCNT_dec(value);
    croak("Could not save value to hash for %s in type %s", key, SvPV_nolen(base));
  }

  _pack_objptr(aTHX_ h, key, klen, field, base);

  return;
}

SV *_find_set_objptr(pTHX_ HV *h, const char *key, I32 klen, void **field, SV* base)
{
  return _pack_objptr(aTHX_ h, key, klen, field, base);
}

/* ------------------------------------------------------------------
   void (Impl)
   ------------------------------------------------------------------ */

void _set_void(pTHX_ SV *new_value, void *field)
{
  void *v = SvOK(new_value) ? _get_struct_ptr(aTHX_ new_value, newSVpvs("WebGPU::Direct::Opaque")) : NULL;
  field = v;
}

int _mg_set_void(pTHX_ SV* sv, MAGIC* mg)
{
  _set_void(aTHX_ sv, (void *) mg->mg_ptr);
  return 0;
}

STATIC MGVTBL _mg_vtbl_void = {
  .svt_set = _mg_set_void
};

SV *_unpack_void(pTHX_ HV *h, const char *key, I32 klen, void *field)
{
  SV **f = NULL;

  if ( field == NULL )
  {
    croak("The field value for void must not be null, for %s", key);
  }

  f = hv_fetch(h, key, klen, 1);

  if ( !( f && *f ) )
  {
    croak("Could not save new value for %s", key);
  }

  void *n = NULL;
  if ( sv_isobject(*f) )
  {
    n = _get_struct_ptr(aTHX_ *f, newSVpvs("WebGPU::Direct::Opaque"));
  }

  if ( n == NULL || n != field )
  {
    SV *val = _void__wrap(field);
    SvREFCNT_inc(val);
    f = hv_store(h, key, klen, val, 0);

    if ( !f )
    {
      SvREFCNT_dec(val);
      croak("Could not save value to hash for %s", key);
    }
  }

  return *f;
}

SV *_pack_void(pTHX_ HV *h, const char *key, I32 klen, void *field)
{
  SV **f;
  SV *fp;

  if ( field == NULL )
  {
    croak("The field value to _pack_void must not be null, for {%s}", key);
  }

  // Find the field from the hash
  f = hv_fetch(h, key, klen, 0);

  // If the field is not found, create a default one
  if ( !( f && *f ) )
  {
    return _unpack_void(aTHX_ h, key, klen, field);
  }

  // Save the new value to the field
  _set_void(aTHX_ *f, field);
  SvREFCNT_inc(*f);

  return *f;
}

SV *_find_void(pTHX_ HV *h, const char *key, I32 klen, void *field)
{
  SV **f;

  if ( field == NULL )
  {
    croak("The field value to _find_void must not be null, for {%s}", key);
  }

  // Find the field from the hash
  f = hv_fetch(h, key, klen, 0);

  // If the field is not found, create a default one
  if ( !( f && *f ) )
  {
    return _unpack_void(aTHX_ h, key, klen, field);
  }

  return *f;
}

void _store_void(pTHX_ HV *h, const char *key, I32 klen, void *field, SV *value)
{
  SvREFCNT_inc(value);
  SV **f = hv_store(h, "next", 4, value, 0);

  if ( !f )
  {
    SvREFCNT_dec(value);
    croak("Could not save value to hash for %s", key);
  }

  _pack_void(aTHX_ h, key, klen, field);

  return;
}

SV *_find_set_void(pTHX_ HV *h, const char *key, I32 klen, void *field)
{
  return _pack_void(aTHX_ h, key, klen, field);
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

#define _unpack_x(type, ft, constr) \
SV *_unpack_##type(pTHX_ HV *h, const char *key, I32 klen, ft field)           \
{                                                                              \
  SV **f;                                                                      \
  SV *fp;                                                                      \
                                                                               \
  f = hv_fetch(h, key, klen, 1);                                               \
  if ( f && *f )                                                               \
  {                                                                            \
    fp = *f;                                                                   \
  }                                                                            \
  else                                                                         \
  {                                                                            \
    croak("Could not save new value for %s", key);                             \
  }                                                                            \
  *f  = constr;                                                                \
                                                                               \
 return *f;                                                                    \
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
_unpack_x(str, const char **, newSVpv(*field, 0));

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
_unpack_x(enum, void *, newSViv(*(int *)field));

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
_unpack_x(bool, bool *, newSViv(*field));

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
_unpack_x(double, double *, newSVnv(*field));

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
_unpack_x(float, float *, newSVnv(*field));

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
_unpack_x(uint16_t, uint16_t *, newSViv(*field));

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
_unpack_x(uint32_t, uint32_t *, newSViv(*field));

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
_unpack_x(uint64_t, uint64_t *, newSViv(*field));

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
_unpack_x(int32_t, int32_t *, newSViv(*field));

/* ------------------------------------------------------------------
   END
   ------------------------------------------------------------------ */

#include "xs/webgpu.c"
#include "xs/x11.c"

MODULE = WebGPU::Direct		PACKAGE = WebGPU::Direct::XS		PREFIX = wgpu

INCLUDE: xs/webgpu.xs

MODULE = WebGPU::Direct		PACKAGE = WebGPU::Direct		PREFIX = wgpu

SV *
new_window_x11(CLASS, xw = 640, yh = 360)
        SV *  CLASS
        int   xw
        int   yh
    PROTOTYPE: $
    CODE:
#ifdef HAS_X11
        SV *THIS = _new( newSVpvs("WebGPU::Direct::SurfaceDescriptorFromXlibWindow") );
        WGPUSurfaceDescriptorFromXlibWindow *result = (WGPUSurfaceDescriptorFromXlibWindow *) _get_struct_ptr(aTHX, THIS, NULL);
        if ( ! x11_window(result, xw, yh) )
        {
          Perl_croak(aTHX_ "Could not create an X11 window");
        }

        SV *h = SvRV(THIS);
        _unpack(THIS);

        RETVAL = THIS;
#else
        Perl_croak(aTHX_ "Cannot create X11 window: X11 not found");
#endif
    OUTPUT:
        RETVAL

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

=cut


#endif
