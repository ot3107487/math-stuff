%t8p2
% x^2 + 2*b*x + 1 = 0
%1 conditionare
syms b real;
delta = 4*(b^2-1)
raddelta = sqrt(delta)
x1 = -b + raddelta/2
x2 = -b - raddelta/ 2
cond_x1_x2 = simplify(b*diff(x1) / x1)
% cond x1 = cond x2
% 
% % 2 generare grafic 
% c = logspace(6,7.5,1001);
% one = (-c-sqrt(c.^2 - 1)).*(-c+sqrt(c.^2 -1));
% plot(c,one,'.');
% 
% hold on;
% % solutie corectie amplificare cu conjugata pentru a elimina anularea
% %  b < 0 => x2 = 1/x1
% %  altfel x1 = 1 / x2
% one = (-c-sqrt(c.^2 - 1)).*(1./(-c-sqrt(c.^2 -1)));
% plot(c,one,'.');

% ceva cu precizia
% ???
