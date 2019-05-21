function [x,ni]=myjacobi(A,b,x0,err)
%JACOBI - metoda lui Jacobi
%apel [x,ni]=Jacobi(A,b,x0,err)

%PARAMETRII
%A - matricea sistemului
%b - vectorul termenilor liberi
%x0 -vector de pornire
%err - toleranta

%REZUTAT
%x - solutia
%ni -numarul de iteratii realizat efectiv pt a determina solutia


%verificare parametri

if nargin < 4, err=1e-3; end
if nargin <3,  x0=zeros(size(b)); end

%A = D-L-U, unde D=diag(A), L=tril(A), U= triu(A)

%M = D, N = L+U = M-A
M=diag(diag(A));
N=M-A;
% pregatirea iteratiilor, compunerea lui T si c
% T=inv(M)*N;
T = M\N;
% c=inv(M)*b;
c= M\b;
alfa=norm(T,inf);
x=x0(:);

%algortimul propriu-zis
for i=1:500000
   x0=x;
   x=T*x0+c;
   %criteriul de oprire
   if norm(x-x0,inf)<=(1-alfa)/alfa*err
      ni=i;
      return
   end
end
error('Nu s-a gasit solutie in 500000 iteratii')
end