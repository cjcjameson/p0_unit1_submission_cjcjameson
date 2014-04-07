# U1.W3: Research Methods

# Hi, this is cjcjameson doing these...alone!! :(

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select {|word| word.to_s.include? thing_to_find}
end

def my_hash_finding_method(source, thing_to_find)
  source.select {|pet,age| age==thing_to_find}.keys
end

# Identify and describe the ruby method you implemented. 
# The ruby method I'm using in both examples is SELECT
# SELECT picks out elements of an array, hash, or other enumerable
# if they satisfy a condition (evaluate to true). The pipes +
# bracket notation is because select acts like an iterator
# over the full array.
# COLLECT would be a similar method that could also work

# Person 2
def my_array_modification_method(source, thing_to_modify)
  output = []
  source.each {|word|
  	if word.is_a?(Integer)
  		then word += thing_to_modify
  	end
  	output << word
  }
  source = output
  return source
end

def my_hash_modification_method(source, thing_to_modify)
  output = Hash.new
  source.each {|pet,age|
  	new_age = age + thing_to_modify
  	output[pet] = new_age
  }
  source = output
  return source
end

# Identify and describe the ruby method you implemented. 
# After struggling with this for a long time, I realized it is
# important when modifying enumerables that you not modify it
# in place--you should always create a new one because modifying
# an object while you iterate over it could destabilize your
# system...even Matz himself weighs in on this! j.mp/tPOh2U

# Using EACH to iterate through the array/hash is the right operator
# but you need to start by initiating the output.

# I also struggled with the operator .is_a?(Integer). This function
# doesn't behave properly if the integer is already cast as
# a string, so lots of online resources have hack-y workarounds
# for this. But for our purposes, ints are ints, so we're ok.

# The tests below really seem to want you to have these modifications
# revise the array itself. In Java, I would pass a pointer to
# the argument of the function, rather than the argument itself,
# if I wanted the function to affect variables that were declared
# outside the scope of the function.


# Person 3
def my_array_sorting_method(source)
  return source.sort! {|x,y| x.to_s <=> y.to_s}
end

def my_hash_sorting_method(source)
  return source.sort_by {|pet,age| age}
end

# Identify and describe the ruby method you implemented. 
# 
# I'm just using SORT here. The weird thing is that hashes shouldn't
# actually be "sortable"; they're unordered by design. But because
# they're an enumerable, we can sort them.
#


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  source.delete(thing_to_delete)
  return source
end

def my_hash_deletion_method(source, thing_to_delete)
  source.delete(thing_to_delete)
  return source
end

# Identify and describe the ruby method you implemented. 
#
# Here the code for DELETE is pretty simple, and parallel for
# arrays and hashes both. The trick is that you need to return
# the modified enumerable, because the return of the delete function
# is the item that was deleted, not the new slimmer array
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.
p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets)
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages)
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a")
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George")
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# 
# I wasn't able to get the array modification methods to permanently
# alter the array outside the scope of the function. I think 
# that was my biggest challenge.
# working with a group of four, this would have been an even tougher
# impediment because the code for the modification methods would
# not have been in place yet
# 
# This exercise gave me a new appreciation for the Ruby.org libraries
# Google searches had been turning these references up, and I
# wasn't quite sure what to make of them. But now I know what they
# are, what they look like, what's useful in them.
# 