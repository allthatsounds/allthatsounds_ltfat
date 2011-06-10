function c=comp_ufilterbank_fft(f,g,a);  
%COMP_UFILTERBANK_FFT   Classic fitlering by FFT
%   Usage:  c=comp_ufilterbank_fft(f,g,a);
%

L=size(f,1);
W=size(f,2);
M=size(g,2);

N=L/a;

c=zeros(N,M,W);
  
G=fft(fir2long(g,L));

for w=1:W
  F=fft(f(:,w));
  for m=1:M
    c(:,m,w)=ifft(sum(reshape(F.*G(:,m),N,a),2))/a;
  end;
end;

  