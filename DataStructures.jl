#Tuple
#We can create a tuple by enclosing an ordered collection of elements in ( ).
println("creating a tuple")
myfavoriteanimals = ("penguins", "cats", "sugargliders")
println(myfavoriteanimals)
#we can  index into it
println("index into it")
myfavoriteanimals[1]
println(myfavoriteanimals[1],"\n")
#but we can't update it

#NamedTuple
#NamedTuples are just like Tuples except that each element additionally has a name! They have a special syntax using = inside a tuple:
println("creating a named tuple")
myfavoriteanimals = (bird = "penguins", mammal = "cats", marsupial = "sugargliders")
println(myfavoriteanimals)
#getting first element with index
println("gettind first element with index")
myfavoriteanimals[1]
println(myfavoriteanimals[1])
#getting first element with name
println("getting first element with name")
myfavoriteanimals.bird
println(myfavoriteanimals.bird,"\n")

#Dictonaries
#If we have sets of data related to one another, we may choose to store that data in a dictionary.
println("Creating a dictionary")
myphonebook = Dict("Jenny" => "867-5309", "Ghostbusters" => "555-2368")
println(myphonebook)
println("grab jenny's number using the associated key: $(myphonebook["Jenny"])")
println("adding a new number")
myphonebook["Kramer"]="555-JLK"
println(myphonebook)
println("removing an element")
pop!(myphonebook,"Kramer")
println(myphonebook, "\n")

#Array
#Unlike tuples, arrays are mutable. Unlike dictionaries, arrays contain ordered collections.
#We can create an array by enclosing this collection in [ ].
println("initialization array")
myfriends = ["Ted", "Robyn", "Barney", "Lily", "Marshall"]
println(myfriends)
println("push and pop")
push!(myfriends, "Tracy")
println(myfriends)
pop!(myfriends)
println(myfriends)

println("\narray with random value 2D and 3D")
println("$(rand(3,4))\n\n\n $(rand(3,4,2))\n\n")


#=es1 Create an array, a_ray, with the following code:
a_ray = [1, 2, 3]
Add the number 4 to the end of this array and then remove it. =#
println("es1")
a_ray= [1, 2, 3]
push!(a_ray, 4)
println(a_ray)
pop!(a_ray)
println(a_ray)
