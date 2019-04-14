#using Plots.jl
using Plots
#background
gr()
globaltemperatures = [14.4, 14.5, 14.8, 15.2, 15.5, 15.8]
numpirates = [45000, 20000, 15000, 5000, 400, 17];
#linee
plot(numpirates, globaltemperatures, label="line")
#punti
scatter!(numpirates, globaltemperatures, label="points")
#label x,y and title
xlabel!("Number of Pirates [Approximate]")
ylabel!("Global Temperature (C)")
title!("Influence of pirate population on global warming")

unicodeplots()
plot(numpirates, globaltemperatures, label="line")
scatter!(numpirates, globaltemperatures, label="points")
xlabel!("Number of Pirates [Approximate]")
ylabel!("Global Temperature (C)")
title!("Influence of pirate population on global warming")


#=es1 Given
    x = -10:10  plot y vs. x for  𝑦=𝑥2 .
    You may want to change backends back again.=#

pyplot()
x=-10:10
y=x*2
plot(x,y)

p1 = plot(x, x)
p2 = plot(x, x.^2)
p3 = plot(x, x.^3)
p4 = plot(x, x.^4)
plot(p1, p2, p3, p4, layout = (2,2), legend = false)
