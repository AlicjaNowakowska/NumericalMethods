function x=solve_system(a,b)
[a,b]=gauss(a,b)
x=solve_triangular(a,b)
end