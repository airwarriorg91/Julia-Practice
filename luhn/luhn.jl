function luhn(s)
    s = replace(s, " " => "")
    s = reverse(s)
    sum = 0
    n = 0
    res = false
    for i in 1:lastindex(s)
        try
            n = parse(Int, s[i])
        catch
            return false
        end

        if i % 2 != 0
            sum += n
        else
            n = 2 * n
            n > 9 ? sum += n - 9 : sum += n
        end
    end
    if sum % 10 == 0 && strip(s) != "0"
        res = true
    end
    res
end
