#Julia gives us a few different ways to write a function.
#first method
function sayhi(name)
    println("Hi $name, it's great to see you!")
end
function f(x)
    return x^2
end

#second method
sayhi2(name) = println("Hi $name, it's great to see you!")

#third method
sayhi3 = name -> println("Hi $name, it's great to see you!")

#map
#= map is a "higher-order" function in Julia that takes a function as one of its input arguments.  map then applies that function to every element of the data structure you pass it. For example, executing

map(f, [1, 2, 3])
will give you an output array where the function f has been applied to all elements of [1, 2, 3]

[f(1), f(2), f(3)]=#
map(f, [1,2,3])
a= map(x->x^2, [1,2,3])
println("square [1,2,3] with map: $a")

#broadcast
#=broadcast is another higher-order function like map.
broadcast is a generalization of map, so it can do every thing map can do and more. The syntax for calling broadcast is the same as for calling map=#
#square [1,2,3]
broadcast(f, [1, 2, 3])
b= f.([1,2,3])
println("square [1,2,3] with broadcast: $b")
#square A
A=[i + 3*j for j in 0:2, i in 1:3]
println("A: $A")
B=f(A)
println("square A: $B")
#square each element of A
C=f.(A)
println("square each element of A: $C")
