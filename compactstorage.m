function B = compactstorage(A)
% This function stores symmetric banded matrix A in a 
% compact form bA in such a way that only the main diagonal,
% and the nonzero superdiagonals are stored. The first column 
% of bA corresponds to the main diagonal of A and the subsequent 
% columns of bA correspond to superdiagonals of A.
% Input:upper or lower bandwidth p and a symmetric matrix A
% Output: bA, compressed form of A
dim=size(A);
if ~(dim(1)==dim(2))
    error('A must be square')
end
if (all((all(A)~=all(A'))))
    error('A must be symmetric')
end
if ~(all(eig(A))> 0)
    error('Matrix is at least not positive definite')
end
c=find(A(1,1:dim(1))~=0);
B=zeros(dim(1),c(end));
n=dim(1);p=c(end)-1;
for i=1:n
if i<=n-p
for j=i:p+i
B(i,j-i+1)=A(i,j);
end
else 
for j=i:n
B(i,j-i+1)=A(i,j);
end
end
end
end