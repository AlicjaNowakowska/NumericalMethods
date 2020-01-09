function [a,b] = gauss(a,b)
%Metoda elimnacji Gaussa b podac w formie wektora poziomego, macierz
%wspolczynnikow. Zwraca macierz triangular superior
nrow=size(a,1);
a=[a,b']
for i=1:nrow
    if a(i,i)==0
    else
        a(i,:)=a(i,:)/a(i,i)
        for j=i+1:nrow
            a(j,:)=a(j,:)-a(j,i)*a(i,:)
        end
    end
end
b=a(:,size(a,2))
a=a(:,1:size(a,2)-1)

end

