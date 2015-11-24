# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? integer
# What is the output? (i.e. What should the code return?) string
# What are the steps needed to solve the problem?
# take in the integer, convert to string
# if the string is longer than 3, then insert a comma every 3 digits from the end.  (use an iterative loop with a decreasing i of -3)


# 1. Initial Solution
# def separate_comma(integer)
# 	string = integer.to_s
# 	if string.length <= 3
# 		p string
# 	else 
# 		i = -4
# 		while i >= -string.length
# 			string.insert(i, ",")
# 			i += -4
# 		end
# 		p string
# 	end
# end




# 2. Refactored Solution

def separate_comma(integer)
	string = integer.to_s
	if string.length > 3 
		i = -4
		while i >= -string.length
			string.insert(i, ",")
			i += -4
		end
	end
	string
end


# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?
# It was just a matter of figuring out how to do the iteration backwards, as well as control the interative step (as opposed to each or for which only incremets at 1).  I could have written it as a for loop in JS, but I couldn't find any documentation on the incrementation of the for loop.

# Was your pseudocode effective in helping you build a successful initial solution?
# Yep.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# Since we can't use regex in this problem, I couldn't find any other methods that would really do the job.  I did however use insert, because that's crucial. 

# How did you initially iterate through the data structure?
# Backwards, with a while loop, which allowed me to control the incremenation, as that was crucial to figuring out the index position of the insertion of the comma.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# The original if else statement was unnecessary.
