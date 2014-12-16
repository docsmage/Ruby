# Practice with the map, inject and select method

a = [1,2,3,4,5]

# Inject applies a block to combine the numbers using the 
# enumerable operator.

p a.inject(:+) # ==> 15
p (1..5).inject {|sum, n| sum + n} # ==> 15

# Select returns an array containing all the elements of
# the enumeartor for which the block returns true.

p a.select {|num| num.odd?} #==> 1,3,5
p a.select {|num| num.even?} #==> 2,4

# Map 

# Runs a block that maps over each enumerable in
# the original array - if no block is given, 
# it just returns the enumerable.

p a.map {|i| i*i} # => 1, 4, 9, 16, 25
p a.map { "cat" } # => ["cat", "cat", "cat", "cat", "cat"]
p a.map {|i| i.to_s + "!"} # => ["1!" "2!" "3!" "4!" "5!"]