function s = mysin(x)
    k = 0;
    s = 0;
    ok = 0;
    n = 0;
    while ok == 0
       sLocal  = s + ((-1).^n)*(x.^(2*n+1)./(factorial(2*n+1)));
       if sLocal - s == 0
           ok = 1;
       else 
          n = n+1;
          s = s + ((-1).^n)*(x.^(2*n+1)./(factorial(2*n+1)));
       end
    end
end

