"""
Given a DNA strand, its transcribed RNA strand is formed by replacing each nucleotide with its complement:

G -> C
C -> G
T -> A
A -> U
"""

function to_rna(dna)
    rna = ""
    for i in dna
        if i == 'G'
            rna = rna * "C"
        elseif i == 'C'
            rna = rna * "G"
        elseif i == 'T'
            rna = rna * "A"
        elseif i == 'A'
            rna = rna * "U"
        else
            throw(ErrorException("Invalid character in the DNA sequence detected !"))
        end
    end
    rna
end

