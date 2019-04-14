#define a random matrix
A = rand(1:4,3,3)
println("matrix A: $A")
#define a vector of ones
x = fill(1.0, (3,))
println("vector x: $x")

#Multiplication
b=A*x
println("b= A*x: $(A*x)")

#Trasposition
println("Trasposition A': $(A')")

#Trasposed multiplication
println("Trasposed multiplication A'A: $(A'A)")

#Ax=b solved by the \ function
#inverse(A) * b
println("A\\b: $(A\b)")

v = rand(3)
println("v: $v")
rankdef = hcat(v, v) #hcat: concatenate along dimension 2
println("rankdef: $rankdef")
println("rankdef\\b: $(rankdef\b)")
