function [x,ni]=mysor(A,b,omega,x0,err)
%SOR
%apel [z,ni]=sor(A,b,omega,err,)

%PARAMETRII
%A - matricea sistemului
%b - vectorul termenilor liberi
%omega - parametrul relaxarii
%x0 - vector de pornire
%err - toleranta

%REZULTATE
%x - solutia
%ni -numarul de iteratii realizat efectiv


%calculul lui T si c (pregatirea iteratiilor)
M=1/omega*diag(diag(A))+tril(A,-1);
N=M-A;
T=M\N;
c=M\b;
alfa=norm(T,inf);
x=x0(:);

%algoritmul efectiv
for i=1:500000
    x0=x;
    x=T*x0+c;
    if norm(x-x0,inf)<=err
        ni=i;
        return
    end
end
end