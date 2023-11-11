using CairoMakie
graphictype = "png"
CairoMakie.activate!(type = graphictype)
myblue = RGBf(0.067,0.529,0.871)
myred = RGBf(1.0, 0.13, 0.32)
size_inches = (8, 6)
size_pt = 100 .* size_inches
fig = Figure(resolution = size_pt, fontsize = 16, backgroundcolor = RGBAf(0,0,0,0))
ax1 = Axis(fig[1,1], aspect = 1, xlabel = L"$x$", ylabel = L"$y$")
f(x,y) = 3x^2 + y^2
xs = ys = range(-2, 2; length=100)
contour!(ax1, xs, ys, f.(xs, ys'), labels = true, levels = 0:1:10)
g(x,y) = x * y
xs = ys = range(-4, 4; length=30)
ax2 = Axis(fig[1,2], xticks = -4:1:4, yticks = -4:1:4, aspect = 1, xlabel = L"$x$", ylabel = L"$y$")
contour!(ax2, xs, ys, g.(xs, ys'), labels = true, levels = 0:1:10)
h(x,y) = cos(x)sin(y)
xs = ys = range(-pi, pi; length=100)
ax3 = Axis(fig[2,1], aspect = 1, xlabel = L"$x$", ylabel = L"$y$")
contour!(ax3, xs, ys, h.(xs, ys'), labels = true, levels = -1:0.2:1)
i(x,y) = 2x+y
xs = ys = range(-2, 2; length=100)
ax4 = Axis(fig[2,2], aspect = 1, xlabel = L"$x$", ylabel = L"$y$")
contour!(ax4, xs, ys, i.(xs, ys'), labels = true, levels = -5:1:5)
Label(fig[1, 1, Top()], "A", padding = (0, 0, 5, 0))
Label(fig[1, 2, Top()], "B", padding = (0, 0, 5, 0))
Label(fig[2, 1, Top()], "C", padding = (0, 0, 5, 0))
Label(fig[2, 2, Top()], "D", padding = (0, 0, 5, 0))
save("img/derivadas-funciones-varias-variables/curvas-nivel." * graphictype, fig, pt_per_unit = 1)
fig