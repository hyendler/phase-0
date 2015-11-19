# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Method will receive an array as output
# Output: Method will return an integer
# Steps to solve the problem.

# Declare an empty variable of sum
# Loop through each item in the array and add it to sum
# return the sum variable


# 1. total initial solution

def total(array)
	sum = 0
	array.each do |i|
		sum += i
	end
	sum
end

# 3. total refactored solution

#na

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of individual strings
# Output: a full string
# Steps to solve the problem.
# create an empty string
# use an iterative loop to concatenate the items in an array into the string.  make sure to capitalize the first word somehow.


# 5. sentence_maker initial solution
def sentence_maker(array)
	string = ""
	array[0].capitalize!
	last = array.pop
	array.each do |i|
		string += i.to_s + " "
	end
	string += last + "."
	return string
end



# 6. sentence_maker refactored solution

