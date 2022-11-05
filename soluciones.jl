using Plots, SymPy
@syms x
f(x)=(1-cos(x))/x
plot(f, -10,10)
limit(f,1)