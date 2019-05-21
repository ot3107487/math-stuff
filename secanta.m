function [z,ni]=secanta(f,x0,x1,ea,er,Nmax)
%input
%	f - function
%	x0,x1 - starting values
%	ea,er - absolute and relative error, respectively (de obicei er-0)
%	Nmax - maximim number of iterations
%output
%	z - approximate root
%	ni - actual no. of iterations

if nargin<6, Nmax=50; end
if nargin<5, er=0; end
if nargin<4, ea=1e-3; end


xv=x0; fv=f(xv); xc=x1; fc=f(xc);
for k=1:Nmax
    xn=xc-fc*(xc-xv)/(fc-fv);
	
	%citeriul de oprire
    if abs(xn-xc)<ea+er*abs(xn) 
		%success
        z=xn;
        ni=k;
        return
    end
    %prepare next iteration
    xv=xc; fv=fc; xc=xn; fc=feval(f,xn);
end
%failure
error('maximum iteration number exceeded')
end