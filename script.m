%datos
f=[201225    202136    5227093; 1 0.13 0.78];
x=[1 1000 100000];
%el resultado de la interpolacion
c=hermite_interpolation(x,f)
%debajo esta codigo para graficas:
p = poly2sym(c)
%ezplot(p,[0,100000])
hold on
plot(x,f(1,:),"r*")
%ezplot(p,[0,200000])
ezplot(p,[0,300000])
%ezplot(p,[0,1000000])
title('')
