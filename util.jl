using SimpleHypergraphs

#=calculate the center of each hyperedges using the geometric center formula
params: h: Hypergraph
        locs_x: x location of vertices
        locs_y: y location of vertices

return: clocs_x: center x location of hyperedges
        clocs_y: center y location of hyperedges
=#
function chyperedges(h::Hypergraph, locs_x, locs_y)
    n_ver,n_he=size(h)#number of vertices and hyperedges
    clocs_x=[]
    clocs_y=[]
    for i in 1:n_he #for each hyperedges
        pos=[] #pos of vertices
        for j in 1:n_ver  #for each vertices
            if getindex(h,j,i)!=nothing 
                push!(pos,j) 
            end
        end

        #geometric center formula  ( x1+ ... +xn/n ; y1+ ... +yn/n )
        sommax=0
        sommay=0
        for x in 1:length(pos)
            sommax=sommax+locs_x[pos[x]]
            sommay=sommay+locs_y[pos[x]]
        end
        sommax=sommax/length(pos)
        sommay=sommay/length(pos)

        push!(clocs_x,sommax)
        push!(clocs_y,sommay)
    end
    return clocs_x,clocs_y
end


#=generate a random Hypergraph
params: node_num: number of nodes, default: 5
        he_num: number of hyper edges, default: 5

return: H: Hypergraph with Int64 values
=#
function generatehg(node_num=10, he_num=5)
    H= Hypergraph{Int64}(node_num, he_num)
    for i in 1:node_num
        for j in 1:he_num
            random= rand()
            if random<= 1/3
                H[i,j]= 1
            end
        end
    end
    return H
end