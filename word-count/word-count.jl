function wordcount(sentence)

    marks = ["!", "^", "&", "*", "(", ")", "~", "@", "#", "\"", "\$", "%", "{", "}", "[", "]", ":", ";", "/", "<", ">", "?", "`", ",", ".", "\n", "\t"]
    words = Dict()

    fix = lowercase(sentence)

    for i in marks
        fix = replace(fix, i => " ")
    end

    fix = split(fix, " ")

    for i in eachindex(fix)
        if fix[i] == ""
            continue
        end
        if (fix[i] == "'")
            fix[i] = ""
            continue
        end

        if (fix[i][1] == '\'')
            fix[i] = fix[i][2:end]
        end

        if (fix[i][end] == '\'')
            fix[i] = fix[i][1:end-1]
        end
    end
    print(fix)
    for i in fix
        count = 0
        for j in fix
            i == j ? count += 1 : continue
            if (i != "")
                words[i] = count
            end
        end
    end
    words
end