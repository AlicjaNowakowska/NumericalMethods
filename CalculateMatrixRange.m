function rzad=CalculateMatrixRange(wektor)
%funkcja liczy rzad macierzy do 3 stopnia.Autor: Alicja Nowakowska
%np policz_rzad([1 2 3 4;1 5 7 0])=2
if size(wektor,1)==1
    rzad=1;
end
if size(wektor,1)==2
    do=1;%do sprawdza czy trzeba kontynouwac program, czy tez moze juz znamy rzad
    for i=1:length(wektor)
        if do==1
            for j=i:length(wektor)
                m=[wektor(:,i),wektor(:,j)];
                if det(m)==0
                    do=1;
                else
                    do=0;
                end
            end
        end
    end
    if do==0
        rzad=2;
    else
        rzad=1;
    end
end
if size(wektor,1)==3
    do=1;
    for i=1:length(wektor)
        if do==1
            for j=i:length(wektor)
                if do==1
                    for z=j:length(wektor)
                        m=[wektor(:,i), wektor(:,j),wektor(:,z)];
                        if det(m)==0
                            do=1;
                        else
                            do=0;
                        end
                    end
                end
            end
        end
    end
     if do==0
         rzad=3;
     else
         m=policz_rzad([wektor(1,:),wektor(2,:)]);
         if m==2
             rzad=2;
         else
             n=policz_rzad([wektor(2,:),wektor(3,:)]);
             if n==2
                 rzad=2;
             else
                 a=policz_rzad([wektor(1,:),wektor(3,:)]);
                 if a==2
                     rzad=2;
                 else
                     rzad=1;
                 end
             end
         end
     end
end     
end
