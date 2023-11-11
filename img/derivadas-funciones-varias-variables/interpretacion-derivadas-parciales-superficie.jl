using CairoMakie
graphictype = "svg"
CairoMakie.activate!(type = graphictype)
myblue = RGBf(0.067,0.529,0.871)
myred = RGBf(1.0, 0.13, 0.32)
size_inches = (8, 6)
size_pt = 100 .* size_inches
fig = Figure(resolution = size_pt, fontsize = 16, backgroundcolor = RGBAf(0,0,0,0))
ax = Axis3(fig[1,1], azimuth = 6.7pi/4, elevation = 0.2, xlabel = L"$x$", ylabel = L"$y$", zlabel = L"$z$")
f(x,y) = x*y
xs = ys = range(-2, 2; length=30)
surface!(ax, xs, ys, f(xs,ys'))
scatter!(Point3(1,-1,-1), color= myred)
save("img/derivadas-funciones-varias-variables/interpretacion-derivadas-parciales-superficie." * graphictype, fig, pt_per_unit = 1)
fig