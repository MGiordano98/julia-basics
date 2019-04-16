#=es1 Create a string that says "hi" 1000 times, first with repeat and then with the exponentiation operator,
 which can call * under the hood. Assign it the variable  hi below.=#
println("es1")
 bigHi= repeat("hi",1000)
 println(bigHi)
 bigHiExp= "hi"^1000
 println(bigHiExp,"\n\n")

#=es2 Declare two variables
a = 3
b = 4
and use them to create two strings:
"3 + 4"
"7"
and store the results in c and d respectively=#
println("es2")
a=3
b=4
firstString= "$a + $b"
secondString= "$(a+b)"
println(firstString)
println(secondString,"\n\n")
