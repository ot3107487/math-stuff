% lab 7
format long
n = 100;
    N = n^2;
    e = ones(N,1);
    A = spdiags([-e,-e,4*e,-e,-e],[-n,-1,0,1,n],N,N);
% %     
% %     A = -1*ones(N)+5*eye(N); 
% %     diagvector = diag(A,n)*0 + n;
% %     diagminusn = diag(diagvector + 1,n);
% %     diagn = diag(-1*diagvector + 1,-n);
% %     
% %    
% %     A = A + diagn + diagminusn;
    b = A*ones(N,1);
%     
% %     LUP
%     [L,U,P] = lup(A);
%     y=forwardsubst(L,P*b);
%     xLUP=backsubst(U,y);
% %     Cholesky
%     R = Cholesky(A);
%     y=forwardsubst(R,b);
%     xChol=backsubst(R',y);
    
%     Jacobi

    x0 = zeros(N,1);
%     [xJacobi,itr] = myjacobi2(A,b,x0,1e-8,500000); 
    [xSOR, itr] = mysor4(A,b,w,x0,1e-8,500000);