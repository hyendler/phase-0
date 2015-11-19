# Calculate a Grade

# I worked on this challenge [with: Chris Shahin].


# Your Solution Below

def get_grade int
	case int
	when 90...100
		return "A"
	when 80...89
		return "B"
	when 70...79
		return "C"
	when 60...69
		return "D"
	when 50...59
		return "F"
	else 
		return "F"
	end
end