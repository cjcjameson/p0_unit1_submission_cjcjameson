# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself (cjcjameson).

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# DEFINE a function that takes an array of numbers
# SUM the numbers in the array
# DIVIDE (floating) the sum by the length of the array
# TRANSLATE the CASES of numbers into letter grades
# OUTPUT a string (really only one character) with the letter grade

# ALERT! I solved this in Socrates before, so I'm just going to
# use that code as my "initial solution"

# 2. Initial Solution

def get_grade(scores)
  scoreTotal = 0
  scores.each {|grade| scoreTotal+= grade}
  avgScore = scoreTotal / scores.size
  case
    when avgScore >= 90
      return "A"
    when avgScore >= 80
      return "B"
    when avgScore >= 70
      return "C"
    when avgScore >= 60
      return "D"
    else
      return "F"
  end
end


# 3. Refactored Solution



# 4. Reflection 