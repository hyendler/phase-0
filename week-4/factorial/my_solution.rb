# Factorial

# I worked on this challenge [with: Chris Shahin].


# Your Solution Below
def factorial(number)
  result = number
  for i in 1...number
  	result *= (number - i)
  end
  number == 0 ? 1 : result
end