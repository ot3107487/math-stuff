function [x,itr]= jac(A,b)
[m,n] = size(A);
x=zeros(1,n)';
n=size(x,1);
normVal=Inf; 
tol=1e-5; itr=0;
while normVal>tol
    xold=x;
    
    for i=1:n
        sigma=0;
        
        for j=1:n
            
            if j~=i
                sigma=sigma+A(i,j)*x(j);
            end
            
        end
        
        x(i)=(1/A(i,i))*(b(i)-sigma);
    end
    
    itr=itr+1;
    normVal=abs(xold-x);
end
end