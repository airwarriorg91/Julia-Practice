function score(str)
    sum = 0
    str = uppercase(str)
    for i in str
        if i in ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T']
            sum += 1
        elseif i in ['D', 'G']
            sum += 2
        elseif i in ['B', 'C', 'M', 'P']
            sum += 3
        elseif i in ['F', 'H', 'V', 'W', 'Y']
            sum += 4
        elseif i == 'K'
            sum += 5
        elseif i in ['J', 'X']
            sum += 8
        elseif i in ['Q', 'Z']
            sum += 10
        end
    end
    sum
end

