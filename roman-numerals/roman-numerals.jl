function to_roman(number)
    number <= 0 ? throw(ErrorException("Invalid Number Input")) : Nothing
    num = string(number)
    l = length(num)
    out = String[]
    for i in 1:l
        num[i] == '0' ? continue : nothing
        if 10^(l - i) == 1000
            n = parse(Int, num[i])
            push!(out, "M"^n)
        elseif 10^(l - i) == 100
            n = parse(Int, num[i])
            if n < 4
                push!(out, "C"^n)
            elseif n == 4
                push!(out, "CD")
            elseif n <= 8
                push!(out, "D" * "C"^(n - 5))
            else
                push!(out, "CM")
            end
        elseif 10^(l - i) == 10
            n = parse(Int, num[i])
            if n < 4
                push!(out, "X"^n)
            elseif n == 4
                push!(out, "XL")
            elseif n <= 8
                push!(out, "L" * "X"^(n - 5))
            else
                push!(out, "XC")
            end
        else
            n = parse(Int, num[i])
            if n < 4
                push!(out, "I"^n)
            elseif n == 4
                push!(out, "IV")
            elseif n <= 8
                push!(out, "V" * "I"^(n - 5))
            else
                push!(out, "IX")
            end
        end
    end
    join(out)
end
