# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: an integer, which indicates the amount of sides
# Output: an object, which is an instance of the Die class
# Steps:  initialize the object with the agrument error built it
# write a method to see how many sides comes (pass in the argument of sides)
# write a method using the Random class to create a random die roll, using the number of a sides as one end of the range


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     unless sides >= 1
#     	raise ArgumentError.new("Must be a die with 1 side or more")
#     end
#     @sides = sides
#   end

#   def sides
#      @sides
#   end

#   def roll
#     number = Random.new
#     number.rand(1..@sides)
#   end
# end



# 3. Refactored Solution - Same as previous


class Die
  def initialize(sides)
    unless sides >= 1
    	raise ArgumentError.new("Must be a die with 1 side or more")
    end
    @sides = sides
  end

  def sides
     @sides
  end

  def roll
    number = Random.new
    number.rand(1..@sides)
  end
end




# 4. Reflection
# What is an ArgumentError and why would you use one?
# Argument Error is a like a fail catch - if the proper input is not given, it will send an error message.  Error messages like that need to be built it.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# Only Random, and it was easy!

# What is a Ruby class?
# A Ruby class is a generic template for creating an object of a specific kind (class)

# Why would you use a Ruby class?
# To create Ruby objects!  You need a Ruby object in order to have specific relationships between certain sets of data, methods assoicated with those sets of data, etc.

# What is the difference between a local variable and an instance variable?
# Local variable is declared within a method and can only be used there, instance variable can be declared within a class and used across that class.

# Where can an instance variable be used?
# Across a class and all of its objects.