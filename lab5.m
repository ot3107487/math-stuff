% %lab5
% metode iterative
% Ax = b ----> x = Tx + c = fi(x)
% x(0)
% x(k+1) = T x(k) + c
% || x(k+1) - x(k) || < (1- ||T|| / ||T||)* Ea (eroare absoluta) + || x (k+1)|| * Er (eroare relativa)
% A = M - N, M nesingulara
% Ax = B => (M-N)x = b => Mx = Nx+b => x = M^(-1)Nx + M^(-1)b
%                                              T          c
% N = M - A
% % alt mod
% A = D - L - U
% D = diag(diag(a))
% L = - tril(A,-1)
% U = - triu(A,1)

% prima metoda
% M = D
% N = L + U
% T = D^(-1)(L + U)
% C = D^(-1)b
% met lui Jacobi

% a 2a
% M = D-L
% N = U
% T = (D-L)^(-1)U
% c = (D-L)^(-1)b
% met lui Gauss-Saidel

% a 3a
% M = (1/ omega)D - L
% omega e din (0,2)

