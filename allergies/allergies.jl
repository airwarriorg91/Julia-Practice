
allergy = Dict(0 => "eggs", 1 => "peanuts", 2 => "shellfish", 3 => "strawberries", 4 => "tomatoes", 5 => "chocolate", 6 => "pollen", 7 => "cats")
function allergy_list(score)
    list = Set()
    sc = string(score, base=2, pad=0)
    l = lastindex(sc)
    for i in 1:l
        if sc[l-i+1] == '1' && i <= 8
            push!(list, allergy[i-1])
        end
    end
    list
end

function allergic_to(score, allergen)
    l = allergy_list(score)
    if allergen in l
        return true
    else
        return false
    end
end
