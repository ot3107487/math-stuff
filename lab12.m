%Kepler

%Newton

epsilon = 0.5;
n = 10;
f = @(x) x - epsilon*sin(x) - n;
fd = @(x) 1 - epsilon*cos(x);

x0 = pi/4;

[zn,ni] = Newtonreal(f,fd,x0,1e-10,0,50)

%Secanta

x1 = pi/6;

[zs,ni] = secanta(f,x0,x1,1e-10,0,50)

% sistem

f = @(x) [9*x(1)^2 + 36*x(2)^2 + 4*x(3)^2 - 36
          x(1)^2 - 2*x(2)^2 - 20*x(3)
          x(1)^2 - x(2)^2+ x(3)^2];
%fd - derivata functiei (adica Jacobianul)
fd = @(x) [18*x(1), 72*x(2), 8*x(3);
           2*x(1), -4*x(2), -20;
           2*x(1), -2*x(2), 2*x(3)];

%x0 - valoarea de pornire, atat pentru x(1), cat si pt x(2)
x0 = [1;1;0];
x1 = [-1;1;0];
x2 = [1;-1;0];
x3 = [-1;-1;0];
%apel functie
%z - solutia aproximata a ecuatiilor
%ni - nr de iteratii
[z1,ni] = Newtonsistem(f,fd,x0,1e-8,0,50)

[z2,ni] = Newtonsistem(f,fd,x1,1e-8,0,50)

[z3,ni] = Newtonsistem(f,fd,x2,1e-8,0,50)

[z4,ni] = Newtonsistem(f,fd,x3,1e-8,0,50)