function montecarlo(N=1000)
    inizio= time()
    M=0
    for i in 1:N
        x, y= rand(1), rand(1)
        if x[1]^2 + y[1]^2 < 1
            M+=1
        end
    end
    return 4*M/N
    fine= time()
end
