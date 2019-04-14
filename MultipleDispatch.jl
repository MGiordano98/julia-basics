
foo(x::String, y::String) = println("My inputs x and y are both strings!")
foo(x::Int, y::Int)= println("My inputs x and y are both integer!")
#=When we declared

foo(x::Int, y::Int) = println("My inputs x and y are both integers!")
we didn't overwrite or replace

foo(y::String, y::String)
Instead, we just added an additional method to the generic function called foo.

A generic function is the abstract concept associated with a particular operation.

For example, the generic function + represents the concept of addition.

A method is a specific implementation of a generic function for particular argument types.

For example, + has methods that accept floating point numbers, integers, matrices, etc.=#
#we can use methods(foo) to see how many methods there are for foo

foo(x::Number, y::Number)= println("My inputs x and y are both numbers!")
foo(x, y) = println("I accept inputs of any type!")

#es 1
#Extend the function foo, adding a method that takes only one input argument, which is of type Bool, and prints "foo with one boolean!"
foo(bool::Bool)= println("foo with one boolean!")
