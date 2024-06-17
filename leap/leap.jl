"""
    is_leap_year(year)

Return `true` if `year` is a leap year in the gregorian calendar.

"""
function is_leap_year(year)
    ans = false
    if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
        ans = true
    end
    ans
end

