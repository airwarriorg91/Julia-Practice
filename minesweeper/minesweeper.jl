function char2int(c::Char)
    try
        c = parse(Int, c)
    catch
        c = false
    end
    return c
end

function updateAdjacentNodes(i::Int, j::Int, field)
    for m in [i - 1, i, i + 1]
        try
            row = collect(field[m])
            for n in [j - 1, j, j + 1]
                try
                    if !(m == i && n == j) && field[m][n] != '*'
                        c = char2int(row[n])
                        c == false ? c = 1 : c += 1
                        row[n] = string(c)[1]
                    end
                catch
                    continue
                end
            end
            field[m] = join(row)
        catch
            continue
        end

    end
    field
end

function annotate(field)
    res = field
    if (field != [])
        for i in 1:lastindex(field)
            for j in 1:lastindex(field[1])
                if field[i][j] == '*'
                    res = updateAdjacentNodes(i, j, res)
                end
            end
        end
    end
    return res
end

minefield = ["***",
    "* *",
    "***"]

print(annotate(minefield))