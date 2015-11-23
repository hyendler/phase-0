# Pad an Array

# I worked on this challenge [with: Cole Kent]

# I spent [.6] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array, minimum size, and optional argument which serves as a padder.  If no optional argument, nil is used.

# What is the output? (i.e. What should the code return?)
# pad return a new array, which is a modified copy of the original array
# pad! return modified original array

# What are the steps needed to solve the problem?
#pad!
#take the array
#  check the length.  While the length < min_size, 
#    need to add value using .push method or << until min_size is reached.
#return modified array

#pad
#create new array equal to original array
# while length < min_size
#  need to add value to new array using .push method or << until min_size is reached
# return new array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  while array.length < min_size
    array << value
  end
  array
end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = []
#   new_array += array
#   while new_array.length < min_size
#     new_array << value
#   end
#   new_array
# end

# p pad!([1,2,3], 5, 'apple')

# 3. Refactored Solution

def pad(array, min_size, value = nil) #non-destructive
  new_array = [] + array
  while new_array.length < min_size
    new_array << value
  end
  new_array
end

# 4. Reflection
# What did you learn about pseudocode from working on this challenge?
# Writing the pseudocode in the structure of code, not just a list of steps, is so so useful.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# There was no need to use a hash, because there was no need for an item in the list to have a key-value relationship.

# What does a method return?
# A method can return anything you would like it to - int, string, hash, array, etc.

# What kind of things can you pass into methods as arguments?
# Pretty much any type of object as well - 

# How can you pass information between methods?
# You can either pass the result of the method itself, or you can store the result of the method in instance variables (which are useful because they are outside of the methods) and then pass the instance variable.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# Pretty much knew all of them already.