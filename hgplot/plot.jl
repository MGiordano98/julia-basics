#=
plot hypergraph different layouts and visualizations

type: extra_node, eulero_venn, matrix
layout: spring_layout, circular_layout

params: h: Hyperhgraph
        type: extra_node(default), eulero_venn, matrix
        layout: spring_layout(default), circular_layout
=#
function hgplot(h::Hypergraph, locs_x, locs_y, vis="extra_node")
    if vis== "extra_node"
        clocs_x, clocs_y= chyperedges(h, locs_x, locs_y)
        dextranode(h, locs_x, locs_y, clocs_x, clocs_y)
    elseif vis=="eulero_venn"
        println("eulero_venn")
    elseif vis=="matrix"
        println("matrix")
    end
end

function hgplot(h::Hypergraph; type= "extra_node", layout="spring_layout")
    t= TwoSectionView(h)
    twosectionview= LightGraphs.SimpleGraph(t)
    locs_x=[]
    locs_y=[]
    
    if layout=="spring_layout"
        locs_x,locs_y= spring_layout(twosectionview)
    elseif layout=="circular_layout"
        locs_x,locs_y= circular_layout(twosectionview)
    end

    if type=="extra_node"
        hgplot(h, locs_x, locs_y, "extra_node")
    elseif type=="eulero_venn"
        hgplot(h, locs_x, locs_y, "eulero_venn")
    elseif type=="matrix"
        hgplot(h, locs_x, locs_y, "matrix")
    end
end
