function [ E ] = recdir( n,k )
% directa - ascendent
%     E = exp(-1);
%     for k=2:n
%         E = 1 - k*E;
%     end
    E = 0;
    for j = n+k:-1:n+1
        E = (1 - E)/j;
    end
end

