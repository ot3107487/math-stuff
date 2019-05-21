function [ aprox] = mypade( f,m,k)
    syms x;
    syms mmaclaurin(x);
%     maclaurin(x) = taylor(f,x,0,'Order',m+k+1);
%     coeff = fliplr(sym2poly(maclaurin(x)));
    n = m + k +1;
    coeff = zeros(1,n);
    for i = 0:n-1
        coeff(i+1) = subs(diff(f,i),x,0)/factorial(i);
    end
	matricestanga = zeros(k);
	matricedreapta = zeros(k,1);
    matricestanga=toeplitz(coeff(m+1:m+k),coeff(m+1:-1:m-k+2));
	for i = 1:k
		matricedreapta(i)=-coeff(m+i+1);
    end
	b = linsolve(matricestanga,matricedreapta);
	b = b.';
    b = [1,b];
    a = zeros(1,m+1);
    for j = 1:m+1
        suma = 0;
        for l = 1:j
            if l < m+1
                if l < k +1 
                    suma = suma + coeff(j-l+1)*b(l);
                end
            end
        end
        a(j) = suma;
    end
    a = fliplr(a);
    y1 = poly2sym(a,x);
    y2 = poly2sym(b,x);
    y = y1/y2;
    %%aprox = deconv(a,b);
    aprox = y;
end

