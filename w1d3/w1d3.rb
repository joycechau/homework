# For tonight's exercises, we are going to write several recursive functions.
# Here's how you should approach each problem:
#
# Read the problem statement to make sure you fully understand the problem
# Identify the base case(s)
# Determine the inductive step
# Write the function
# Run the provided test cases to verify you have a working solution
# As we learn recursion, it is important that we break down each problem
# into these steps. Doing so will help us devise solutions and avoid stack
# overflow errors.
#
# If you encounter strange bugs or errors, use byebug!
#
# After you finish the exercises, or if you get stuck on one of the problems,
# you can view the solutions here.
#
# Exercise 1 - sum_to
#
# Write a function sum_to(n) that uses recursion to calculate the sum
# from 1 to n (inclusive of n).

def sum_to(n)
  return 1 if n == 1
  return if n < 0
  n + sum_to(n - 1)
end

#   # Test Cases
puts sum_to(5)  # => returns 15
puts sum_to(1)  # => returns 1
puts sum_to(9)  # => returns 45
puts sum_to(-8)  # => returns nil

# Exercise 2 - add_numbers
# Write a function add_numbers(nums_array) that takes in an array of
# Fixnums and returns the sum of those numbers. Write this method recursively.
#

def add_numbers(nums_array = nil)
  return if nums_array.nil?
  return nums_array.first if nums_array.length == 1
  nums_array[0] + add_numbers(nums_array[1..-1])
end

  # Test Cases
puts add_numbers([1,2,3,4]) # => returns 10
puts add_numbers([3]) # => returns 3
puts add_numbers([-80,34,7]) # => returns -39
puts add_numbers() # => returns nil


# Exercise 3 - Gamma Function
#
# Let's write a method that will solve Gamma Function recursively.
# The Gamma Function is defined Γ(n) = (n-1)!.

def gamma_fnc(n)
  return if n <= 0
  return 1 if n == 1
  gamma_fnc(n-1) * (n-1)
end
#   # Test Cases
puts gamma_fnc(0)  # => returns nil
puts gamma_fnc(1)  # => returns 1
puts gamma_fnc(4)  # => returns 6
puts gamma_fnc(8)  # => returns 5040

def func(arg1, arg2)
  temp = arg1 * arg2
  return_val = (temp ** 2) + (arg1 % 6 + 1) / (7 + arg2 + arg1)
end

puts func(5, 10)
