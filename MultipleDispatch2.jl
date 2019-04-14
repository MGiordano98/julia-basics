#Creating Roman struct to represents Roman numbers
struct Roman
    n::Int
end

Base.show(io::IO, r::Roman) = print(io, 'ⅰ' + (r.n - 1) % 10 )  # nice display; 'ⅰ' is a Unicode Roman numeral

x = [7 1 2 5 8 9]
Roman.(x)   # equivalent to map(Roman, x)  or  [Roman(w) for w in x]

import Base: +,*
+(x::Roman, y::Roman)= Roman(x.n + y.n)
*(x::Roman, y::Roman)= Roman(x.n * y.n)
*(x::Roman, y::Int)= Roman(x.n * y)

# Complicated mytimes to decide what to do based on type
# not suggested, better way coming soon
function mytimes(i,j)
  if isa(i,Roman) & isa(j,Number)
        return  fill(1, i.n, j)   # i by j matrix with ones
    elseif    isa(i,Number) & isa(j,Roman)
        return "😄"^ (i*j.n)   #  i * j happy faces
    else
        return("I Don't know")
    end
end
#instead use this
*(i::Number, j::Roman) = "😄"^ (i*j.n)        #  i * j happy faces
*(i::Roman, j::Number) =   fill(1, i.n, j)       # i by j matrix


#Functions
import Base: *, +, ^
*(α::Number,   g::Function) = x -> α * g(x)   # Scalar times function
*(f::Function, λ::Number)   = x -> f(λ * x)   # Scale the argument
*(f::Function, g::Function) = x -> f(g(x))    # Function composition  -- abuse of notation!  use \circ in Julia 0.6
^(f::Function, n::Integer) = n == 1 ? f : f*f^(n-1) # A naive exponentiation algorithm by recursive multiplication
+(f::Function, g::Function) = x -> f(x) + g(x)

pow(n) = x -> x^n
myexp = sum(1/factorial(big(n)) * pow(n) for n in 0:100)   # taylor series not efficient!
[myexp(1); exp(1); exp(big(1))]

#using f= x->x^2
f(10)
g = 3f
g(10)
(f^2)(10)  # since we defined multiplication of functions as composition

using Plots;
gr()
x = pi*(0:0.001:4)

#first plot
plot(x, sin.(x),    c="black", label="Fun")
plot!(x, (12*sin).(x),    c="green", label="Num * Fun")
plot!(x, (sin*12).(x),    c="red", alpha=0.9, label="Fun * Num")
plot!(x, (5*sin*exp).(x), c="blue", alpha=0.2, label="Num * Fun * Fun")

#second plot
plot([12*sin, sin*12, 5*sin*exp], 0:.01:4π, α=[1 .9 .2], c=[:green :red :blue])
