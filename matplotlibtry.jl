using PyPlot
using PyCall
nx= pyimport("networkx")
plt= pyimport("matplotlib.pyplot")

x = range(0,stop=2*pi,length=1000); y = sin.(3*x + 4*cos.(2*x))
#pygui(bool)
plt.subplot(222)
scatter(x,y)
gcf()

#= da fare
1- studiare la libreria GPlot
2- capire come disegnare iperarchi
3- studiare la libreria matplotlib
4- capire come usarla per disegnare un ipergrafo
5- iniziare la progettazione della libreria
6- capire come disegnare un ipergrafo con matplotlib.PyPlot=#

x=5
scatter(x,x^2)


G= nx.Graph()
G.add_node(1)
G.add_node(2)
G.add_node(3)
G.add_edge(1,2)
plt.subplot(121)

nx.draw_random(G, with_labels=true)
gcf()