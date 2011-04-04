function plotdgt(coef,a,varargin)
%DGTPLOT  Plot DGT coefficients.
%   Usage: plotdgt(coef,a);
%          plotdgt(coef,a,fs);
%          plotdgt(coef,a,fs,dynrange);
%
%   PLOTDGT(coef,a) will plot the Gabor coefficient coefficients
%   coef. The coefficient must have been produce with a timeshift of _a.
%
%   The arguments must be character strings possibly followed by an argument:
%
%-  'dynrange',r - Limit the dynamical range to r by using a colormap in
%               the interval [chigh-r,chigh], where chigh is the highest
%               value in the plot. The default value of [] means to not
%               limit the dynamical range.
%
%-  'db'      - Apply 20*log10 to the coefficients. This makes it possible to
%               see very weak phenomena, but it might show too much noise. A
%               logarithmic scale is more adapted to perception of sound.
%               This is the default.
%
%-  'lin'     - Show the energy of the coefficients on a linear scale.
%
%-  'tc'      - Time centering. Move the beginning of the signal to the
%               middle of the plot. This is useful for visualizing the
%               window functions of the toolbox.
%
%-  'clim',[clow,chigh] - Use a colormap ranging from clow to chigh. These
%               values are passed to IMAGESC. See the help on IMAGESC.
%
%-  'image'   - Use 'imagesc' to display the spectrogram. This is the
%               default.
%
%-  'contour' - Do a contour plot.
%          
%-  'surf'    - Do a surf plot.
%
%-  'mesh'    - Do a mesh plot.
%
%-  'colorbar' - Display the colorbar. This is the default.
%
%-  'nocolorbar' - Do not display the colorbar.
%
%   See also:  plotdgtreal, sgram

%   AUTHOR : Peter Soendergaard.
%   TESTING: NA
%   REFERENCE: NA

if nargin<2
  error('%s: Too few input parameters.',upper(mfilename));
end;

definput.import={'tfplot'};

[flags,kv,fs]=ltfatarghelper({'fs','dynrange'},definput,varargin);

M=size(coef,1);
N=size(coef,2);

% Move zero frequency to the center and Nyquest frequency to the top.
if rem(M,2)==0
  coef=circshift(coef,M/2-1);
  yr=(-M/2+1:M/2)/(M/2);
else
  coef=circshift(coef,(M-1)/2);
  yr=(-(M-1)/2:(M-1)/2)/((M-1)/2);
end;

if ~isempty(kv.fs)
  yr=yr*fs/2;
end;


tfplot(coef,a,yr,'argimport',flags,kv);