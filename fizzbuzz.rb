# Fizzbuzz in Ruby:

# 1) Print numbers 1 through 100
# 2) For multiples of three print "Fizz"
# 3) For multiples of five print "Buzz"
# 4) For multiples of three and five print "Fizzbuzz"

# 1: FizzBuzz with an if statement

fzbz_array = 1..100
fzbz_array.to_a

fzbz_array.map { |x|
	if x % 5 == 0 && x % 3 == 0
		puts "FizzBuzz"
	elsif x % 5 == 0
		puts "Buzz"
	elsif x % 3 == 0
		puts "Fizz"
	else
		puts x
	end }

# 2: FizzBuzz with a case statement

# fzbz_array = (1..100).to_a # Note the refatored one-line array

# fzbz_array.map { |x|
# case
# 	when x % 5 == 0 && x % 3 == 0
# 		puts "FizzBuzz"
# 	when x % 5 == 0
# 		puts "Buzz"
# 	when x % 3 == 0
# 		puts "Fizz"
# 	else
# 		puts x
# 	end }

# 3: FizzBuzz with classes and modules

# class FizzBuzz
# 	def initialize(num)
# 		num % 5 == 0 && num % 3 == 0
# 			puts "FizzBuzz"
# 		num % 5 == 0
# 			puts "Buzz"
# 		num % 3 == 0
# 			puts "Fizz"
# 		num
# 			puts "#{num}"
# 	end
# end

# module FizzBuzzer
# 	def self.process(array)
# 		array.map {|x| x = FizzBuzz.new(x) }
# 	end
# end

# one_hundred = (1..100).to_a
# FizzBuzzer.process(one_hundred)