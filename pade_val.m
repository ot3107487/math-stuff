function v=pade_val(m,k,x)
[a,b]=pade_coef(m,k);
v=[];
for i=1:length(x)
  v=[v ((x(i).^[0:m])*a)/((x(i).^[0:k])*b)];
end

    