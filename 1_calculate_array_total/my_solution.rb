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

def total(arr)
	output = 0
	for num in arr
		output += num
	end
	return output
end

def sentence_maker(str_arr)
	output = str_arr[0]
	str_arr.shift
	output.capitalize!
	for word in str_arr
		output += ' '
		output += word.to_s
	end
	output += '.'
	return output
end


# 3. Refactored Solution



# 4. Reflection 