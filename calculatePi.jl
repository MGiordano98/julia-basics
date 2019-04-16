#calculate Pi with montecarlo method
function montecarlo(N=1000)
    inizio= time()
    M=0
    for i in 1:N
        x, y= rand(), rand()
        if x^2 + y^2 < 1
            M+=1
        end
    end
    return 4*M/N
    fine= time()
end
