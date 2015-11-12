# Full Name Greeting

puts "What is your first name?"
first-name = gets.chomp
puts "What is your middle name?"
middle-name = gets.chomp
puts "What is your last name?"
last-name = gets.chomp
puts "Hello #{first-name} #{middle-name} #{last-name}!"


#bigger, better, favorite number

puts "What is your favorite number?"
favorite-number=gets.chomp.to_i
favorite-number += 1
puts "Here is a bigger better number #{favorite-number.to_s}"


=begin 

How do you define a local variable?

A local variable is a variable located and used within a code block or method.  A varialble acts as a containter for information.

How do you define a method?

A method is an actionable piece of code that contains a list of steps to take.

What is the difference between a local variable and a method?

A local variable is a container of information that can change - a method is an action of things to do upon variables or other objects.

How do you run a ruby program from the command line?

type in irb and enter your code.

How do you run an RSpec file from the command line?

You normally have two separate files - one with the code you want to test, and one with the Rspec file, linked to the initial code file.  you then type in rspec name_of_spec_file to run Rspec.

What was confusing about this material? What made sense?

Type conversion is a little tougher in Ruby.  I used to do Java where it was always expliciting defined, and as such I didn't have to remember which type was what when.

=end