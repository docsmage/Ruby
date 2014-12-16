# PSEUDOCODE
# Write a method separate_comma which takes an integer as its input and returns a comma-separated integer as a string. 

=begin
- Convert integer to an array of strings -- number.to.s.split('')
- Reverse the array (.reverse)
- Accessing the index of the array, for every value that is 3 % 0, push a comma into the array 
  at that spot
- Reverse the array back and join as a whole string


def separate_comma(number)
    num_array = number.to_s.split('') # converts the numbrer to an array of strings
    num_array.reverse                 # reverses the number
    num_array.each_slice(3)
    num_array.map {|x| x.join("")}

  #  num_array.each_index do |x| # iterate through the values of the array
  #    if x % 3 == 0 # if the number is divisable by 3
  #    	num_array.insert(3, ",") # push a comma into the array
#		break if x == 0 # preventing an infinite loop
#      end # ends the if statement
#	end # ends do statement
#	return num_array
	num_array.reverse # reverses the array
	num_array.join(",") # brings it together as a whole number
end # ends separate_comma

p separate_comma(1000)

=end

def separate_comma(num)
num_array = num.to_s.split("").reverse # converts the number to an array of strings
# The reversal above will allow us to apply the slice to the numbers starting 
# from the bottom of the number and counting up (so 1,000 instead of 100,0) 
sliced_num = num_array.each_slice(3) #  does the slicing of the array by three
mapped_num = sliced_num.map {|x| x.join("").reverse} 
# .map up above iterates through the entire array; 
# .join removes the commas that would come between each number in a typical array;
# and .reverse reverses the sliced number so we can add the new commas into it
 reversed_num = mapped_num.reverse # reverses the number back to it's original state
 reversed_num.join(",") # joins together each of the sets of three numbers with a comma between then
end # ends separate_comma

puts separate_comma(12500)
puts separate_comma(123456789)
puts separate_comma(2)