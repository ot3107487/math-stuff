% % lab10
m = 16;
values = 0:1:m;
nodes = sort(cos(values.*pi/m));
fNodes = cos(nodes.^2*40);
derNodes = -80*sin(nodes.^2*40);
x = linspace(-1,1,1000)';
val = zeros(1000,1);
for i = 1:1000    
    val(i) = hermite(nodes,fNodes,derNodes,x(i));
end
plot(nodes,fNodes,'o',x,cos(x.^2*40),x,val);
% f = @(x) cos(40*x.^2);
% 
% [a1,b1,c1,d1] = Splinecubic(nodes,fNodes,0,[80*sin(40),-80*sin(40)]);
% [a2,b2,c2,d2] = Splinecubic(nodes,fNodes,1,[-80*sin(40)-6400*cos(40),-80*sin(40)-6400*cos(40)]);
% [a3,b3,c3,d3] = Splinecubic(nodes,fNodes,2);
% [a4,b4,c4,d4] = Splinecubic(nodes,fNodes,3);
% vs1 = valspline(nodes,a1,b1,c1,d1,x);
% vs2 = valspline(nodes,a2,b2,c2,d2,x);
% vs3 = valspline(nodes,a3,b3,c3,d3,x);
% vs4 = valspline(nodes,a4,b4,c4,d4,x);
% 
% plot(nodes,fNodes,'o',x,[f(x),vs1,vs2,vs3,vs4]);
% legend('noduri','f','complet','D2','natural','de Borre','Location','best');
% 
% 


