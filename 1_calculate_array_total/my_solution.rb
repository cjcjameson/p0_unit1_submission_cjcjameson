# U1.W3: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself (cjcjameson).

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# For TOTAL
# DEFINE a function that takes one argument, which should be an array of nums.
# OUTPUT a single number, which will be the sum of the array elements.
# In between, INITIALIZE a counter element at 0
# Then, ITERATE over all elements of the input array and add them to the running total

# For SENTENCE_MAKER
# DEFINE a function that takes one argument, which should be an array of strings.
# OUTPUT a single string, which will be the input formed into a sentence
# In between, INITIALIZE a string with the first item in the array, and make it uppercase
# Then, ITERATE over the remaining elements in the array to add them to the output string

# 2. Initial Solution

# def total(arr)
# 	output = 0
# 	for num in arr
# 		output += num
# 	end
# 	return output
# end

# def sentence_maker(str_arr)
# 	output = str_arr[0]
# 	str_arr.shift
# 	output.capitalize!
# 	for word in str_arr
# 		output += ' '
# 		output += word.to_s
# 	end
# 	output += '.'
# 	return output
# end


# 3. Refactored Solution

def total(int_ary) #renamed int_ary because that's more conventional in Ruby, clear and parallel with the below
	output = 0
	int_ary.each { |num|
		output += num
	} #changed to an each loop to match preferred Ruby idiom
	return output #vars are all named well and compactly
end

def sentence_maker(str_ary) #renamed str_ary
	output = str_ary.shift #this initialization can be done in one line
	output.capitalize! #this could be on the above line, but clearer separate
	str_ary.each { |word| #changed to an each loop
		output += ' '
		output += word.to_s #clearest to have these two lines separate
	}
	output += '.'
	return output
end

# 4. Reflection 

# I think my strategy worked pretty well here; didn't run into any issues.
# I had to be careful about the sequencing of everything in sentence_maker
# I wondered what the best method was to pull out the first item of the array
# Reading the ruby docs showed me shift which was perfect
# No concepts I'm having trouble with here. Impressed that += works with simple strings
# New skills or tricks: Hungarian variable notation, getting more comfortable with
# the EACH idiom
# Spot on with all the learning objectives
# I enjoyed refactoring my code--I was happily surprised that I actually did have
# things on which to improve.
# It was tedious to look up the appropriate function calls for methods I know exist