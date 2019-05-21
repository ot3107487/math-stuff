% % for n=5:20
% %     recdir(n)
% % end`
% einvcalc = recdir(1,16);
% einv = exp(-1);
% eps;
% err =abs(einvcalc - exp(-1))/exp(-1);
% % 
% p = poly(1:20);
% x = roots(p);
% xe =(1:20)';
% err = abs(x-xe)./xe;
% nc = condpol(p,1:20);
% [ncs,i] = sort(nc);
% format short g
% disp([i',ncs']);
% 20/sqrt(2);
% 
% n = 20;
% a = 2.^(-(0:n));
% nc = condpol(a);
A = [];
b = [];
x = A\b;
bp =
Ap =