#ifndef _LTFAT_MEX_FILE
#define _LTFAT_MEX_FILE

#define ISNARGINEQ 9
#define TYPEDEPARGS 0
#define SINGLEARGS
#define REALARGS

#endif /* _LTFAT_MEX_FILE */

#define MEX_FILE __BASE_FILE__
#include "ltfat_mex_template_helper.h"

#if defined(LTFAT_SINGLE) || defined(LTFAT_DOUBLE)
#include "ltfat_types.h"

// Calling convention:
//      0     1    2                          0 1 2 3   4  5     6       7            8
// [tgrad,fgrad,logs] = comp_nufbphasegrad(abss,N,a,M,tfr,fc,NEIGH,posInfo,gderivweight);

void LTFAT_NAME(ltfatMexFnc)( int UNUSED(nlhs), mxArray* plhs[],
                              int UNUSED(nrhs), const mxArray* prhs[] )
{
    // Get inputs
    const mxArray*   mxs = prhs[0];
    const LTFAT_REAL*  s = mxGetData(mxs);
    const double*      N = mxGetPr(prhs[1]);
    const double*      a = mxGetPr(prhs[2]);
    mwSize             M = (mwSize)mxGetScalar(prhs[3]);
    const double*    tfr = mxGetPr(prhs[4]);
    const double*     fc = mxGetPr(prhs[5]);
    const mxArray* mxneigh = prhs[6];
    const double*  neigh = mxGetPr(mxneigh);
    const double* posInfo = mxGetPr(prhs[7]);
    double   gderivweight = mxGetScalar(prhs[8]);

    mwSize Nsum = mxGetM(mxs);
    mwSize W = mxGetN(mxs);

    ltfatInt* NPtr = ltfat_malloc(M * sizeof * N);
    ltfatInt* NEIGHPtr = ltfat_malloc(mxGetNumberOfElements(mxneigh) * sizeof * N);

    for (mwSize m = 0; m < M; m++)
    {
        NPtr[m] = (ltfatInt) N[m];
    }

    for (mwSize ii = 0; ii < mxGetNumberOfElements(mxneigh); ii++)
    {
        NEIGHPtr[ii] = (ltfatInt) neigh[ii];
    }

    // Create empty output matrix
    plhs[0] = ltfatCreateNdimArray(mxGetNumberOfDimensions(mxs),
                                   mxGetDimensions(mxs),
                                   LTFAT_MX_CLASSID, mxREAL);

    plhs[1] = ltfatCreateNdimArray(mxGetNumberOfDimensions(mxs),
                                   mxGetDimensions(mxs),
                                   LTFAT_MX_CLASSID, mxREAL);

    plhs[2] = ltfatCreateNdimArray(mxGetNumberOfDimensions(mxs),
                                   mxGetDimensions(mxs),
                                   LTFAT_MX_CLASSID, mxREAL);

    // Get pointer to output
    LTFAT_REAL* tgrad = mxGetData(plhs[0]);
    LTFAT_REAL* fgrad = mxGetData(plhs[1]);
    LTFAT_REAL* logs  = mxGetData(plhs[2]);


    ltfat_free(NPtr);
    ltfat_free(NEIGHPtr);

}
#endif /* LTFAT_SINGLE or LTFAT_DOUBLE */
