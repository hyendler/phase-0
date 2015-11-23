# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# create a new hash from the string itereate through each word in string make into key with default quantity 0
# print the list to the console [last method created would print to list]
# output: [it would output the hash with keys and values]

# Method to add an item to a list
# input: item name and optional quantity
# steps: take item turn into hash key with optional quantity as value
# output: original modified hash (destructive method)

# Method to remove an item from the list
# input: key(item)
# steps: remove key and value from list using hash method
# output: original modified hash with less item 

# Method to update the quantity of an item
# input: key and new value
# steps: modify value of key using hash method
# output: original modified hash with new value for given key

# Method to print a list and make it look pretty
# input: the given hash
# steps: puts title of list and new line have items separated by a comma and values
# output: nil

# def create_list(string)
#   hash_list = Hash.new(0)
#   string.split.each{ |item| hash_list[item] = 1 }
#   print_list(hash_list)
# end

# def add_item(hash, string, quantity = 1)
#   hash[string] = quantity
# end

# def remove_item(hash, string)
#   hash.delete(string)
# end

# def update(hash, string, quantity)
#   hash[string] = quantity
# end

# def print_list(hash)
#   puts "My WHAM BAM GROCERY LIST"
#   hash.each{ |item, q| puts "#{item}, #{q}" }
# end

def create_list(string = nil)
  hash_list = Hash.new(0)
  if hash_list.empty?
  	return hash_list
  else
  	string.split.each{ |item| hash_list[item] = 1 }
  end
  print_list(hash_list)
end

def add_item(hash, string, quantity = 1)
  hash[string] = quantity
end

def remove_item(hash, string)
  hash.delete(string)
end

def update(hash, string, quantity)
  add_item(hash, string, quantity)
end

def print_list(hash)
  puts "My WHAM BAM GROCERY LIST"
  hash.each{ |item, q| puts "#{item}, #{q}" }
end


grocery_list = create_list()
add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Onions", 1)
add_item(grocery_list, "Ice Cream", 4)
remove_item(grocery_list, "Lemonade")
update(grocery_list, "Ice Cream", 1)
print_list(grocery_list)

# What did you learn about pseudocode from working on this challenge?
# Pseudocode is extraordinarily useful from thinking about not only how to structure a method or program, but how everything interplays with eachother.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# An array would not have completed this challenge, because we needed to be able to create a relationship between two items, the grocery item and it's quanity.  Arrays don't allow for key value relationships.  Even though we used an array to get to a hash.

# What does a method return?
# A method returns whatever value you tell it to.

# What kind of things can you pass into methods as arguments?
# Strings, ints, hashes, arrays, essentially any object.  Can even pass the result of a method.

# How can you pass information between methods?
# Saving the results of methods in instance variables and then using those instance variables in other methods is a great way to do so.  You can also pass the result of the method itself.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# I pretty much knew most of it all already, but John D. explained very well how hashes work. (the fact that the way to add a key value pair to a hash is the same as updating the value, due to the way that hashes work.)

