function odp=PlotCircles(a,b,c,d,liczba_kol)
%Alicja Nowakowska funkcja rysuje okręgi na zadanym przedziale
%w pierwszym rzędzie podane współrzędne x środków okręgó, w drugim
%współrzędne y, w trzecim promienie
%przykład rysujOkregi(1,4,1,4,10)
if(liczba_kol~=round(liczba_kol) | liczba_kol<=0)
    error('liczba_kol musi byc liczba naturalna')
else
t=0:0.001:2*pi;
promienie=abs(((b-a)*0.5-0.1)*rand(1,liczba_kol)+0.1);
x_0=zeros(1,liczba_kol);
y_0=zeros(1,liczba_kol);
for i=1:liczba_kol
x_0(i)=(b-a-2*promienie(i))*rand(1,1)+a+promienie(i);%x=xmin+rand(1,n)*(xmax-xmin)
y_0(i)=(d-c-2*promienie(i))*rand(1,1)+c+promienie(i);
end
x=x_0;
y=y_0;
r=promienie;
odp=[x; y ;r];
kolory='ybkgrmc';
numery_kolorow=round(1+rand(1,liczba_kol)*6);
for i=1:liczba_kol
wspx=promienie(i)*cos(t)+x_0(i);%x0,y0-współrzędne środka okręgu
wspy=promienie(i)*sin(t)+y_0(i);
plot(wspx,wspy,kolory(numery_kolorow(i)));
hold on
end
hold off
end
end
