function isInt(c)
    try
        parse(Int, c)
        return true
    catch
        return false
    end
end

function encode(input)
    out = []
    count = 0
    input = lowercase(input)
    for i in input
        if islowercase(i)
            push!(out, Char(219 - Int(i)))
            count += 1
        elseif isInt(i)
            push!(out, i)
            count += 1
        end

        if count == 5
            push!(out, " ")
            count = 0
        end
    end
    strip(join(out))
end

function decode(input)
    out = []
    input = replace(input, " " => "")
    for i in input
        if islowercase(i)
            push!(out, Char(219 - Int(i)))
        elseif isInt(i)
            push!(out, i)
        end
    end
    join(out)
end

print(encode("Testing,1 2 3, testing."), '\n')
print(decode("gvhgr mt123 gvhgr mt"))