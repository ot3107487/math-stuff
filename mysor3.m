function [ x, ni ] = mysor3( A, B, err, omega )
[n, m] = size(A);

D = diag(diag(A));

L = zeros(size(A));
for i = 1 : n
   for j = 1 : n
      if i > j
        L(i, j) = -1 * A(i, j);
      end
   end
end

U = zeros(size(A));
for i = 1 : n
   for j = 1 : n
      if i < j
        L(i, j) = -1 * A(i, j);
      end
   end
end

% initializare
M = (1 / omega) * D - L;
N = U;
T = (D + L)^(-1) * U;
C = (D - L)^(-1) * B;

xv = zeros(n, 1);
xn = T * xv + C;
errC = norm(xn - xv, inf);
ni = 0;
while errC > err
   xv = xn;
   xn = T * xv + C;
   errC = norm(xn - xv);
   ni = ni+1;
end

x = xn;
end
