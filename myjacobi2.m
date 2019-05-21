function [x,ni] = myjacobi2(A,b,x0,er,nitmax)
M = diag(diag(A));
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