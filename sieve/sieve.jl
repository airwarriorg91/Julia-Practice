function sieve(limit)
    unmarked = Set(collect(2:limit))
    for i in unmarked
        multiples = Set(collect(2*i:i:limit))
        unmarked = setdiff(unmarked, multiples)
    end
    sort(collect(unmarked))
end

print(sieve(2))