% x = exp(log(realmax))
% exp(log(realmax)+eps(x))
% 
% a = log(realmin*eps)
% exp(y)
% b = a - eps(a)
% exp(b)

function  i = half(k, j)
    disp([k,j])
    mij = (j+k) / 2;
    while (k < j) && (mij < j) && (mij > k)
        if exp(mij) > 0
            j = mij;
        else
            k = mij;
        end
        disp([k,j])
        mij = (j+k) / 2;
    end
    i = (j + k) / 2
end



