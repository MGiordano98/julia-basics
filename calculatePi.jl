#=function calculate_pi(N = 1000)
    how_often_in_circle = 0
    for i in 1:N
        # Generate a random point (x, y) inside the square centered at (0, 0)
        # that has corners at (-1, 1), (-1, 1), (1, -1), and (1, 1)
        x, y = rand(1), rand(1)
        # Check if the distance to (x, y) from (0, 0) is less than the radius of 1
        if x[1]^2 + y[1]^2 < 1
            how_often_in_circle += 1
        end
    end
    return 4 * how_often_in_circle / N
end
=#

function montecarlo(N=1000)
    M=0
    for i in 1:N
        x, y= rand(1), rand(1)
        if x[1]^2 + y[1]^2 < 1
            M+=1
        end
    end
    return 4*M/N
end
