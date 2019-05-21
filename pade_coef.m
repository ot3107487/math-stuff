function [a,b]=pade_coef(m,k)
%exemplu apel: [a, b]=pade_coef(4,5)
if k==0
    a=1./factorial(0:m);
    b=1;
else
    c=1./factorial(m:m+k-1);
    if m-k+1>=0
        r=1./factorial(m:-1:m-k+1);
    else
        r=[1./factorial(m:-1:0) zeros(1,-m+k-1)];
    end
     cc=-1./factorial(m+1:m+k)';
     b=[1; toeplitz(c,r)\cc];
     a=1;
     for j=1:m
         a=[a; 1./factorial(j:-1:0)*b(1:j+1,1)];
     end
end