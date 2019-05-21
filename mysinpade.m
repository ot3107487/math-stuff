function [rez] = mysinpade(x)
    syms z;
    f(z) = pade(sin(z));
    
   rez= f(x);
end

