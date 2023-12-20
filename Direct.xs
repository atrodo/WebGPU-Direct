#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <webgpu/webgpu.h>

// Call new if possible, otherwise return fields
SV *_coerce_obj( SV *CLASS, SV *fields );
SV *_new( SV *CLASS, SV *fields );

SV * _get_mg_obj(pTHX_ SV *obj, SV *base)
{
  if ( !SvOK(obj) )
  {
    return NULL;
  }

  obj = _coerce_obj(base, obj);

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

  return obj;
}

SV * _get_mg_hash(pTHX_ SV *obj, SV *base)
{
  SV *result = _get_mg_obj(aTHX_ obj, base);
  return result == NULL ? NULL : SvRV(result);
}

void * _get_mg(pTHX_ SV *obj, SV *base)
{
  SV *h = _get_mg_hash(aTHX_ obj, base);
  MAGIC *mg = mg_find(h, PERL_MAGIC_ext);

  return mg;
}

void * _get_struct_ptr(pTHX_ SV *obj, SV *base)
{
  MAGIC *mg = _get_mg(aTHX_ obj, base);

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

SV *_coerce_obj( SV *CLASS, SV *fields )
{
  // If its already an object, don't bother
  if ( sv_isobject(fields) )
  {
    return fields;
  }

  // If it's null or not a hashref, don't bother either
  if ( CLASS == NULL )
  {
    return fields;
  }
  if ( !SvROK(fields) )
  {
    return fields;
  }
  if ( SvTYPE(SvRV(fields)) != SVt_PVHV )
  {
    return fields;
  }

  return _new(CLASS, fields);
}

SV *_new( SV *CLASS, SV *fields )
{
  dSP;

  ENTER;
  SAVETMPS;

  PUSHMARK(SP);
  EXTEND(SP, 2);
  PUSHs(CLASS);
  if ( fields != NULL )
  {
    EXTEND(SP, 1);
    PUSHs(fields);
  }
  PUTBACK;

  int count = call_method("new", G_SCALAR);

  SPAGAIN;

  if (count != 1)
  {
    croak("Could not call new on %s\n", SvPV_nolen(CLASS));
  }

  SV *THIS = SvREFCNT_inc(POPs);

  PUTBACK;
  FREETMPS;
  LEAVE;

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

void _pack( SV *THIS )
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

  int count = call_method("pack", G_SCALAR);

  if (count != 1)
  {
    croak("Could not call pack on %s\n", SvPV_nolen(THIS));
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
    }
   ------------------------------------------------------------------ */

/* ------------------------------------------------------------------
   obj
   ------------------------------------------------------------------ */

void _set_obj(pTHX_ SV *new_value, void *field, Size_t size, SV *base)
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

SV *_unpack_obj(pTHX_ HV *h, const char *key, I32 klen, void *field, Size_t size, SV* base)
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

SV *_pack_obj(pTHX_ HV *h, const char *key, I32 klen, void *field, Size_t size, SV *base)
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

  SV *obj = _get_mg_obj(aTHX_ *f, base);
  ASSUME( obj != NULL );

  if ( *f != obj )
  {
    // Since we know it was coerced, we can go ahead and reuse the obj
    MAGIC *mg = _get_mg(aTHX_ obj, base);
    ASSUME( mg != NULL );
    void *old_ptr = mg->mg_ptr;
    Copy(old_ptr, field, size, char);
    mg->mg_ptr = field;
    Safefree(old_ptr);

    f = hv_store(h, key, klen, obj, 0);
  }
  else
  {
    // Save the new value to the field
    // This will copy the C struct from *f to field
    _set_obj(aTHX_ *f, field, size, base);
  }

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

SV *_find_obj(pTHX_ HV *h, const char *key, I32 klen, void *field, Size_t size, SV *base)
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

void _store_obj(pTHX_ HV *h, const char *key, I32 klen, void *field, Size_t size, SV* base, SV *value)
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

  // If _new returns something different, it coerced it up to an object
  SV *obj = _coerce_obj(base, *f);
  if ( obj != *f )
  {
    f = hv_store(h, key, klen, obj, 0);

    if ( !f )
    {
      SvREFCNT_dec(obj);
      croak("Could not save value to hash for %s in type %s", key, SvPV_nolen(base));
    }
  }

  // Save the new value to the field
  _set_objptr(aTHX_ *f, field, base);
  SvREFCNT_inc(*f);

  _pack(*f);

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

/* ------------------------------------------------------------------
   objarray
   ------------------------------------------------------------------ */

SV * _array_new(SV *base, void *n, Size_t size, Size_t count)
{
  AV *ret = newAV();
  av_extend(ret, count);

  void *field = n;
  for ( int i = 0; i < count; i++ )
  {
    SV *val = _new_with(base, n);
    SvREFCNT_inc(val);
    SV **f = av_store(ret, i, val);

    if ( !f )
    {
      SvREFCNT_dec(val);
      croak("Could not save value to array for %d in type %s", i, SvPV_nolen(base));
    }
    _unpack(*f);

    field = ((char *)field) + size;
  }

  return sv_2mortal(newRV((SV*)ret));
}

void _set_objarray(pTHX_ SV *new_value, void **field, Size_t *cntField, Size_t size, SV *base)
{
  if ( !base )
  {
    croak("Could not find requirement base for %s", SvPV_nolen(new_value));
  }

  if ( new_value == &PL_sv_undef )
  {
    *field = NULL;
    *cntField = 0;
    return;
  }

  if ( !SvROK(new_value) )
  {
    croak("The field value to _set_objarray must be a reference, for %s", SvPV_nolen(base));
  }

  if ( SvTYPE(SvRV(new_value)) != SVt_PVAV )
  {
    croak("The field value to _set_objarray must be an array reference, for %s", SvPV_nolen(base));
  }

  void *v = SvOK(new_value) ? _get_struct_ptr(aTHX_ new_value, base) : NULL;
  *field = v;
  *cntField = av_count(SvRV(new_value));
}

int _mg_set_objarray(pTHX_ SV* sv, MAGIC* mg)
{
  SV *base = mg->mg_obj;
  _set_objarray(aTHX_ sv, (void *) mg->mg_ptr, NULL, 0, base);
  return 0;
}

STATIC MGVTBL _mg_vtbl_objarray = {
  .svt_set = _mg_set_objarray
};

SV *_unpack_objarray(pTHX_ HV *h, const char *key, I32 klen, void **field, Size_t *cntField, Size_t size, SV* base)
{
  SV **f = NULL;
  SV **c = NULL;
  SV *keyCnt = NULL;
  Size_t count = 0;

  if ( field == NULL )
  {
    croak("The field value for objarray must not be null, for %s{%s}", SvPV_nolen(base), key);
  }

  f = hv_fetch(h, key, klen, 1);

  if ( !( f && *f ) )
  {
    croak("Could not save new value for %s", key);
  }

  // -1 so it removes the s at the end of the key
  keyCnt = newSVpv(key, klen-1);
  sv_catpvs(keyCnt, "Count");
  Size_t keyCntLen = sv_len(keyCnt);
  c = hv_fetch(h, SvPV_nolen(keyCnt), keyCntLen, 1);

  if ( !( c && *c ) )
  {
    croak("Could not save new value for %s", SvPV_nolen(keyCnt));
  }

  *c = newSViv(*cntField);

  void *n = NULL;
  if ( sv_isobject(*f) )
  {
    n = _get_struct_ptr(aTHX_ *f, NULL);
  }

  if ( n == NULL || n != *field )
  {
    SV *val = _array_new(base, *field, size, *cntField);

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

SV *_pack_objarray(pTHX_ HV *h, const char *key, I32 klen, void **field, Size_t *cntField, Size_t size, SV *base)
{
  SV **f;
  SV **c = NULL;
  SV *keyCnt = NULL;
  I32 keyCntLen;
  Size_t count = 0;
  void *arr = NULL;
  AV *objs = NULL;

  if ( field == NULL )
  {
    croak("The field value to _pack_objarray must not be null, for %s{%s}", SvPV_nolen(base), key);
  }

  // Find the field from the hash
  f = hv_fetch(h, key, klen, 0);

  // If the field is not found, create a default one
  if ( !( f && *f ) )
  {
    return _unpack_objarray(aTHX_ h, key, klen, field, cntField, size, base);
  }

  // -1 so it removes the s at the end of the key
  keyCnt = newSVpv(key, klen-1);
  sv_catpvs(keyCnt, "Count");
  keyCntLen = sv_len(keyCnt);

  SV *array_base = newSVsv(base);
  sv_catpvs(array_base, "::Array");

  if ( !SvROK(*f) )
  {
    croak("The field value to _pack_objarray must be a reference, for %s{%s}", SvPV_nolen(base), key);
  }

  if ( SvTYPE(SvRV(*f)) == SVt_PVHV )
  {
    AV *new_fields = newAV();

    SvREFCNT_inc(*f);
    SV **arrf = av_store(new_fields, 0, *f);
    SV **new_array = NULL;

    if ( !arrf )
    {
      SvREFCNT_dec(*f);
      croak("Could not save value to array for %s in type %s", key, SvPV_nolen(base));
    }

    *f = sv_2mortal(newRV((SV*)new_fields));
  }

  if ( SvTYPE(SvRV(*f)) != SVt_PVAV )
  {
    croak("The field value to _pack_objarray must be an array, for %s{%s}", SvPV_nolen(base), key);
  }

  objs = (AV *)SvRV(*f);
  count = av_count(objs);

  if ( count == 0 )
  {
    // TODO: Free what is there
    *f = &PL_sv_undef;
    _set_objarray(aTHX_ *f, field, cntField, size, array_base);
    return *f;
  }

  arr = _get_struct_ptr(aTHX_ (SV *)objs, array_base);
  if ( arr != NULL )
  {
    Renew(arr, (count+1) * size, char);
  }
  else
  {
    Newxz(arr, (count+1) * size, char);
  }

  void *new_ptr = arr;

  for ( Size_t i = 0; i < count; i++ )
  {
    SV **f = av_fetch(objs, i, 1);

    if ( !( f && *f ) )
    {
      croak("Could not fetch array entry %zd, for %s{%s}", i, SvPV_nolen(base), key);
    }

    SV *obj = _coerce_obj(base, *f);
    if ( obj != *f )
    {
      f = av_store(objs, i, obj);

      if ( !f )
      {
        SvREFCNT_dec(obj);
        croak("Could not save value to array for %zd, for %s{%s}", i, SvPV_nolen(base), key);
      }
    }

    assert(SvOK(*f));
    void *old_ptr = _get_struct_ptr(aTHX_ *f, base);
    if ( old_ptr && old_ptr != new_ptr )
    {
      // TODO: object should probably be duplicated (if refcnt is minimal?)
      Copy(old_ptr, new_ptr, size, char);

      MAGIC *mg = _get_mg(aTHX_ *f, base);
      if ( mg == NULL )
      {
        sv_magicext(*f, NULL, PERL_MAGIC_ext, NULL, (const char *)new_ptr, 0);
      }
      else
      {
        mg->mg_ptr = new_ptr;
      }
      Safefree(old_ptr);
    }
    else
    {
      SV *h = _get_mg_obj(aTHX_ *f, base);
      sv_magicext(h, NULL, PERL_MAGIC_ext, NULL, (const char *)new_ptr, 0);
    }

    new_ptr = ((char *)new_ptr) + size;
  }

  Zero(new_ptr, size, char);

  {
    SV *cnt = SvREFCNT_inc(newSViv(count));
    SV **cnt_f = hv_store(h, SvPV_nolen(keyCnt), keyCntLen, cnt, 0);

    if ( !cnt_f )
    {
      SvREFCNT_dec(cnt);
      croak("Could not save value to hash for %s in type %s", SvPV_nolen(keyCnt), SvPV_nolen(base));
    }
  }

  SvREFCNT_inc(*f);

  sv_magicext((SV *)objs, NULL, PERL_MAGIC_ext, NULL, (const char *)arr, 0);
  sv_bless(*f, gv_stashpv(SvPV_nolen(array_base), GV_ADD));

  _set_objarray(aTHX_ *f, field, cntField, size, array_base);

  return *f;
}

SV *_find_objarray(pTHX_ HV *h, const char *key, I32 klen, void **field, Size_t *cntField, Size_t size, SV *base)
{
  SV **f;

  if ( field == NULL )
  {
    croak("The field value to _find_objarray must not be null, for %s{%s}", SvPV_nolen(base), key);
  }

  // Find the field from the hash
  f = hv_fetch(h, key, klen, 0);

  // If the field is not found, create a default one
  if ( !( f && *f ) )
  {
    return _unpack_objarray(aTHX_ h, key, klen, field, cntField, size, base);
  }

  return *f;
}

void _store_objarray(pTHX_ HV *h, const char *key, I32 klen, void **field, Size_t *cntField, Size_t size, SV* base, SV *value)
{
  SvREFCNT_inc(value);
  SV **f = hv_store(h, key, klen, value, 0);

  if ( !f )
  {
    SvREFCNT_dec(value);
    croak("Could not save value to hash for %s in type %s", key, SvPV_nolen(base));
  }

  _pack_objarray(aTHX_ h, key, klen, field, cntField, size, base);

  return;
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
SV *_find_##type(pTHX_ HV *h, const char *key, I32 klen, ft field)              \
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
        SV *THIS = _new( newSVpvs("WebGPU::Direct::SurfaceDescriptorFromXlibWindow"), NULL );
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

