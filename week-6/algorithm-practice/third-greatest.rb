# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

# Pseudocode
# Do like the smallest number, except add a counter for everytime that the variable gets replaced.  If the counter reaches 3 or whatever, then return that number.
# Note.  The above did not work,because it was not in the correct order.  However, if I wanted to do this with Ruby methods, I could just do sort and return the one from the -3 place from the end.
# Without ruby methods, how do I know that something is the third greatest? I know something is the greatest if it is more than all the other ones.  I know something is the second greatest if it less than the greatest, but more than the rest.  I know something is third greatest if it is less than the first greatest and second greatest, but more than the rest.
# So find the greatest, pop that off.  Find the greatest again, and pop that off.  Find the third greatest and return that? (Can I do this recursively, but like only three times?)



# def third_greatest(nums)
# 	count = 0
# 	while count < 3
# 		number = nums[0]
# 		nums.each do |i|
# 			if i > number
# 				number = i
# 			end
# 		end
# 		count += 1
# 		nums.delete(number)
# 	end
# 	number
# end


# Refactored using Ruby methods


def third_greatest(nums)
	nums.sort!
	nums[-3]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)

# Reflection
# Man, I love built in ruby methods.  Also causing infinite loops is fun, and scary.