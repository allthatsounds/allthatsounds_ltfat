#ifndef _LTFAT_WAVELETS_H
#define _LTFAT_WAVELETS_H


typedef enum
{
    PER,
    PERDEC,
    PPD,
    SYM,
    EVEN,
    SYMW,
    ASYM,
    ODD,
    ASYMW,
    SP0,
    ZPD,
    ZERO,
    VALID,
    BAD_TYPE
} ltfatExtType;

ltfatExtType ltfatExtStringToEnum(const char* extType);

LTFAT_API
ltfatInt filterbank_td_size(const ltfatInt L, const ltfatInt a,
                            const ltfatInt gl, const ltfatInt offset,
                            const ltfatExtType ext);

#endif

// CAN BE INCLUDED MORE THAN ONCE


LTFAT_API void
LTFAT_NAME(extend_left)(const LTFAT_TYPE *in, ltfatInt inLen, LTFAT_TYPE *buffer, ltfatInt buffLen, ltfatInt filtLen, ltfatExtType ext, ltfatInt a);

LTFAT_API void
LTFAT_NAME(extend_right)(const LTFAT_TYPE *in, ltfatInt inLen, LTFAT_TYPE *buffer, ltfatInt filtLen, ltfatExtType ext, ltfatInt a);




LTFAT_API void
LTFAT_NAME(convsub_td)(const LTFAT_TYPE *f, const LTFAT_TYPE *g,
                       const ltfatInt L, const ltfatInt gl, const ltfatInt a, const ltfatInt skip,
                       LTFAT_TYPE *c, ltfatExtType ext);


LTFAT_API void
LTFAT_NAME(upconv_td)(const LTFAT_TYPE *c, const LTFAT_TYPE *g,
                      const ltfatInt L,  const ltfatInt gl, const ltfatInt a, const ltfatInt skip,
                      LTFAT_TYPE *f, ltfatExtType ext);


LTFAT_API void
LTFAT_NAME(filterbank_td)(const LTFAT_TYPE *f, const LTFAT_TYPE *g[],
                          const ltfatInt L, const ltfatInt gl[], const ltfatInt W,
                          const ltfatInt a[], const ltfatInt skip[], const ltfatInt M,
                          LTFAT_TYPE *c[], ltfatExtType ext);


LTFAT_API void
LTFAT_NAME(ifilterbank_td)(const LTFAT_TYPE *c[], const LTFAT_TYPE *g[],
                           const ltfatInt L, const ltfatInt gl[], const ltfatInt W, const ltfatInt a[],
                           const ltfatInt skip[], const ltfatInt M, LTFAT_TYPE *f,
                           ltfatExtType ext);

LTFAT_API void
LTFAT_NAME(atrousfilterbank_td)(const LTFAT_TYPE *f, const LTFAT_TYPE *g[],
                                const ltfatInt L, const ltfatInt gl[], const ltfatInt W,
                                const ltfatInt a[], const ltfatInt skip[], const ltfatInt M,
                                LTFAT_TYPE *c, ltfatExtType ext);

LTFAT_API void
LTFAT_NAME(iatrousfilterbank_td)(const LTFAT_TYPE *c, const LTFAT_TYPE *g[],
                                 const ltfatInt L, const ltfatInt gl[], const ltfatInt W, const ltfatInt a[],
                                 const ltfatInt skip[], const ltfatInt M, LTFAT_TYPE *f,
                                 ltfatExtType ext);


LTFAT_API void
LTFAT_NAME(atrousconvsub_td)(const LTFAT_TYPE *f, const LTFAT_TYPE *g,
                             const ltfatInt L, const ltfatInt gl,
                             const ltfatInt ga, ltfatInt skip,
                             LTFAT_TYPE *c, ltfatExtType ext);

LTFAT_API void
LTFAT_NAME(atrousupconv_td)(const LTFAT_TYPE *c, const LTFAT_TYPE *g,
                            const ltfatInt L, const ltfatInt gl,
                            const ltfatInt ga, const ltfatInt skip,
                            LTFAT_TYPE *f, ltfatExtType ext);







