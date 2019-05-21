function x = Gepp(A,b)
    % Gaussian elimination with partial pivoting
    [~,n] = size(A);
    A = [A,b];
    % pivotarea
    for i = 1:n-1
        [v,p] = max(abs(A(i:n,i)));
        p = p+i-1;
        if i ~= p
        A([p,i],i:n+1) = A([i,p],i:n+1);
        end
        % calculul multiplicatorilor
        j = i+1:n;
        m = A(j,i)/A(i,i);
        A(j,i+1:n+1) = A(j,i+1:n+1) - m*A(i,i+1:n+1);
    end
    % subtitutia inversa
    x = A;
    %     x(n) = A(n,n+1)/A(n,n);
%     for i = n-1:-1:1
%         x(i) = (A(i,n+1) - A(i,i+1:n)*x(i+1:n)) / A(i,i);
%     end
end