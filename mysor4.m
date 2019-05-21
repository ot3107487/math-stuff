function [x,ni] = mysor4(A,b,w,x0,er,nitmax)

[m,n] = size(A);
%calculul lui T si c (pregatirea iteratiilor)
M = 1/w * diag(diag(A)) + tril(A,-1);
N = M-A;
% T = M\N;
% c = M\b;
% alfa = norm(T,inf);
x = x0(:);

for i = 1:nitmax
   x0 = x;
   % x = T * x0 + c;
   x = M\(N*x0+b);
   if norm(x-x0,inf) < norm(x,inf)*er %+(1-alfa)/alfa*ea
      ni = i;
      return
   end
end

error('prea multe iteratii')

end