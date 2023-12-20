using SymPy, Latexyfy
@syms x y 
f(x,y) = log(x+y+1)
∇f = lambdify(diff.(f(x, y), [x, y]),[x,y])
∇²f = lambdify(hessian(f(x,y), (x, y)), (x, y))
a = b = 0
f(a, b) + dot(∇f(a, b), [s-a, t-b]) + 1/2 * dot(∇²f(a,b) * [s-a; t-b],  [s-a, t-b])