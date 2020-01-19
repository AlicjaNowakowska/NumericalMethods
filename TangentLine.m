function TangentLine(wzor,a,b,x0) 
%Alicja Nowakowska, rysowanie funkcji wraz ze styczna w punkcie (plot function and tangent line in x0)
%przykład: funkcjaZeStyczna('x.^2',2,4,2.5)
f=fcnchk(wzor);
h=0.01;
m=a:0.01:b;
t=f(m);
plot(m,t,'r','Linewidth',2)
title('funkcja ze stycznš w punkcie x0')
xlabel('x');
ylabel('y');
hold on
c=(f(x0+h)-f(x0))/h;
s=c*m-c*x0+f(x0);
plot(m,s,'g','Linewidth',2)
legend('funkcja','styczna w punkcie x0')
hold off
end
