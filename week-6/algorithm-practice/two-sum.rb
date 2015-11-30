# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

# Pseudocode
# check if the first number in the array adds to 0 with subsequent numbers with nested loops.  If not, then check if the second number and so on.  Use iteration to do so.

def two_sum(nums)
	arr = []
	nums.each do |i|
		nums.each do |j|
			if i + j == 0
				arr.push(nums.index(i))
				arr.push(nums.index(j))
				return arr
			end
		end
	end	
	return nil
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.


puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)

# Refactor/Reflection
# I did not refactor, as the solution provided (which is written below) is more lines of code and harder to follow from a logic perspective.  Yes, my solution does mean that there is some repetition in the calculations, but I'm okay with that.  Also, as a side note I find it infinitely annoying that I can't control the iteration increment in a for loop in Ruby (unlike in JS where you can).  This means in order to control incrementation, you have to do a while loop and increment it yourself and build in a stop break.

# def two_sum(nums)
#   idx1 = 0
#   while idx1 < nums.length
#     idx2 = idx1 + 1
#     while idx2 < nums.length
#       if nums[idx1] + nums[idx2] == 0
#         return [idx1, idx2]
#       end

#       idx2 += 1
#     end

#     idx1 += 1
#   end

#   return nil
# end
