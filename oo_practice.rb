class Student
  attr_accessor :scores, :first_name
 
  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores  
  end

  def first_name
  	return @first_name
  end

  def scores
  	return @scores
  end

  def average
  	sum = 0
  	scores.each {|x| sum += x}
  	average = sum/scores.length
  end

  def letter_grade
	  if average >= 90
	    grade = "A"
	  elsif average >= 80
	    grade = "B"
	  elsif average >= 70
	    grade = "C"
	  elsif average >= 60
	    grade = "D"
	  elsif average <= 59
	    grade = "F"
	  end
  end

end
 
## ADD YOUR CODE HERE and IN THE CLASS ABOVE
 
#1. Create an array of 5 Students each with 5 test scores between 0 and 100.  
# The first Student should be named "Alex" with scores [100,100,100,0,100]
 
students = []

students << Student.new("Alex", [100, 100, 100, 0, 100])
students << Student.new("Robert", [80, 70, 50, 60, 70])
students << Student.new("Renee", [100, 100, 100, 90, 100])
students << Student.new("Ziad", [100, 90, 80, 70, 80])
students << Student.new("Alejandro", [100, 100, 100, 100, 100])

#2. Add average and letter_grade methods to the Student class.
 
 
#3. Write a linear_search method that searches the student array for a student name
# and returns the position of that student if they are in the array.
 
def linear_search(students, scores)
	students.each_with_index do |student, index|
		if student.first_name == scores	
			return index 
		else
			return -1 
		end
	end
end
 
#===========DRIVER CODE : DO NOT MODIFY =======
 
#Make sure these tests pass
# Tests for part 1:
 
p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0
 
 
# Tests for part 2
 
p students[0].average == 80
p students[0].letter_grade == 'B'
 
# Tests for part 3
 
p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1