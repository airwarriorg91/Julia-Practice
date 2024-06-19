"""
Secret Handshake Order
00001 = wink
00010 = double blink
00100 = close your eyes
01000 = jump
10000 = Reverse the order of the operations in the secret handshake.
"""


function secret_handshake(code)
    hs = []
    b = string(code, base=2, pad=5)
    print(b[1], b[2], b[3], b[4], b[5], '\n')
    if (b[5] == '1')
        push!(hs, "wink")
    end

    if (b[4] == '1')
        push!(hs, "double blink")
    end

    if (b[3] == '1')
        push!(hs, "close your eyes")
    end

    if (b[2] == '1')
        push!(hs, "jump")
    end

    if (b[1] == '1')
        hs = reverse(hs)
    end
    hs
end
