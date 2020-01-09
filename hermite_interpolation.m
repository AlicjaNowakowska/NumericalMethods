function c=hermite_interpolation(x,f)
%c el vector de los coeficientes del polinomio obtendido, x el vector de
%puntos, f el vector de valores
p=size(f);
p=p(1)
x2=x;
x=repelem(x,p);
D=zeros(length(x),length(x));
f1=repelem(f(1,:),p);
D(:,1)=f1';
for j=2:length(x)
    for k=j:length(x)
        if x(k)==x(k-j+1) % caso de repeticion
            indeks=fix(k/(p+1))+1 
            a=f(j,indeks)
            D(k,j)=f(j,indeks)/factorial(j-1)
        else
            D(k,j)=(D(k,j-1)-D(k-1,j-1))/(x(k)-x(k-j+1))
        end
    end
end

c=D(length(x),length(x))
for k=length(x)-1:-1:1
    c=conv(c,poly(x(k))) 
    m=length(c)
    c(m)=c(m)+D(k,k)
end

end

 