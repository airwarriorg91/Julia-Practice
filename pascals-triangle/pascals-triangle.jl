function triangle(n)
    out = Vector{Vector{Int}}()
    n < 0 ? throw(DomainError("Negative numbers not allowed !")) : Nothing
    for i in 1:n
        if i == 1
            push!(out, [1])
        else
            row = Int[]
            for j in 1:i
                l = (j > 1) ? out[i-1][j-1] : 0
                r = (j < i) ? out[i-1][j] : 0
                push!(row, l + r)
            end
            push!(out, row)
        end
    end
    out
end