using CairoMakie
graphictype = "svg"
CairoMakie.activate!(type = graphictype)
myblue = RGBf(0.067,0.529,0.871)
myred = RGBf(1.0, 0.13, 0.32)
size_inches = (8, 6)
size_pt = 100 .* size_inches
fig = Figure(resolution = size_pt, fontsize = 16, backgroundcolor = RGBAf(0,0,0,0))
t = range(0, 4pi, length=200)
lines(fig[1,1], t./2 .+ 2, 2t .- 1, t .+ 1; linewidth = 2, color = myblue)
lines(fig[1,2], sin.(t), cos.(t), t/4; linewidth = 2, color = myblue)
lines(fig[2,1], t.*cos.(t), t, t.*sin.(t); linewidth = 2, color = myblue)
lines(fig[2,2], cos.(2t), sin.(t), cos.(t) ; linewidth = 2, color = myblue)
Label(fig[1, 1, Top()], "A", padding = (0, 0, 5, 0))
Label(fig[1, 2, Top()], "B", padding = (0, 0, 5, 0))
Label(fig[2, 1, Top()], "C", padding = (0, 0, 5, 0))
Label(fig[2, 2, Top()], "D", padding = (0, 0, 5, 0))
save("img/funciones-vectoriales/trayectorias-espacio." * graphictype, fig, pt_per_unit = 1)
fig