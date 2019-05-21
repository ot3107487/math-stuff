% test
% f = @(x) exp(-x.^2);
% m = 30;
% k  = 0:m;
% b = (-5 + k./4);
% b = 5*sort(cos((k*2+1)*pi/(2*m+2))); %cebisev
% 
% fb = f(b);
% 
% t = linspace(-5,5,10000);
% 
% 
% 
% rez = metBaricentrica(b,fb,t);
% lagrange = lagr(b,fb,t);
% plot(t,f(t),t,rez);
% % plot(t,rez);
f = @(x) sin(x);

% %demo spline
% 
x = [-pi/2, -pi/3,-pi/4,-pi/6,0,pi/6,pi/4,pi/3,pi/2];
y = sin(x);
t = linspace(-pi/2,pi/2,250)';
[a1,b1,c1,d1] = Splinecubic(x,y,0,[0,0]);
[a2,b2,c2,d2] = Splinecubic(x,y,1,[1,-1]);
[a3,b3,c3,d3] = Splinecubic(x,y,2);
[a4,b4,c4,d4] = Splinecubic(x,y,3);
vs1 = valspline(x,a1,b1,c1,d1,t);
vs2 = valspline(x,a2,b2,c2,d2,t);
vs3 = valspline(x,a3,b3,c3,d3,t);
vs4 = valspline(x,a4,b4,c4,d4,t);
plot(x,y,'o',t,[f(t),vs1,vs2,vs3,vs4]);
legend('noduri','f','complet','D2','natural','de Borre','Location','best');
% figure
% plot(x,y,'o',t,[f(t),vs1,vs2,vs3,vs4]);
% legend('noduri','f','complet','D2','natural','de Borre','Location','best');
% xlim([-pi/2,-pi/4]);
% figure
% plot(x,y,'o',t,[f(t),vs1,vs2,vs3,vs4]);
% legend('noduri','f','complet','D2','natural','de Borre','Location','best');
% xlim([pi/4,pi/2]);

% curba spline parametrica sa treaca prin puncte date
% axis([0,1,0,1]);
% [x,y] = ginput();
% % xs = s3(t,tn,xi);
% % ys = s3(t,tn,yi);
% n = length(x);
% tn = 0:n-1;
% t = linspace(0,n-1,3000)';
% [a1,b1,c1,d1] = Splinecubic(tn,x,3);
% [a2,b2,c2,d2] = Splinecubic(tn,y,3);
% vx = valspline(tn,a1,b1,c1,d1,t);
% vy = valspline(tn,a2,b2,c2,d2,t);
% plot(x,y,'+',vx,vy);

% !!!!!!!!!!!!!! contraexemplul lui Runghe dar rezolvat cu spline