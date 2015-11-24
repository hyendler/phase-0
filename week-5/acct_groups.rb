# I worked this challenge by myself.

# Pseudocode:
# accept an array of array of students 
# 	figure out length of the array, and in order to maximize the number of groups that are 4 or 5, using the modulous of the length of the array to determine how the groups are split up.
# 	need the general condition that the list needs to be longer than 10 for this to work properly:
# 	if array mod 5 = 1 
# 	then will need at 2 groups of 4 and 1 group of 3, rest are groups of 5
# 	if array mod 5 = 2
# 	then will need at 3 groups of 4, rest are groups of 5
# 	if array mod 5 = 3
# 	then will need at 2 groups of 4, rest are groups of 5
# 	if array mod 5 = 4
# 	then will need at  1 group of 4, rest are groups of 5
# 	can write a loop for the last 3 conditions, as the number of 4 groups are just 5 minus the mod.
# 	The only other special condition will be for array mod 5 = 1 so we can get a group of 3.
# 	The way this could operate is that first chunk off the necessary number of 4 and 3 person groups, and then use a preexisting method to chunk the rest into groups of 5.  



array_of_students = ["Sean Massih", "Tom McHenry", "Alex Mitzman", "Brenda Nguyen", "Matthew Oppenheimer", "Mason Pierce", "Joe Plonsker", "Mira Scarvalone", "Joseph Scott", "Chris Shahin", "Benjamin Shpringer", "Lindsey Stevenson", "Phil Thomas", "Gary Tso", "Ting Wang", "Clinton Weber", "Monique Williamson", "Regina Wong", "Hanah Yendler"]

def account_groups(array)
	length = array.length
	mod = length % 5
	new_array = []
	if length >= 10
		if mod.between?(2,4)
			iteration_count = 5 - mod
			for i in 0...iteration_count
				new_array.push(array.slice!(i, 4).to_a)
			end
		end
		if mod == 1
			new_array.push(array.slice!(0, 3).to_a)
			2.times do 
				new_array.push(array.slice!(0, 4).to_a)
			end
		end
		array.each_slice(5) do |arr|
			new_array << arr
		end
	end
	return new_array
end

def print_account_groups(array)
	i = 1
	array.each do |group|
		puts "Accountability Group #{i}"
		group.each do |student|
			puts student
		end
		i += 1
		puts " "
	end
end

accountability_groups = account_groups(array_of_students)
print_account_groups(accountability_groups)

# def split_array(array)
# 	array.each_slice(5).to_a
# 	p array
# end

# split_array(array_of_students)