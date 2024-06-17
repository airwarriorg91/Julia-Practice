"""Implements rotational cipher in Julia along with a few macros"""

function rotate(n, input)
    result = ""
    for i in input
        if (i >= 'A' && i <= 'Z' && i + n <= 'Z') #uppercase letters
            result = result * (i + n)
        elseif (i >= 'A' && i <= 'Z' && i + n > 'Z')
            result = result * (i + n - 26)
        elseif (i >= 'a' && i <= 'z' && i + n <= 'z') #lowercase letters
            result = result * (i + n)
        elseif (i >= 'a' && i <= 'z' && i + n > 'z')
            result = result * (i + n - 26)
        else
            result = result * i
        end
    end
    if (typeof(input) == Char)
        result = only(result)
    end
    result
end

macro R1_str(input)
    rotate(1, input)
end
macro R2_str(input)
    rotate(2, input)
end
macro R3_str(input)
    rotate(3, input)
end
macro R4_str(input)
    rotate(4, input)
end
macro R5_str(input)
    rotate(5, input)
end
macro R6_str(input)
    rotate(6, input)
end
macro R7_str(input)
    rotate(7, input)
end
macro R8_str(input)
    rotate(8, input)
end
macro R9_str(input)
    rotate(9, input)
end
macro R10_str(input)
    rotate(10, input)
end
macro R11_str(input)
    rotate(11, input)
end
macro R12_str(input)
    rotate(12, input)
end
macro R13_str(input)
    rotate(13, input)
end
macro R14_str(input)
    rotate(14, input)
end
macro R15_str(input)
    rotate(15, input)
end
macro R16_str(input)
    rotate(16, input)
end
macro R17_str(input)
    rotate(17, input)
end
macro R18_str(input)
    rotate(18, input)
end
macro R19_str(input)
    rotate(19, input)
end
macro R20_str(input)
    rotate(20, input)
end
macro R21_str(input)
    rotate(21, input)
end
macro R22_str(input)
    rotate(22, input)
end
macro R23_str(input)
    rotate(23, input)
end
macro R24_str(input)
    rotate(24, input)
end
macro R25_str(input)
    rotate(25, input)
end
macro R26_str(input)
    rotate(26, input)
end