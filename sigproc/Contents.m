% LTFAT - Signal processing tools
%
%  Peter L. Søndergaard, 2007 - 2023.
%
%  General
%    RMS            -  Root Mean Square norm of signal.
%    SETNORM        -  Normalize signal by specified norm.
%    GAINDB         -  Scale input signal.
%    CRESTFACTOR    -  Compute the crest factor of a signal.
%    LOWDISCREPANCY -  Compute a low discrepancy sequence.
%    UQUANT         -  Simulate uniform quantization.
%    POSTPAD        -  Pad or truncate a vector.
%    COL2DIAG       -  Move columns of a matrix to diagonals
%    S0NORM         -  S0-norm
%
%  Window functions
%    FIRWIN         -  FIR windows (Hanning,Hamming,Blackman,...).
%    FIRKAISER      -  FIR Kaiser-Bessel window.
%    FIR2LONG       -  Extend FIR window to LONG window.
%    LONG2FIR       -  Cut LONG window to FIR window.
%    FREQWIN        -  Freq responses (Gauss,Gammatone,Butterworth,...)
%
%  Wavelet functions
%    FREQWAVELET    -  Frequency responses of wavelets (Cauchy, Morse)
%
%  Filtering
%    FIRFILTER      -  Construct an FIR filter.
%    BLFILTER       -  Construct a band-limited filter.
%    WARPEDBLFILTER -  Warped, band-limited filter.
%    FREQFILTER     -  Construct a full length frequency side filter.
%    PFILT          -  Apply filter with periodic boundary conditions.
%    MAGRESP        -  Magnitude response plot.
%    TRANSFERFUNCTION - Compute the transfer function of a filter.
%    PGRPDELAY      -  Periodic Group Delay
%
%  Ramping
%    RAMPUP         -  Rising ramp.
%    RAMPDOWN       -  Falling ramp.
%    RAMPSIGNAL     -  Ramp a signal.
%
%  Thresholding methods
%    THRESH         -  Coefficient thresholding.
%    LARGESTR       -  Keep largest ratio of coefficients.
%    LARGESTN       -  Keep N largest coefficients.
%    DYNLIMIT       -  Limit the dynamical range.
%    GROUPTHRESH    -  Group thresholding.
%
%  Image processing
%    RGB2JPEG       -  Convert RGB values to the JPEG colour model
%    JPEG2RGB       -  Convert values from the JPEG colour model to RGB
%
%  Tools for OFDM
%    QAM4           -  Quadrature amplitude modulation, order 4
%    IQAM4          -  Inverse QAM of order 4
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
%     AUDFILTBW        - Bandwidth of audiory filters.
%     GAMMATONEFIR     - Gammatone FIR approximation.
%     SEMIAUDPLOT      - 2D plot on auditory scale.
%
%  Range compression
%     RANGECOMPRESS    - Compress range of signal (mu-law etc).
%     RANGEEXPAND      - Expand range of signal.
%
%  For help, bug reports, suggestions etc. please visit 
%  http://github.com/ltfat/ltfat/issues
%
