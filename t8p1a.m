% test8 p1 a
%  Care este cea mai mare valoare pentru care exponentiala din MATLAB exp nu da depasire?
format long

sup = log(realmax);
r = sup+eps(sup);
expsup = exp(sup)
expz = exp(r)