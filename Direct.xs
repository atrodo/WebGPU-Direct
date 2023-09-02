#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <webgpu/webgpu.h>

void * _get_struct_ptr(pTHX_ SV *obj, SV *base)
{
  if ( !SvOK(obj) )
  {
    return NULL;
  }

  if ( !sv_isobject(obj) )
  {
    croak("%s is not an object", SvPVbyte_nolen(obj));
  }
  if ( base )
  {
    if (!sv_derived_from(obj, SvPVbyte_nolen(base)))
    {
      croak("_get_struct_ptr: %s is not of type %s", SvPVbyte_nolen(obj), SvPVbyte_nolen(base));
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

SV *_new_opaque( SV *CLASS, void *n)
{
  if ( n == NULL )
  {
    return SvREFCNT_inc(newSV(0));
  }

  SV *h = newSViv( *(int *)n);
  SV *RETVAL = sv_2mortal(newRV(h));

  sv_magicext((SV *)h, NULL, PERL_MAGIC_ext, NULL, (const char *)n, 0);
  sv_bless(RETVAL, gv_stashpv(SvPV_nolen(CLASS), GV_ADD));
  return SvREFCNT_inc(RETVAL);
}

/* ------------------------------------------------------------------
    {
      set      => 'Sets the field of the struct',
      unpack   => 'Sets the perl hash from the struct',
      pack     => 'Sets the struct from the perl hash',
      find     => '',
      store    => 'Sets the perl hash and packs the object',
      find_set => 'Old Alias for pack',
    }
   ------------------------------------------------------------------ */

/* ------------------------------------------------------------------
   obj
   ------------------------------------------------------------------ */

void _set_obj(pTHX_ SV *new_value, void *field, size_t size, SV *base)
{
  if ( !base )
  {
    croak("Could not find requirement base for %s", SvPV_nolen(new_value));
  }

  if ( !size )
  {
    croak("Could not find size for %s", SvPV_nolen(new_value));
  }

  void *v = SvOK(new_value) ? _get_struct_ptr(aTHX_ new_value, base) : NULL;
  Copy(v, field, size, char);
}

int _mg_set_obj(pTHX_ SV* sv, MAGIC* mg)
{
  SV *base = mg->mg_obj;
  _set_obj(aTHX_ sv, (void *) mg->mg_ptr, 0, base);
  return 0;
}

STATIC MGVTBL _mg_vtbl_obj = {
  .svt_set = _mg_set_obj
};

SV *_unpack_obj(pTHX_ HV *h, const char *key, I32 klen, void *field, size_t size, SV* base)
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

SV *_pack_obj(pTHX_ HV *h, const char *key, I32 klen, void *field, size_t size, SV *base)
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
    return _unpack_obj(aTHX_ h, key, klen, field, size, base);
  }

  // Save the new value to the field
  _set_obj(aTHX_ *f, field, size, base);
  SvREFCNT_inc(*f);

  // If the struct ptrs differ, build a new object to store
  // Its a bit of action at a distance, but it reflects what the C
  // level would be doing
  if ( SvOK(*f) && _get_struct_ptr(aTHX_ *f, base) != field )
  {
    return _unpack_obj(aTHX_ h, key, klen, field, size, base);
  }

  return *f;
}

SV *_find_obj(pTHX_ HV *h, const char *key, I32 klen, void *field, size_t size, SV *base)
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
    return _unpack_obj(aTHX_ h, key, klen, field, size, base);
  }

  return *f;
}

void _store_obj(pTHX_ HV *h, const char *key, I32 klen, void *field, size_t size, SV* base, SV *value)
{
  SvREFCNT_inc(value);
  SV **f = hv_store(h, key, klen, value, 0);

  if ( !f )
  {
    SvREFCNT_dec(value);
    croak("Could not save value to hash for %s in type %s", key, SvPV_nolen(base));
  }

  _pack_obj(aTHX_ h, key, klen, field, size, base);

  return;
}

SV *_find_set_obj(pTHX_ HV *h, const char *key, I32 klen, void *field, size_t size, SV* base)
{
  return _pack_obj(aTHX_ h, key, klen, field, size, base);
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
  SV **f = hv_store(h, key, klen, value, 0);

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
   opaque (Impl)
   ------------------------------------------------------------------ */

void _set_opaque(pTHX_ SV *new_value, void **field, SV *base)
{
  if ( !base )
  {
    croak("Could not find requirement base for %s", SvPV_nolen(new_value));
  }

  void *v = SvOK(new_value) ? _get_struct_ptr(aTHX_ new_value, base) : NULL;
  *field = v;
}

int _mg_set_opaque(pTHX_ SV* sv, MAGIC* mg)
{
  SV *base = mg->mg_obj;
  _set_opaque(aTHX_ sv, (void *) mg->mg_ptr, base);
  return 0;
}

STATIC MGVTBL _mg_vtbl_opaque = {
  .svt_set = _mg_set_opaque
};

SV *_unpack_opaque(pTHX_ HV *h, const char *key, I32 klen, void **field, SV* base)
{
  SV **f = NULL;

  if ( field == NULL )
  {
    croak("The field value for void must not be null, for %s{%s}", SvPV_nolen(base), key);
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
    SV *val = _new_opaque(base, *field);
    SvREFCNT_inc(val);
    f = hv_store(h, key, klen, val, 0);

    if ( !f )
    {
      SvREFCNT_dec(val);
      croak("Could not save value to hash for %s in type %s", key, SvPV_nolen(base));
    }
  }

  return *f;
}

SV *_pack_opaque(pTHX_ HV *h, const char *key, I32 klen, void **field, SV *base)
{
  SV **f;
  SV *fp;

  if ( field == NULL )
  {
    croak("The field value to _pack_opaque must not be null, for %s{%s}", SvPV_nolen(base), key);
  }

  // Find the field from the hash
  f = hv_fetch(h, key, klen, 0);

  // If the field is not found, create a default one
  if ( !( f && *f ) )
  {
    return _unpack_opaque(aTHX_ h, key, klen, field, base);
  }

  // Save the new value to the field
  _set_opaque(aTHX_ *f, field, base);
  SvREFCNT_inc(*f);

  return *f;
}

SV *_find_opaque(pTHX_ HV *h, const char *key, I32 klen, void **field, SV *base)
{
  SV **f;

  if ( field == NULL )
  {
    croak("The field value to _find_opaque must not be null, for %s{%s}", SvPV_nolen(base), key);
  }

  // Find the field from the hash
  f = hv_fetch(h, key, klen, 0);

  // If the field is not found, create a default one
  if ( !( f && *f ) )
  {
    return _unpack_opaque(aTHX_ h, key, klen, field, base);
  }

  return *f;
}

void _store_opaque(pTHX_ HV *h, const char *key, I32 klen, void **field, SV* base, SV *value)
{
  SvREFCNT_inc(value);
  SV **f = hv_store(h, key, klen, value, 0);

  if ( !f )
  {
    SvREFCNT_dec(value);
    croak("Could not save value to hash for %s in type %s", key, SvPV_nolen(base));
  }

  _pack_opaque(aTHX_ h, key, klen, field, base);

  return;
}

SV *_find_set_opaque(pTHX_ HV *h, const char *key, I32 klen, void **field, SV* base)
{
  return _pack_opaque(aTHX_ h, key, klen, field, base);
}

/* ------------------------------------------------------------------
   void
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
  SV **f = hv_store(h, key, klen, value, 0);

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

#define _setup_x(type, ft, constr) \
int _mg_set_##type(pTHX_ SV* sv, MAGIC* mg)                                     \
{                                                                               \
  _set_##type(aTHX_ sv, (void *) mg->mg_ptr);                                   \
  return 0;                                                                     \
}                                                                               \
                                                                                \
STATIC MGVTBL _mg_vtbl_##type = {                                               \
  .svt_set = _mg_set_##type                                                     \
};                                                                              \
                                                                                \
SV *_unpack_##type(pTHX_ HV *h, const char *key, I32 klen, ft field)            \
{                                                                               \
  SV **f = NULL;                                                                \
  SV *val = constr;                                                             \
  SvREFCNT_inc(val);                                                            \
  f = hv_store(h, key, klen, val, 0);                                           \
                                                                                \
  if ( !f )                                                                     \
  {                                                                             \
    SvREFCNT_dec(val);                                                          \
    croak("Could not save value to hash for %s", key);                          \
  }                                                                             \
                                                                                \
  return *f;                                                                    \
}                                                                               \
                                                                                \
SV *_pack_##type(pTHX_ HV *h, const char *key, I32 klen, ft field)              \
{                                                                               \
  SV **f;                                                                       \
                                                                                \
  /* Find the field from the hash */                                            \
  f = hv_fetch(h, key, klen, 0);                                                \
                                                                                \
  /* If the field is not found, create a default one */                         \
  if ( !( f && *f ) )                                                           \
  {                                                                             \
    return _unpack_##type(aTHX_ h, key, klen, field);                           \
  }                                                                             \
                                                                                \
  /* Save the new value to the field */                                         \
  _set_##type(aTHX_ *f, field);                                                 \
  SvREFCNT_inc(*f);                                                             \
                                                                                \
  return *f;                                                                    \
}                                                                               \
                                                                                \
void _store_##type(pTHX_ HV *h, const char *key, I32 klen, ft field, SV *value)  \
{                                                                               \
  SvREFCNT_inc(value);                                                          \
  SV **f = hv_store(h, key, klen, value, 0);                                    \
                                                                                \
  if ( !f )                                                                     \
  {                                                                             \
    SvREFCNT_dec(value);                                                        \
    croak("Could not save value to hash for %s", key);                          \
  }                                                                             \
                                                                                \
  _pack_##type(aTHX_ h, key, klen, field);                                      \
                                                                                \
  return;                                                                       \
}                                                                               \
                                                                                \
SV *_find_set_##type(pTHX_ HV *h, const char *key, I32 klen, ft field)          \
{                                                                               \
  return _pack_##type(aTHX_ h, key, klen, field);                               \
}                                                                               \

/* ------------------------------------------------------------------
   str
   ------------------------------------------------------------------ */

void _set_str(pTHX_ SV *new_value, const char **field)
{
  char *v = SvPVbyte_nolen(new_value);
  *field = v;
}

_setup_x(str, const char **, newSVpv(*field, 0));

/* ------------------------------------------------------------------
   enum
   ------------------------------------------------------------------ */

void _set_enum(pTHX_ SV *new_value, I32 *field)
{
  I32 v = (I32)SvIV(new_value);
  *field = v;
}

_setup_x(enum, void *, newSViv(*(int *)field));

/* ------------------------------------------------------------------
   bool
   ------------------------------------------------------------------ */

void _set_bool(pTHX_ SV *new_value, bool *field)
{
  bool v = (bool)SvIV(new_value);
  *field = v;
}

_setup_x(bool, bool *, newSViv(*field));

/* ------------------------------------------------------------------
   double
   ------------------------------------------------------------------ */

void _set_double(pTHX_ SV *new_value, double *field)
{
  double v = (double)SvNV(new_value);
  *field = v;
}

_setup_x(double, double *, newSVnv(*field));

/* ------------------------------------------------------------------
   float
   ------------------------------------------------------------------ */

void _set_float(pTHX_ SV *new_value, float *field)
{
  float v = (U16)SvNV(new_value);
  *field = v;
}

_setup_x(float, float *, newSVnv(*field));

/* ------------------------------------------------------------------
   uint16_t
   ------------------------------------------------------------------ */

void _set_uint16_t(pTHX_ SV *new_value, U16 *field)
{
  U16 v = (U16)SvIV(new_value);
  *field = v;
}

_setup_x(uint16_t, uint16_t *, newSViv(*field));

/* ------------------------------------------------------------------
   uint32_t
   ------------------------------------------------------------------ */

void _set_uint32_t(pTHX_ SV *new_value, U32 *field)
{
  U32 v = (U32)SvIV(new_value);
  *field = v;
}

_setup_x(uint32_t, uint32_t *, newSViv(*field));

/* ------------------------------------------------------------------
   uint64_t
   ------------------------------------------------------------------ */

void _set_uint64_t(pTHX_ SV *new_value, U64 *field)
{
  U64 v = (U64)SvIV(new_value);
  *field = v;
}

_setup_x(uint64_t, uint64_t *, newSViv(*field));

/* ------------------------------------------------------------------
   int32_t
   ------------------------------------------------------------------ */

void _set_int32_t(pTHX_ SV *new_value, I32 *field)
{
  I32 v = (I32)SvIV(new_value);
  *field = v;
}

_setup_x(int32_t, int32_t *, newSViv(*field));

/* ------------------------------------------------------------------
   size_t
   ------------------------------------------------------------------ */

void _set_size_t(pTHX_ SV *new_value, size_t *field)
{
  Size_t v = (Size_t)SvIV(new_value);
  *field = v;
}

_setup_x(size_t, size_t *, newSViv(*field));

/* ------------------------------------------------------------------
   END
   ------------------------------------------------------------------ */

#include "xs/webgpu.c"
#include "xs/x11.c"

MODULE = WebGPU::Direct		PACKAGE = WebGPU::Direct::XS		PREFIX = wgpu

INCLUDE: xs/webgpu.xs

MODULE = WebGPU::Direct		PACKAGE = WebGPU::Direct		PREFIX = wgpu

WebGPU::Direct::SurfaceDescriptorFromXlibWindow
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
