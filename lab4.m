% for i = 1:n
%     pivotare
%     introdu zerouri
% end
% subtitutie inversa

% #### pivotare
% p = ? , |a(p,k)| = max(|a(i,k)|;
% Ep <-> Ek;
% 
% [vp,p] = max(abs(A(i:n,i));
% A([p,i],i:n+1) = A([i,p],i:n+1);
% A= [A,b];
% #### Zerouri
% j = i+1:n
% m = A(j,i)/A(i,i);
% A(j,i+1:m+1) = A(j,i+1:m+1) - n*A(i,i+1:m+1);
% xk = (bk - sum(akj*xj) / akk;
% A = [1 2 3
%     6 3 -8
%     1 -1 5];
% b = [6 1 5]';
% P = [0 0 1; 0 1 0; 1 0 0];
% P*A;
% Gepp(A,b);

% $$$$$$$$$$$ LUP $$$$$$$$$
% S = A' - 1/a11 *U * W*;  complement Schur al lui A in raport cu a11
% k U -> A(k+1:m,k)
%   w* -> A(k,k+1:n)
%   A' -> A(k+1:n,k+1:n)
% piv = (1:n)';
% for k=1:n-1
%     pivotrare
%     calul complement Schur
% end
% extragerea rezultatelor
% complementii schur
% A(k+1:n,k) = A(k+1:n,k) / A(k,k);
% A(k+1:n,k+1:n) = A(k+1:n,k+1:n) - A(k+1:n,k)*A(k+1:n)
% 
% conventii notare diagonale : dp = 0 , ce e deasupra e 1,2,... si jos e -1, -2
%     diag(A,d);
% % diag(v,d); pune vectorul pe diagonala principala
% triu(A,d) partea triunghiular superioara
% tril(A,d) partea triunghiular inferioara

% extragerea:
% U = triu(A);
% L = tril(A,-1)+eye(n);
% P = eye(n);
% P = p(pv,:);
% echivalent cu
% P = zeros(n);
% for k =1:n
%     P(l,piv(k))=1;
% end

% pt tema => comparat lup cu Gepp !!!!!!!!!!!!!!
A = [1 2 3
    6 3 -8
    1 -1 5];
% [L,U,P] = lup(A);
% ################################################################
% A   HPD x*Ax>0        A = A*  descompunere Cholesky hermitiana si
% pozitiv definita
%     SPD x'Ax>0        A = A'  simetrica pozitiv definita

% I. A este HPD <=> exista R triunghiular usperios a. i A = R*R

% pt n = 200;
% sa se rezolve prin LUP;
% sa se det conditionarea lui A
% sa se verifice daca a este pozitiv definita, si sa se rezolva cu descompunere Cholesky
n = 200;
A = 5*eye(n) - diag(ones(n-1,1),1) - diag(ones(n-1,1),-1);
b = [4;3*ones(n-2,1);4];

[L,U,P] = lup(A);
rez = zeros(1,n);
dreapta = P*b;
R = Cholesky(A);

A = [[2*eye(n,n-1) - tril(ones(n,n-1))],ones(n,1)];
[L,U,P] = lup(A);
st = L*U;
dr = P*A;
norm(st-dr)
rez = st -dr == zeros(n);

[Q,R] = qr(A);
x = R \ (Q'*b)
reshape(x,20,10)
