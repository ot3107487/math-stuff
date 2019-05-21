syms x
exp1 = Padesym(exp(x),0,[1,1]);
exp2 = mypade(exp(x),0,[2,2]);
padeexp = pade(exp(x));
z = linspace(-1,1);
expo = exp(z);
plot(z,expo)
hold on
fplot(exp1,[-1,1]);
% fplot(padeexp,[0,10]);
% fplot(exp2,[0,10]);
hold off

% figure
% log1 = mypade(log(1+x),3,3);
% log2 = mypade(log(1+x),3,1);
% padelog = pade(log(1+x));
% loga = log(z);
% plot(z,loga);
% 
% 
% hold on
% fplot(log1,[0,10]);
% % fplot(log2,[0,10]);
% fplot(padelog,[0,10]);
hold off