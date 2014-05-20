function gtout=filterbanktight(g,a,L);
%FILTERBANKTIGHT  Tight filters
%   Usage:  gt=filterbanktight(g,a);
%
%   `filterabanktight(g,a)` computes the canonical tight filters of *g* for a
%   channel subsampling rate of *a* (hop-size).
%
%   The input and output format of the filters *g* are described in the
%   help of |filterbank|.
%
%   `filterabanktight(g,a,L)` computes canonical tight filters for a system
%   of length *L*. If *L* is not specified, the shortest possible transform
%   length is choosen.
%
%   See also: filterbank, filterbankdual, ufilterbank, ifilterbank

complainif_notenoughargs(nargin,2,'FILTERBANKTIGHT');

if nargin<3
   L = [];
end

[g,info] = filterbankwin(g,a,L,'normal'); 

M=info.M;

if (~isempty(L)) && (L~=filterbanklength(L,a))
    error(['%s: Specified length L is incompatible with the length of ' ...
           'the time shifts.'],upper(mfilename));
end;

%[g,info]=filterbankwin(g,a,L,'normal');
%M=info.M;

% Prioritize painless over uniform algorithm
if info.isuniform && info.ispainless
    info.isuniform = 0;
end

if info.isuniform
  % Uniform filterbank, use polyphase representation
  if isempty(L)
      error('%s: You need to specify L.',upper(mfilename));
  end;

  a=a(1);

  % G1 is done this way just so that we can determine the data type.
  G1=comp_transferfunction(g{1},L);
  thisclass=assert_classname(G1);
  G=zeros(L,M,thisclass);
  G(:,1)=G1;
  for ii=2:M
    G(:,ii)=comp_transferfunction(g{ii},L);
  end;
  
  N=L/a;
  
  gt=zeros(M,N,thisclass);
  
  for w=0:N-1
    idx = mod(w-(0:a-1)*N,L)+1;
    H = G(idx,:);
    
    [U,S,V]=svd(H,'econ');
    H=U*V';  
    
    gt(:,idx)=H.';
  end;
  % gt was created transposed because the indexing gt(:,idx_a)
  % is much faster than gt(idx_a,:)
  gt =  gt.';
  
  gt=ifft(gt)*sqrt(a);  

  if isreal(g)
    gt=real(gt);
  end;
  
  gtout=cell(1,M);
  for m=1:M
    gtout{m}=cast(gt(:,m),thisclass);
  end;
  
else
    if info.ispainless
        if isempty(L)
            error('%s: You need to specify L.',upper(mfilename));
        end;
        
        gtout = comp_painlessfilterbank(g,info.a,L,'tight',0);
%         Fsqrt=sqrt(comp_filterbankresponse(g,info.a,L,0));
%         
%         gtout=cell(1,M);
%         for m=1:M
%             thisgt=struct();
%             
%             if isfield(g{m},'H')
%                H=circshift(comp_transferfunction(g{m},L)./Fsqrt,-g{m}.foff);
%                thisgt.H=H(1:numel(g{m}.H));
%                thisgt.foff=g{m}.foff;
%                thisgt.realonly=0;
%                thisgt.delay=0;
%             elseif isfield(g{m},'h')
%                H=comp_transferfunction(g{m},L)./Fsqrt; 
%                thisgt.h = ifft(H);
%                thisgt.offset = 0;
%             end
%             
%             gtout{m}=thisgt;
%         end;
        
    else
        error(['%s: The canonical dual frame of this system is not a ' ...
               'filterbank. You must call an iterative ' ...
               'method to perform the desired inverstion. Please see ' ...
               'FRANAITER or FRSYNITER.'],upper(mfilename));                
    end;
  
end;
