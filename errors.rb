# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home." 

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
   end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# expecting keyword end
# 5. Where is the error in the code?
# Technically line 15, but because there is not end it shows the very bottom of the code.
# 6. Why did the interpreter give you this error?
# Because there is no end to the method.

# --- error -------------------------------------------------------

south_park = "0"

# 1. What is the line number where the error occurs?
# 36
# 2. What is the type of error message?
# nameError
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable
# 4. Where is the error in the code?
# na
# 5. Why did the interpreter give you this error?
# because local variables must be initialized to some value, even if it's just null.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# MethodError
# 3. What additional information does the interpreter provide about this type of error?
# undefined method
# 4. Where is the error in the code?
# na
# 5. Why did the interpreter give you this error?
# because the code is attempting to call a method that hasn't been defined.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
# 66
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# line 70
# 5. Why did the interpreter give you this error?
# Call the method with an argument, but the method doesn't accept parameters.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("You snigglywuss!")

# 1. What is the line number where the error occurs?
# 85
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguemtns (0 for 1)
# 4. Where is the error in the code?
# line 89
# 5. Why did the interpreter give you this error?
# because the code doesn't pass an argument to a method that requires a parameter.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "Hanah")

# 1. What is the line number where the error occurs?
# 106
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# line 110
# 5. Why did the interpreter give you this error?
# because when the method is called, it only passes one argument and the method requires two parameters

# --- error -------------------------------------------------------

5 * 4

# 1. What is the line number where the error occurs?
# 125
# 2. What is the type of error message?
# typeerror
# 3. What additional information does the interpreter provide about this type of error?
# string can't be coerced into fixnum
# 4. Where is the error in the code?
# line 125
# 5. Why did the interpreter give you this error?
# Because you can't multiple an integer by a string.

# --- error -------------------------------------------------------

	amount_of_kfc_left = 20/1


	# 1. What is the line number where the error occurs?
	# 140
	# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# line 140
# 5. Why did the interpreter give you this error?
# because you can't divide by zero.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 156
# 2. What is the type of error message?
# Load Error
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such a file
# 4. Where is the error in the code?
# line 156
# 5. Why did the interpreter give you this error?
# because it is trying to load a file that doesn't exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# They were all pretty self explanatory 

# How did you figure out what the issue with the error was?
# read the error type and the description/know a little bit about how code words

# Were you able to determine why each error message happened based on the code? 
# yep!  Error messages were super helpful.

# When you encounter errors in your future code, what process will you follow to help you debug?
# read the error message, look at my code, go back to pseudocode if need be.