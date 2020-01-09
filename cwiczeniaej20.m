%metodo del punto fijo
x=1;
for i=1:1000
    x=(x*log(1+x)-2)*(-1/3);
end
%metodo de Newton Raphson
x=1;
for i=1:100
    derivative=(log(1+x)+x/(1+x))*(-1/3);
    x=x-(x*log(1+x)-2)*(-1/3)/derivative;
end
%metodo  de Newton simplificado
x=1;
derivative=(log(1+x)+x/(1+x))*(-1/3);
for i=1:2
    x=x-(x*log(1+x)-2)*(-1/3)/derivative
end
%metodo de newton paso 3
x=1;
derivative=(log(1+x)+x/(1+x))*(-1/3);
m=0;
for i=1:2
    x=x-(x*log(1+x)-2)*(-1/3)/derivative
    m=m+1;
    if m==3
        derivative=(log(1+x)+x/(1+x))*(-1/3);
    end
end

