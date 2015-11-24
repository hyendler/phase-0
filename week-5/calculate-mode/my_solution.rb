# This pad is reserved for a student in the Chorus Frogs cohort. 


# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Thomas Huang]

# NOTE: There is some extraneous pseudocode and code due to some time spent explaining concepts to Thomas.  Also hence the length of time spent on this challenge.

# I spent [2.5] hours on this challenge.



# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# Array full of either strings or integers
# What is the output? (i.e. What should the code return?)
# Final string/integer(s) that are most common in array.
# What are the steps needed to solve the problem?
# writing mini method of how to check if the first item in array occurs again
# [1, 2, 3, 3]
# def find_frequency(array)
#   counter = 0
#   array.each do |item|
#      if item == array[0]
#         counter += 1
#      end
#   end
#   counter
# end



#   enter each item the array as a key, when you first enter it the value of that key will be 1
#   1 => 1
#   2 => 1
#   3 => 2 if the key already exists inside the hash, update the value += 1
#  then cycle through hash and those keys with max value(s) are pushed into an array and returned

# declare method and pass in array
#   variable to count common occurrences
#  take each item in the array and 




# taken in an array [1, 2, 2, 3, 3, 3]
#   create an empty hash
#   iterate over the array
#     push each item in the array into the hash as a key, with a value of 1
#     but what happens if the key already exists?
#     increase the value of that particular key
#   end - by the end, we should have a hash with keys of the items in the array, with values of how many times that key appears
#   {1 => 1, 2 => 2, 3 => 3}
#    we need to figure a way to iterate to compare the values, and the keys with the most values we would push back into a new array. 
#
# at the end of the day, we return that new array with the key(s) that have appeared the most.


# 1. Initial Solution

# def find(array)
#   hash = Hash.new(0)
#   array.each do |item|
#     hash[item] += 1
#   end 
#   new_array = []
#   max_value = hash.values[0]
#   hash.each do |key, value|
#     if value > max_value
#       max_value = value
#       new_array = []
#     end
#     new_array.push key if value == max_value
#   end
#   new_array
# end





# Explanation of how to find a max value:
#
# def find_max_value(array)
#   new_array = []
#   max_value = array[0]
#   array.each do |item|
#     if item > max_value
#       max_value = item
#     end
#   end
#   return max_value
# end
#
# find_max_value([1, 2, 2, 3, 3])
# max_value = array[0] = 1
# first time through the each loop
#   item = 1
#   if 1 > 1, doesn't execute
# second time through the loop
#   item = 2
#   if 2 > 1
#     max_value = 2
# third time through loop
#   item = 2
#   if 2 > 2
#     doesn't execute
# fourth time through loop
#   item = 3
#   if 3 > 2 
#   max_value = 3
# fifth time through loop
# item = 3
# if 3 > 3, doesnt execute.

# 3. Refactored Solution

def find(array)
  hash = Hash.new(0)
  array.each do |item|
    hash[item] += 1
  end 
  max_value = hash.values.max
  new_array = hash.select { |key, value| value == max_quantity}.keys
  p new_array
end

# had help


# 4. Reflection