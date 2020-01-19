function rysuj_wykres_dwoch_zmiennych(wzor,param2,param1,param3)%%param3 zawiera wspó³rzêdne punktu
%zadanie domowe3 Alicja Nowakowska
%funkcja rysuje wykres funkcji dwóch zmiennych na obszarze prostok¹ta i
%ko³a, pierwszy wektor dotyczy parametrów prostokata, a drugi kola,trzeci
%to wpsolczerdne punktu,w ktorym rysowana bd styczna plaszczyzna
%przyklad: rysuj_wykres_dwoch_zmiennych('x^2+y^2',[1 2 3 4],[1 2 3],[1.5 1.5])
wzor=fcnchk(wzor,'vectorized');
a=param2(1);
b=param2(2);
c=param2(3);
d=param2(4);
[x y]=meshgrid(a:0.5:b,c:0.5:d);
subplot(2,1,1)
mesh(x,y,wzor(x,y));
hold on

%%%%%%%%%%%%%%%
x0=param1(1);
y0=param1(2);
R=param1(3);
[r phi]=meshgrid(0:0.1:R,0:pi/50:2*pi);
x=r.*cos(phi)+x0;
y=r.*sin(phi)+y0;
subplot(2,1,2)
mesh(x,y,wzor(x,y))
hold on
%%%%%%%%%%%%%
x_0=param3(1);
y_0=param3(2);
%%%%%%%%%
h=0.01;
if(x_0>=a&x_0<=b&y_0>=c&y_0<=d)
    %rysuj p³aszczyznê styczn¹ pf=(f(x+h)-f(x-h))/(2*h) h=0.01;
    [x y]=meshgrid(a:0.1:b,c:0.1:d);
    df_dx=(wzor(x_0+h,y_0)-wzor(x_0-h,y_0))/(2*h);
    %df_dx=num2str(df_dx)
    df_dy=(wzor(x_0,y_0+h)-wzor(x_0,y_0-h))/(2*h);
    %df_dy=num2str
    %[x1 y1]=df_dx*(x-x_0)+df_dy*(y-y_0)+wzor(x_0,y_0)
    %x1=df_dx*(x-x_0)+wzor(x_0,y_0)
    z = @(x,y) wzor(x_0,y_0) + df_dx*(x-x_0) + df_dy*(y-y_0);
    subplot(2,1,1)
    mesh(x,y,z(x,y))
    hold on
    %(x,y,z(x,y),'*')
    hold on
end
odleglosc=sqrt((x_0-x0).^2+(y0-y_0).^2);
if(odleglosc<=R)
    [r phi]=meshgrid(0:0.1:R,0:pi/50:2*pi);
    x=r.*cos(phi)+x0;
    y=r.*sin(phi)+y0;
    df_dx=(wzor(x_0+h,y_0)-wzor(x_0-h,y_0))/(2*h);
    df_dy=(wzor(x_0,y_0+h)-wzor(x_0,y_0-h))/(2*h);
    z = @(x,y) wzor(x_0,y_0) + df_dx*(x-x_0) + df_dy*(y-y_0);
    subplot(2,1,2)
    mesh(x,y,z(x,y))
    hold on
    %plot(x,y,z(x,y),'*')
    hold on
end
    
    




end