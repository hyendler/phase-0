# OO Basics: Student


# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(scores, first_name)   #Use named arguments!
    @scores = scores
    @first_name = first_name
  end

  def average
  	arr = @scores
  	average_score = arr.inject { |sum, num| sum + num} / arr.size
  	@average_score = average_score
  	return average_score
  end

# can't make letter grade work!!
  def letter_grade
	  case @average_score
	  	when 90..100
	  		 "A"
	  	when 80..89
	  		 "B"
	  	when 70..79
	  		 "C"
	  	when 60..69
	  		 "D"
	  	else 
	  		 "F"
	  end
  end

end

student1 = Student.new([100,100,100,0,100], "Alex")
student2 = Student.new([90, 95, 82, 91, 85], "Margaret")
student3 = Student.new([55, 67, 78, 70, 65], "David")
student4 = Student.new([90, 87, 100, 94, 81], "Hannah")
student5 = Student.new([75, 88, 80, 100, 95], "Sam")

students = [student1, student2, student3, student4, student5]

def linear_search(student_array, name)
	student_array.each do |student|
		if student.first_name == name
			return student_array.index(student)
		else
			return -1
		end
	end
end




# Binary search does not work, will come back to getting it working
# def binary_search(student_array, name, low, high) 
# 	student_array.sort_by! { |student| student.first_name }
# 	midpoint = (student_array.length - 1) / 2
# 	if high < low 
# 		return -1
# 	else
# 		if (student_array[midpoint].first_name > name)
# 			return binary_search(student_array, name, low, midpoint - 1)
# 		elsif (student_array[midpoint].first_name < name)
# 			return binary_search(student_array, name, midpoint + 1, high)
# 		else
# 			return midpoint
# 		end
# 	end
# end



	

# Refactored Solution
# ehhh, I think it's simple enough as it is.





# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

# p binary_search(students, "Alex", 0, students.length-1) == 0





# Reflection