function val = hermite(nodes,fNodes,derNodes,x)
%Functie aproximeaza valoare unei valori x intr-o functie, a carei definitii nu o stim, dar avem valorile
%functiei in anumite puncte, si a primei derivate, in aceleasi puncte
% x - valoarea unui punct, in care vrem sa aproximam functia. ex: f(2), unde x=2
% nodes - nodurile functiei care le stim
% fNodes - valorile functiei in nodurle de mai sus (nodes)
% derNodes  - valorile derivatei functiei in nodurile de mai sus (nodes)
m=length(nodes);
for i=1:m
   z(2*i-1)=nodes(i);
   z(2*i)=nodes(i);
   Q(2*i-1,1)=fNodes(i);
   Q(2*i,1)=fNodes(i);
   Q(2*i,2)=derNodes(i);
   if (i~=1)
      Q(2*i-1,2)=(Q(2*i-1,1)-Q(2*i-2,1))/(z(2*i-1)-z(2*i-2));
   end
end
for i=3:2*m
   for j=3:i
      Q(i,j)=(Q(i,j-1)-Q(i-1,j-1))/(z(i)-z(i-j+1));
   end
end
s=Q(1,1);
p1=1;
for i=2:2*m
   if (mod(i,2)==1)
      p1=p1*(x-nodes((i-1)/2));
   else
      p1=p1*(x-nodes(i/2));
   end
   s=s+p1*Q(i,i);
end
val=s;
end