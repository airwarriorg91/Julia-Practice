# Change any of the following NamedTuple values to true to 
# enable testing different bonus tasks
tested_bonus_tasks = (rev=false, by=false, lt=false, multiple_matches=false)


function binarysearch(list, val::Int)
    start = 1
    last = lastindex(list)

    if isempty(list)
        return 1:0
    end
    while start <= last
        mid = (start + last) ÷ 2

        if list[mid] == val
            return mid:mid
        elseif list[mid] < val
            start = mid + 1
        else
            last = mid - 1
        end
    end

    return start:last
end