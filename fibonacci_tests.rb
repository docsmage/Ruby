def is_fibonacci?(i)
value_holder = 0 
fib_number = [0, 1, 2] # initializes the array where we will store all the values we need to work with. 
  while( i > value_holder) # sets up a while loop for while the integer (i) is larger than 0
    value_holder = fib_number[1] + fib_number[2] # 
    fib_number[1] = fib_number[2] 
    fib_number[2] = value_holder
  end # ends while loop

  if i == value_holder
    return true
  else i != value_holder
    return false
  end # ends the if-then statement
end # ends the is_fibonacci?(i) method

def assert # defines the assert method.
  raise "Assertion failed!" unless yield # yield defines the argument that will be passed through if the parameters
  # of the block are met. In this case, it's defining what will appear if the paramters (the name equaling "bettysue"
  # are NOT met, via the 'unless' statement. It's a bit of a confusing example but it works to define the concept!
end # ends the assert method.

assert { is_fibonacci?(144) == true }
assert { is_fibonacci?(1596) == false }
assert { is_fibonacci?(610) == true }
assert { is_fibonacci?(5000) == false }
assert { is_fibonacci?(6600) == true } # this line had the "Assertion Failed!" error. When I
# correct it to 'false', the error goes away and I get nil for all of these statements.
# This teaches me how to correctly produce the error message by putting incorrect information
# into the block parameters, thereby calling the assert error message.
assert { is_fibonacci?(6765) == true }