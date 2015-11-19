# Leap Years

# I worked on this challenge [with: Chris Shahin].


# Your Solution Below


# Leap Years

# I worked on this challenge [with Hanah Yendler ].


# Your Solution Below

# ***********************************
# I am aware that this code is currently out on stackoverflow, On the bottom of this page
# I show how I came to this conclusion.  The day after writing the code, with Hanah, I decided to
# try to make it cleaner, as I have done this before, but couldn't remember the exact code.
# with very basic logic, I came up with this code, from the code on the bottom of the page.

def leap_year? year

    if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
        return true
    end

    false

end


#**************** below is my original code, before refactor **********************
=begin
def leap_year? year

    if year % 4 == 0 && year % 100 != 0
        return true
    end

    if year % 400 == 0
        return true
    end

  //  if year % 4 == 0 && year % 100 == 0 && year % 400 != 0
  //       return false
  //  end

  //  if year % 4 == 0
  //      return false
  /  end

    return false

end

=end



