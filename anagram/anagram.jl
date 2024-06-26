function sort_alpha(word::String)
    if all(isuppercase, word) || (isuppercase(word[1]) && all(islowercase, word[2:end]))
        word = lowercase(word)
    end
    word = join(sort(collect(word)))
end


function detect_anagrams(subject, candidates)
    res = String[]
    s = sort_alpha(subject)
    for word in candidates
        if length(subject) != length(word) || lowercase(subject) == lowercase(word)
            continue
        else
            w = sort_alpha(word)
            print(s, "\t", w, "\n")
            if (s == w)
                push!(res, word)
            end
        end
    end
    res
end

print(detect_anagrams("ant", ["tan", "stand", "ant"]))