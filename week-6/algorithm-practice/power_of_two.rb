# Write a method that takes in a number and returns true if it is a
# power of 2. Otherwise, return false.
#
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
#
# Difficulty: medium.

# Pseudocode
# I think I can use iteration.  1 however needs to be 
# first pass for 8
# def is_power_of_two?(8)
# 	else
# 	if num % 2 == 0
# 		is_power_of_two(4)
# 			else
# 			if num % 2 == 0
# 				is_power_of_two(2)
# 					else
# 					if num % 2 == 0
# 						is power_of_two(1)
# 							if num == 1
# 								return true
# 						
#  

def is_power_of_two?(num)
	if num == 1 || num == 0
		return true
    elsif num % 2 == 0
		is_power_of_two?(num/2)
	else
		return false
	end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('is_power_of_two?(1) == true: ' + (is_power_of_two?(1) == true).to_s)
puts('is_power_of_two?(16) == true: ' + (is_power_of_two?(16) == true).to_s)
puts('is_power_of_two?(64) == true: ' + (is_power_of_two?(64) == true).to_s)
puts('is_power_of_two?(78) == false: ' + (is_power_of_two?(78) == false).to_s)
puts('is_power_of_two?(0) == false: ' + (is_power_of_two?(0) == false).to_s)