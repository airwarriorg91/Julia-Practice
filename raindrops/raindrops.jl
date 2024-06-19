"""
If a given number:
is divisible by 3, add "Pling" to the result.
is divisible by 5, add "Plang" to the result.
is divisible by 7, add "Plong" to the result.
is not divisible by 3, 5, or 7, the result should be the number as a string.

"""
function raindrops(n)
    res = ""
    #divisible by 3
    if (n % 3 == 0)
        res = res * "Pling"
    end
    #divisible by 5
    if (n % 5 == 0)
        res = res * "Plang"
    end
    #divisble by 7
    if (n % 7 == 0)
        res = res * "Plong"
    end
    #divisble by neither 3, 5, 7
    if (!(n % 3 == 0) && !(n % 5 == 0) && !(n % 7 == 0))
        res = string(n)
    end
    res
end
