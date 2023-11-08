% LTFAT - Signal processing tools
%
%  Peter L. Søndergaard, 2007 - 2023.
%
%  Windows and wavelets
%    FIRWIN         -  FIR windows (Hanning,Hamming,Blackman,...).
%    FIRKAISER      -  FIR Kaiser-Bessel window.
%    FIR2LONG       -  Extend FIR window to LONG window.
%    LONG2FIR       -  Cut LONG window to FIR window.
%    FREQWIN        -  Freq responses (Gauss,Gammatone,Butterworth,...)
%    FREQWAVELET    -  Frequency responses of wavelets (Cauchy, Morse)
%    for more wavelet functions, see https://allthatsounds.github.io/doc/wavelets/
%
%  Filters
%    FIRFILTER      -  Construct an FIR filter.
%    BLFILTER       -  Construct a band-limited filter.
%    WARPEDBLFILTER -  Warped, band-limited filter.
%    FREQFILTER     -  Construct a full length frequency side filter.
%    PFILT          -  Apply filter with periodic boundary conditions.
%
%   Support routines
%    RMS            -  Compute the Root Mean Square norm of signal.
%    SETNORM        -  Normalize signal by specified norm.
%    CRESTFACTOR    -  Compute the crest factor of a signal.
%    COL2DIAG       -  Move columns of a matrix to diagonals
%    POSTPAD        -  Pad or truncate a vector.
%    MAGRESP        -  Magnitude response plot.
%    PGRPDELAY      -  Periodic Group Delay.
%    TRANSFERFUNCTION - Compute the transfer function of a filter.
%
%  Auditory processing
%     AUDTOFREQ        - Auditory unit to frequency conversion.
%     FREQTOAUD        - Frequency to auditory unit conversion.
%     AUDSPACE         - Auditory unit spaced vector
%     AUDSPACEBW       - Auditory unit spaced vector by equal bandwidth.
%     ERBTOFREQ        - Erb scale to frequency conversion.
%     FREQTOERB        - Frequency to erb scale conversion.
%     ERBSPACE         - Equidistant points on the erb scale.
%     ERBSPACEBW       - Equidistant points by equal bandwidth.
%     AUDFILTBW        - Bandwidth of auditory filters.
%     GAMMATONEFIR     - Gammatone FIR approximation.
%     SEMIAUDPLOT      - 2D plot on auditory scale.
%
%  Thresholding methods
%    THRESH         -  Coefficient thresholding.
%    LARGESTR       -  Keep largest ratio of coefficients.
%    LARGESTN       -  Keep N largest coefficients.
%    DYNLIMIT       -  Limit the dynamic range.
%    GROUPTHRESH    -  Group thresholding.
%    S0NORM         -  S0-norm.
%
%  Tools for OFDM
%    QAM4           -  Quadrature amplitude modulation, order 4
%    IQAM4          -  Inverse QAM of order 4
%
%
%  For help, bug reports, suggestions etc. please visit 
%  http://github.com/ltfat/ltfat/issues
