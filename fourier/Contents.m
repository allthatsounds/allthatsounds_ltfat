% LTFAT - Fourier and DCT analysis.
%
%  Peter L. Søndergaard, 2008 - 2023.
%  
%  Fourier transforms
%    DFT            -  Unitary discrete Fourier transform.
%    IDFT           -  Inverse of |dft|.
%    FFTREAL        -  FFT for real valued signals.
%    IFFTREAL       -  Inverse of |fftreal|.
%    DFRACFT        -  Discrete Fractional Fourier transform
%    FFRACFT        -  Fast Fractional Fourier transform
%    GGA            -  Generalized Goertzel Algorithm.
%    CHIRPZT        -  Chirped Z-transform.
%    FFTGRAM	    -  Plot energy of FFT.
%    PLOTFFT        -  Plot FFT coefficients.
%    PLOTFFTREAL    -  Plot |fftreal| coefficients.
%
%  Cosine and Sine transforms
%    DCTI           -  Discrete cosine transform type I
%    DCTII          -  Discrete cosine transform type II
%    DCTIII         -  Discrete cosine transform type III
%    DCTIV          -  Discrete cosine transform type IV
%    DSTI           -  Discrete sine transform type I
%    DSTII          -  Discrete sine transform type II
%    DSTIII         -  Discrete sine transform type III
%    DSTIV          -  Discrete sine transform type IV
%
%  Support routines
%    FFTINDEX       -  Index of positive and negative frequencies.
%    MODCENT        -  Centered modulo operation.
%    FLOOR23        -  Previous number with only 2,3 factors
%    FLOOR235       -  Previous number with only 2,3,5 factors
%    CEIL23         -  Next number with only 2,3 factors
%    CEIL235        -  Next number with only 2,3,5 factors
%    NEXTFASTFFT    -  Next efficient FFT size (2,3,5,7). 
%
%  Applications
%    FFTRESAMPLE    -  Fourier interpolation.
%    DCTRESAMPLE    -  Cosine interpolation.
%    PDERIV         -  Derivative of periodic function.
%    FFTANALYTIC    -  Analytic representation of a function.
%
%  For help, bug reports, suggestions etc. please visit 
%  http://github.com/ltfat/ltfat/issues

