"""Calculate the number of grains on square `square`."""
function on_square(square)
    if square > 0 && square <= 64
        return BigInt(2)^(square - 1)
    else
        throw(DomainError("Invalid value!"))
    end
end

"""Calculate the total number of grains after square `square`."""
function total_after(square)
    if square > 0 && square <= 64
        exp = collect(0:1:square-1)
        sum(BigInt(2) .^ exp)
    else
        throw(DomainError("Invalid value!"))
    end
end
