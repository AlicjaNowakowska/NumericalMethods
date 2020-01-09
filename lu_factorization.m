function [l,u]=lu_factorization(a)
nrow=size(a,1)
l=diag(ones(1,nrow))
u=zeros(nrow)
for j=1:nrow
    for i=1:j
        suma=0;
        for k=1:i-1
            suma=suma+l(i,k)*u(k,j);
        end
        u(i,j)=a(i,j)-suma;
    end
    for i=j+1:nrow
        for k=1:j-1
            suma=suma+l(i,k)*u(k,j);
        end
        l(i,j)=(a(i,j)-suma)/u(j,j);
    end

end