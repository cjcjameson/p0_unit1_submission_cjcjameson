# U1.W3: Pad an Array!

# I worked on this challenge by myself (cjcjameson).

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself (cjcjameson).

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# DEFINE a function that takes an integer and another simple object
# define this function within the class ARRAY
# It does not return anything--it adjusts the underlying array.
# If the integer is less than or equal to the length of the array, do nothing
# If the integer is greater than the length of the array
# Then X times (the difference in length) append the second argument of the function

# DEFINE another function that does the above but is non-destructive: it returns a new array


# 2. Initial Solution

class Array
	def pad!(*args)
		new_maxlen = args[0] #refactor--better name for this?
		item = nil
		if args.length > 1
			item = args[1]
		end  #refactor--is there a more elegant way to do accept flexible #s of args?
		if self.length >= new_maxlen
			return
		else
			(new_maxlen-self.length).times do
				self.push!(item) #refactor--I think self is unnecessary
			end
		end
	end

	def pad(*args)
		dup.pad!(*args)
	end

end

# 3. Refactored Solution



# 4. Reflection 

# I learned that integers are special objects in Ruby--they are the only objects
# that act specially and aren't referenced as pointers