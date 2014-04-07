# U1.W3: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself (cjcjameson).

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# Ah, we did this in Socrates, but Socrates was down, so I'll just
# start from scratch. In any case, the part about strings is new

# DEFINE a function that takes one argument, an array, with
# either all numbers or all strings as its contents
# OUTPUT a single number or string that is the median
# in between: if there is one element remaining, return that
# if there are two elements remaining, return the average
# if there are more elements remaining, remove the highest and lowest and retry


# 2. Initial Solution

def median(arr)
	if arr.length == 0
		return "empty array"
	elsif arr.length == 1
		return arr[0]
	elsif arr.length == 2 && arr[0].is_a?(Integer)
		return (arr[0]+arr[1])/2.to_f
	elsif arr.length == 2
		return "there are two medians: " + arr[0] + ' and ' + arr[1]
	else
		vars_to_remove = arr.minmax
		for var in vars_to_remove
			arr.delete_at(arr.index(var)) #this makes sure that only one item is dropped. a simple FIND would drop all examples of the number
				#find_index or rindex would also work
		end
		median(arr) #recursive call
	end
end





# 3. Refactored Solution



# 4. Reflection 