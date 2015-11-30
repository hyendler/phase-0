# Your Names
# 1) Hanah Yendler
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity) #input is string, integer
  serving_size_per_person = {"cookie" => 1, "cake" =>  5, "pie" => 7} #create hash 
  error_counter = 3 #create a counter

  if !serving_size_per_person.has_key? item_to_make
     raise ArgumentError.new("#{item_to_make} is not a valid input") 
  end
  
  # input order quantity
  # return the order_quantity/serving size + the extra number of pieces to make (aka the mod)

  serving_size = library.values_at(item_to_make)[0] #grab the hash values
  serving_size_mod = order_quantity % serving_size #figure out leftovers from the mod

  case serving_size_mod  #return different cases depending on the mod calculated
  when 0
  return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
  return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make} . Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)


#  Reflection
