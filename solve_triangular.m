function x=solve_triangular(a,b)
% it solves a system of equations represented by the triangular superior
% matrix.
x_n=b(size(b,1),1)/a(size(a,1),size(a,2));
x=[x_n];
nrow=size(a,1);
for i=nrow-1:-1:1
        suma=dot(a(i,i+1:nrow),x);
        x=[(b(i,1)-suma)/a(i,i) x];
end

end