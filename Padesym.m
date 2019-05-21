function R = Padesym(f,aa,ord)
%PADESYM Symbolic Pade
% call R = Padesym(f,x,a,ord)
% f -function
% x - variable
% a - point
% ord - Order a vector [m,k] of degrees
m=ord(1);
k=ord(2);
syms c bv C b x
sym a;
c=sym(zeros(1,m+k+1));
b=sym(zeros(k+1,1));
a=sym(zeros(1,m+1));
for i=0:m+k
    c(i+1)=subs(diff(f(x),x,i),aa)/factorial(sym(i));
end
C=toeplitz(c(m+1:m+k),c(m+1:-1:m-k+2));
bv=-c(m+2:m+k+1)';
b(2:end)=C\bv;
b(1)=sym(1);
if m > k 
    b(k+2:m+1)=sym(0);
end
for j=1:m+1
    l=1:j;
    a(j)=c(j-l+1)*b(l);
end
R=(a*x.^(0:m).')/(b(1:k+1)'*x.^(0:k).');
end



