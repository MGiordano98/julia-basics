using PyPlot
x = range(0,stop=2*pi,length=1000); y = sin.(3*x + 4*cos.(2*x))
#pygui(bool)
scatter(x,y)
gcf()

#= da fare
1- studiare la libreria GPlot
2- capire come disegnare iperarchi
3- studiare la libreria matplotlib
4- capire come usarla per disegnare un ipergrafo
5- iniziare la progettazione della libreria
6- capire come disegnare un ipergrafo con matplotlib.PyPlot=#

