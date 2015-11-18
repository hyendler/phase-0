# I worked on this challenge [by myself].


# Your Solution Below

# Pseudocode/notes
# Need to figure out which is the largest number, then can plug into the hypotenuse equation to see if it works

def valid_triangle?(a, b, c)
  if (a + b > c) && (a + c > b) && (b + c) > a
	true
  else
	false
  end


  # arr = [a, b, c]
  # largest_side = a
  # index = 0
  # for i in arr
  # 	if i >= largest_side
  # 		largest_side = i
  # 		index_of = arr.index(i)
  # 	end
  # end
  # arr.delete_at(index_of)
  # puts arr
  # angle = (arr[0]**2 + arr[1]**2 - largest_side**2).to_f / (2*arr[0]*arr[1])
  # if largest_side**2 == (arr[0])**2 + (arr[1])**2 - 2*arr[0]*arr[1]*angle
  # 	true
  # else
  # 	false
  # end



  # if (a**2 == b**2 + c**2) || (b**2 == c**2 + a**2 ) || (c**2 == b**2 + a**2)
  # 	true
  # else
  # 	false
  # end

end 

