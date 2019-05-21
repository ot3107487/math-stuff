% num2bin(single(1),1);
% num2bin((1),1);
% num2bin((0.1),1);
% num2bin((1),1);
% num2bin((pi),1);
% num2bin((realmin),1);
% num2bin((realmin/2),1);
% num2bin((eps*realmin),1);
% num2bin((realmax),1);
% num2bin((inf),1);
% num2bin((0/0),1)
% 
%  clear
%  clc
%  n = 20;
%  x = 21*pi;
%  y = zeros(1,n);
%  for i = 0:n
%    y(i+1) = (-1)^i*x^(2*i+1)/factorial(2*i+1); 
%  end
%  SINx = sum(y);
