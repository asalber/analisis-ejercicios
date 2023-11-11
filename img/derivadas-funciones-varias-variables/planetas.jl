using CairoMakie
graphictype = "pdf"
CairoMakie.activate!(type = graphictype)
myblue = RGBf(0.067,0.529,0.871)
myred = RGBf(1.0, 0.13, 0.32)
size_inches = (8, 6)
size_pt = 100 .* size_inches
fig = Figure(resolution = size_pt, fontsize = 16, backgroundcolor = RGBAf(0,0,0,0))
ax = Axis(fig[1,1], aspect = 1, xlabel = L"$x$", ylabel = L"$y$")
f(t) = [3cos(t), sin(t)]
ts = range(0, 2pi, 200)
points = Point2.(f.(ts))
lines!(ax, points, color = myblue, label = "Planeta 1")
scatter!(ax, Point2(f(pi)), color = myblue, markersize = 20)
g(t) = [2sin(t/2), 3cos(t/2)] 
ts = range(0, 4pi, 200)
points = Point2.(g.(ts))
lines!(ax, points, color = myred, label = "Planeta 2")
scatter!(ax, Point2(g(pi)), color = myred, markersize = 20)
axislegend(ax)
save("img/derivadas-funciones-varias-variables/planetas." * graphictype, fig, pt_per_unit = 1)
fig