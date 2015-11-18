# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below


def array_concat(array_1, array_2)
  array_2.each do |i|
  	array_1.push(i)
  end
  return array_1
end

# def array_concat(array_1, array_2)
#   for i in array_2
#   	array_1.push(i)
#   end
#   return array_1
# end
