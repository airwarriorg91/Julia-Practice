function transform(input::AbstractDict)
    out = Dict()
    for i in eachindex(input)
        for j in input[i]
            out[lowercase(j)] = i
        end
    end
    out
end
