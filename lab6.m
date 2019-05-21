% lab6
% Lmf(x) = sum de la k = 0,n lk(x)*f(xk)
% lk(xj) = deltakj = 1 , k =j
%                    0 , k!= j
% 
% pp ca avem o rutina pt calculul polinomului de interpolare
% cum s-ar putea calcula polinomul fundamentale

% sa se calculeze sin si cos de 17 grade folosind interpolare lagrange si valorile remarcabile ale sin si cos;
% sa se repr grafic functia si interpolatul
% sa se calculeze sqrt(115) cu cel putin 3 zecimale exacte folosind interpolare lagrange

% 1
x = [0 pi/6 pi/4 pi/3 pi/2 2*pi];
ysin = [0 0.5 sqrt(2)/2 sqrt(3)/2 1 0];
sinus = lagr(x,ysin,17)
s = sin(17*pi/180)
% 
% cosinus = lagr(x,[1 sqrt(3)/2 sqrt(2)/2 0.5 0 1],17)
% c = cos(17*pi/180)
% 
% s1 = abs(s - sinus);
% s2 = abs(c - cosinus);
% % 2
% % 
% t = linspace(0,2*pi,200);
% vp = lagr(x,ysin,t);
% plot(x,ysin,'o',t,sin(t),t,vp)
% legend('noduri','f','L-{4}sin','Location','best');
% % plot(x,sin(x));
% 
% % xrad = [4 9 16 25 36 49 64 81 100 121 144 169 196 225];
% % yrad = [2 3 4 5 6 7 8 9 10 11 12 13 14 15];2
% % rad = 
% yrad = 10:0.1:11;
% xrad = yrad.^2;
% rad115 = lagr(xrad,yrad,115) 
% sqrt(115)


f = @(x) 1./(1+x.^2);
m = input('gradul');
% lagrange
% x = linspace(-5,5,m+1);
% 
k = 0:m;
x = 5*cos((2*k+1)*pi/(2*m+2));
y = f(x);

t = linspace(-5,5,10000);
vp = lagr(x,y,t);
plot(t,f(t),t,vp)
