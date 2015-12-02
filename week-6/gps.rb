# Your Names
# 1) Hanah Yendler
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

# def serving_size_calc(item_to_make, order_quantity) #input is string, integer
#   serving_size_per_person = {"cookie" => 1, "cake" =>  5, "pie" => 7} #create hash 
#   error_counter = 3 #create a counter

#   if !serving_size_per_person.has_key? item_to_make
#      raise ArgumentError.new("#{item_to_make} is not a valid input") 
#   end
  
#   # input order quantity
#   # return the order_quantity/serving size + the extra number of pieces to make (aka the mod)

#   serving_size = library.values_at(item_to_make)[0] #grab the hash values
#   serving_size_mod = order_quantity % serving_size #figure out leftovers from the mod

#   return 
# end

def serving_size_calc(item_to_make, order_quantity)
  # number_of_servings = {"cookie" => 1, "cake" =>  5, "pie" => 7} 
  # prices_of_items = {"cookie" => 1.5, "cake" => 15, "pie" => 12}
  bakery_items = {
    "cookie" => {"servings" => 1, "price_per_serving" => 1.5},
    "cake" =>  {"servings" => 5, "price_per_serving" => 4},
    "pie" => {"servings" => 7, "price_per_serving" => 3.5}
  }

  if !bakery_items.has_key? item_to_make
     raise ArgumentError.new("#{item_to_make} is not a valid input") 
  end
  
  # input order quantity
  # return the order_quantity/serving size + the extra number of pieces to make (aka the mod)

  serving_size = bakery_items[item_to_make["servings"]]
  puts serving_size
  total_of_item = (serving_size.to_f / order_quantity).ceil

  leftover_servings = order_quantity % serving_size

  money_earned_per_order = order_quantity * bakery_items[item_to_make["price_per_serving"]]

  return "For an order of #{order_quantity} of #{item_to_make}(s), you will need to make a total of #{total_of_item} #{item_to_make}(s).  You will have #{leftover_servings} leftover servings from this order quantity.  You will make $#{money_earned_per_order} for this order."

  #new features could include a multiplication table of the amount of ingredients one would need dependent on the serving size, or how much the bakery would own.  These would much better be as separate methods of a class of bakery, as they are mildly separate ideas but I digress.  

  return 
end


p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)


#  Reflection
