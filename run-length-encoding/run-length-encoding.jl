#Run-length encoding (RLE) is a simple form of data compression, 
#where runs (consecutive data elements) are replaced by just one data value and count.
#For example we can represent the original 53 characters with only 13.
#
#"WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB"  ->  "12WB12W3B24WB"

function encode(s)
    es = ""
    count = 1
    l = length(s)
    for i in 1:l
        print(s[i], "\n")
        if (i < l) && (s[i] == s[i+1])
            count += 1
        else
            es *= (count > 1 ? string(count) : "") * s[i]
            count = 1
        end
    end
    es
end


function isInt(s::Char)
    try
        parse(Int, s)
        return true
    catch e
        return false
    end
end


function decode(s)
    ds = ""
    count = ""
    n = 1
    l = length(s)
    for i in 1:l
        if (i < l) && isInt(s[i])
            count *= s[i]
            if !isInt(s[i+1])
                n = parse(Int, count)
                count = ""
            end
        else
            ds *= s[i]^n
            n = 1
        end

    end
    ds
end