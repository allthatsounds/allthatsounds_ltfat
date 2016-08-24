#ifndef _LTFAT_GOERTZEL_H
#define _LTFAT_GOERTZEL_H

typedef enum
{
    CZT_NEXTFASTFFT,
    CZT_NEXTPOW2
} czt_ffthint;

#endif


/*
Goertzel algorithm
*/
// This is opaque pointer
typedef struct LTFAT_NAME(gga_plan_struct) *LTFAT_NAME(gga_plan);

LTFAT_API LTFAT_NAME(gga_plan)
LTFAT_NAME(gga_init)(const LTFAT_REAL *indVecPtr,
                     const ltfatInt M, const ltfatInt L);

LTFAT_API void
LTFAT_NAME(gga_done)(LTFAT_NAME(gga_plan) plan);


LTFAT_API
void LTFAT_NAME(gga)(const LTFAT_TYPE *fPtr, const LTFAT_REAL *indVecPtr,
                     const ltfatInt L, const ltfatInt W, const ltfatInt M,
                     LTFAT_COMPLEX *cPtr);

LTFAT_API void
LTFAT_NAME(gga_execute)(LTFAT_NAME(gga_plan) p,
                        const LTFAT_TYPE *fPtr,
                        const ltfatInt W,
                        LTFAT_COMPLEX *cPtr);


/*
Chirped Z transform
*/
// This is opaque pointer
typedef struct LTFAT_NAME(chzt_plan_struct) *LTFAT_NAME(chzt_plan);

LTFAT_API void
LTFAT_NAME(chzt)(const LTFAT_TYPE *fPtr, const ltfatInt L,
                      const ltfatInt W, const ltfatInt K,
                      const LTFAT_REAL deltao, const LTFAT_REAL o,
                      LTFAT_COMPLEX *cPtr);

LTFAT_API void
LTFAT_NAME(chzt_execute)(LTFAT_NAME(chzt_plan) p, const LTFAT_TYPE *fPtr,
                         const ltfatInt W, LTFAT_COMPLEX *cPtr);

LTFAT_API LTFAT_NAME(chzt_plan)
LTFAT_NAME(chzt_init)(const ltfatInt K, const ltfatInt L,
                      const LTFAT_REAL deltao, const LTFAT_REAL o,
                      const unsigned fftw_flags, czt_ffthint hint);

LTFAT_API
void LTFAT_NAME(chzt_done)(LTFAT_NAME(chzt_plan) p);




LTFAT_API void
LTFAT_NAME(chzt_fac)(const LTFAT_TYPE *fPtr, const ltfatInt L,
                     const ltfatInt W, const ltfatInt K,
                     const LTFAT_REAL deltao, const LTFAT_REAL o,
                     LTFAT_COMPLEX *cPtr);

LTFAT_API void
LTFAT_NAME(chzt_fac_execute)(LTFAT_NAME(chzt_plan) p, const LTFAT_TYPE *fPtr,
                             const ltfatInt W, LTFAT_COMPLEX *cPtr);

LTFAT_API LTFAT_NAME(chzt_plan)
LTFAT_NAME(chzt_fac_init)(const ltfatInt K, const ltfatInt L,
                          const LTFAT_REAL deltao, const LTFAT_REAL o,
                          const unsigned fftw_flags, czt_ffthint hint);
