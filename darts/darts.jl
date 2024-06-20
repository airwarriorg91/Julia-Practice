"""
In our particular instance of the game, the target rewards 4 different amounts of points, depending on where the dart lands:

Our dart scoreboard with values from a complete miss to a bullseye

If the dart lands outside the target, player earns no points (0 points).
If the dart lands in the outer circle of the target, player earns 1 point.
If the dart lands in the middle circle of the target, player earns 5 points.
If the dart lands in the inner circle of the target, player earns 10 points.
The outer circle has a radius of 10 units (this is equivalent to the total radius for the entire target), 
the middle circle a radius of 5 units, and the inner circle a radius of 1. Of course, 
they are all centered at the same point — that is, the circles are concentric defined by the coordinates (0, 0).
"""

function score(x, y)
    r = sqrt(x^2 + y^2)

    if (r <= 1)
        score = 10
    elseif (r > 1 && r <= 5)
        score = 5
    elseif (r > 5 && r <= 10)
        score = 1
    else
        score = 0
    end

    score
end
