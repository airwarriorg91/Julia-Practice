"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    count = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
    for i in strand
        if i == 'A'
            count['A'] += 1
        elseif i == 'C'
            count['C'] += 1
        elseif i == 'G'
            count['G'] += 1
        elseif i == 'T'
            count['T'] += 1
        else
            throw(DomainError(i, "Invalid Character"))
            break
        end
    end
    count
end