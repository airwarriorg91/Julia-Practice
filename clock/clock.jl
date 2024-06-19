using Dates
using Printf
# Define the Clock type
struct Clock
    hours::Int
    minutes::Int

    function Clock(hours::Int, minutes::Int)
        total_minutes = mod(hours * 60 + minutes, 1440)
        new_hours = total_minutes ÷ 60
        new_minutes = total_minutes % 60
        new(new_hours, new_minutes)
    end
end

# Define the string representation of the Clock
function Base.show(io::IO, clock::Clock)
    print(io, @sprintf("\"%02d:%02d\"", clock.hours, clock.minutes))
end

# Define equality for Clock
Base.:(==)(c1::Clock, c2::Clock) = c1.hours == c2.hours && c1.minutes == c2.minutes

# Define addition of minutes to the Clock using the + operator
function Base.:+(clock::Clock, minutes::Minute)
    Clock(clock.hours, clock.minutes + Dates.value(minutes))
end

# Define subtraction of minutes from the Clock using the - operator
function Base.:-(clock::Clock, minutes::Minute)
    Clock(clock.hours, clock.minutes - Dates.value(minutes))
end