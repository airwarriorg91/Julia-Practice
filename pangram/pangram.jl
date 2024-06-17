"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    #converting to lowercase
    input = lowercase(input)
    sol = true
    letters = "abcdefghijklmnopqrstuvwxyz"

    #checking for pangram
    for l in letters
        if !occursin(l, input)
            sol = false
            print("Input sentence is not a pangram.")
            break
        end
    end
    sol
end

