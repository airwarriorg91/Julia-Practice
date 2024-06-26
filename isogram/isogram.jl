function isisogram(s)
    s = lowercase(s)
    s = replace(s, " " => "")
    s = replace(s, "-" => "")

    for i in eachindex(s)
        for j in eachindex(s)
            if i != j && s[i] == s[j]
                return false
            end
        end
    end
    return true
end

print(isisogram("six-year-old"))