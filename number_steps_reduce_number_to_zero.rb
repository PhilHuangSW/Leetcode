#################### NUMBER OF STEPS TO REDUCE A NUMBER TO ZERO ####################

# Given a non-negative integer num, return the number of steps to reduce it to 
# zero. If the current number is even, you have to divide it by 2, otherwise, 
# you have to subtract 1 from it.

# Example 1:
# Input: num = 14
# Output: 6
# Explanation: 
# Step 1) 14 is even; divide by 2 and obtain 7. 
# Step 2) 7 is odd; subtract 1 and obtain 6.
# Step 3) 6 is even; divide by 2 and obtain 3. 
# Step 4) 3 is odd; subtract 1 and obtain 2. 
# Step 5) 2 is even; divide by 2 and obtain 1. 
# Step 6) 1 is odd; subtract 1 and obtain 0.

# Example 2:
# Input: num = 8
# Output: 4
# Explanation: 
# Step 1) 8 is even; divide by 2 and obtain 4. 
# Step 2) 4 is even; divide by 2 and obtain 2. 
# Step 3) 2 is even; divide by 2 and obtain 1. 
# Step 4) 1 is odd; subtract 1 and obtain 0.

# Example 3:
# Input: num = 123
# Output: 12

# Constraints:
# - 0 <= num <= 10^6


#################### SOLUTION ####################
# @param {Integer} num
# @return {Integer}
# TIME: O(n) -- SPACE: O(1)
def number_of_steps (num)
  return 0 if num == 0
  count = 0
  while num != 0
    num%2 == 0 ? num = num/2 : num -= 1
    count += 1
  end
  count
end

num1 = 14
num2 = 8
num3 = 123
num4 = 0
num5 = 1
num6 = 10

puts "Expected: 6 -- Actual: #{number_of_steps(num1)}"
puts "Expected: 4 -- Actual: #{number_of_steps(num2)}"
puts "Expected: 12 -- Actual: #{number_of_steps(num3)}"
puts "Expected: 0 -- Actual: #{number_of_steps(num4)}"
puts "Expected: 1 -- Actual: #{number_of_steps(num5)}"
puts "Expected: 5 -- Actual: #{number_of_steps(num6)}"