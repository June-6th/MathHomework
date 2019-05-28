using Statistics
using Makie

function f(X::AbstractVector, Y::AbstractVector)
   @assert length(X) == length(Y)
   n = length(X)
   X_mean = mean(X)
   return sum((X[i] - X_mean) * Y[i] for i in 1:n) / sum((X[i] - X_mean)^2 for i in 1:n)
end
g(X::AbstractVector, Y::AbstractVector) = mean(Y) - f(X, Y) * mean(X)

D = 0:100:500
A = [100, 250, 304, 403, 446, 482]
B= [100, 203, 214, 295, 330, 324]

scene = Scene(resolution = (800, 600))
scatter!(scene, D, A, markersize = 20, color=:red)
scatter!(scene, D, B, markersize = 20, color=:blue)
lines!(scene, D, g(D, A) .+ f(D, A) .* D, color=:red)
lines!(scene, D, g(D, B) .+ f(D, B) .* D, color=:blue)

save("f9_3_1.png", scene)
