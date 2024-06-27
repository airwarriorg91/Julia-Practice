function collatz_steps(n::Int64)

    n <= 0 ? throw(DomainError("Invalid input")) : Nothing

    steps = 0
    while n != 1
        n % 2 == 0 ? n /= 2 : n = 3 * n + 1
        steps += 1
    end
    steps
end