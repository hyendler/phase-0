	
def safe_room
	counter = 0
	while counter < 3
		array = []
		puts "Enter a number"
		number = $stdin.gets.chomp
		array = number.split("")
		new_array = []
		array.each { |i| new_array.push(i.to_i) }
		sum = 0
		new_array.each { |s| sum += s}
		puts sum
		multiply = 1
		new_array.each { |m| multiply *= m}
		puts multiply
		if sum == multiply
			puts "The safe is unlocked!  Bronson grabs the documents and goes out the living room, only to find Gia mysteriously gone from the hotel room. He pulls a cigarette from the pack on the table and leaves the hotel to go the Golden Gate Bridge. In any case, he still has to make the drop."
			break
		else
			counter += 1
			puts "You have #{3-counter} guesses left."
			#need to write something if the code does not get broken
		end
	end
end

safe_room


