using Plots, SymPy
@syms x
f(x)=(1-cos(x))/x
plot(f, -10,10)
limit(f,1)

g(x,k)=10-5exp(-k*x)

fig = plot(ratio=1, xlims=(0, 10), ylims=(0, 10)); # produces an empty plot
    
for k in (0.1,0.2, 0.5, 1) 
    plot!(fig, 0:0.01:10, x -> g(x, k), label="k = $k") # the loop fills in the plot with this
end

fig
