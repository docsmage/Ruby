
def new_hash_method(hash, key_element)
new_hash = {}
	hash.each do |key, value| 
		if key.to_s.match(key_element) 
			new_hash[key] = value
		end
	end
	new_hash
end

# the hash below has four keys, two contain the letter a
my_hash = {:a => 1, :a2 => 2, :b => 3, :c => 4}
another_hash = {:z1 => "Ruby", :z2 => "is", :x3 => "not", :z4 => "cool" }


# for the method, I want it to take the keys that have the letter a in them and 
# push them into a new hash

p new_hash_method(my_hash, "a")
p new_hash_method(another_hash, "z")