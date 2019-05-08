using PyPlot

#=draw lines from the center of each hyperedges to each vertex
params: locs_x: x location of vertexs
        locs_y: y location of vertexs
        clocs_x: center x location of hyperedges
        clocs_y: center y location of hyperedges
=#
function dextranode(h,locs_x, locs_y, clocs_x, clocs_y)
    n_ver,n_he=size(h) #numbero of vertices and hyperedges
    plt.scatter(locs_x,locs_y, s=18^2, zorder=2) #scatter the points
    for i in 1:n_ver
        plt.annotate(i, (locs_x[i]-0.025,locs_y[i]-0.025), color="white")
    end
    for x in 1:n_he
        vettore=[]
        for y in 1:n_ver
            if getindex(h,y,x)!=nothing
                push!(vettore,y)
            end
        end
        lineX=[]
        lineY=[]
        for j in 1:length(vettore)
            push!(lineX,clocs_x[x])
            push!(lineX,locs_x[vettore[j]])
            push!(lineY,clocs_y[x])
            push!(lineY,locs_y[vettore[j]])
        end
        plt.plot(lineX,lineY, zorder=1)
    end
    ax= plt.gca()
    plt.xticks([])
    plt.yticks([])
    close()
    gcf()
end
