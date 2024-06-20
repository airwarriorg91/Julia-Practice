"""A function to calculate the Hamstring distance for two equal length DNA strand"""

function distance(a, b)
    if (length(a) != length(b))
        throw(ArgumentError("The arguments should have equal length !"))
    end

    dist = 0
    for i in 1:lastindex(a)
        if a[i] != b[i]
            dist += 1
        end
    end
    dist
end
