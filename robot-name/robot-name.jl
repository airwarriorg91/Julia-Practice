using Random

alpha = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
name_set = String[]

function name_generator()
    l = rand(alpha, 2)
    num = string(rand(1:999), base=10, pad=3)
    temp = l[1] * l[2] * num
    while (temp in name_set)
        l = rand(alpha, 2)
        num = string(rand(1:999), base=10, pad=3)
        temp = l[1] * l[2] * num
    end
    push!(name_set, temp)
    temp
end


mutable struct Robot
    name
    function Robot(name="")
        name = name_generator()
        new(name)
    end
end

function reset!(r::Robot)
    r.name = name_generator()
end

function name(r::Robot)
    return r.name
end
