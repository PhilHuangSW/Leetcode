#################### MAXIMUM 69 NUMBER ####################

# Given a positive integer num consisting only of digits 6 and 9.

# Return the maximum number you can get by changing at most one 
# digit (6 becomes 9, and 9 becomes 6).

# Example 1:
# Input: num = 9669
# Output: 9969
# Explanation: 
# Changing the first digit results in 6669.
# Changing the second digit results in 9969.
# Changing the third digit results in 9699.
# Changing the fourth digit results in 9666. 
# The maximum number is 9969.

# Example 2:
# Input: num = 9996
# Output: 9999
# Explanation: Changing the last digit 6 to 9 results in the maximum number.

# Example 3:
# Input: num = 9999
# Output: 9999
# Explanation: It is better not to apply any change.

# Constraints:
# - 1 <= num <= 10^4
# - num's digits are 6 or 9.


#################### SOLUTION ####################
# @param {Integer} num
# @return {Integer}
# Idea is this: 
# 1) Convert number to an array with 1 number each index
# 2) Loop through the array, for the first 6 you encounter, change it to a 9 and exit the loop
# 3) Join back the loop and convert it into an Integer
def maximum69_number (num)
  num_array = num.to_s.split(//)
  for i in 0...num_array.length
      if num_array[i] == "6"
          num_array[i] = "9"
          break
      end
  end
  num_array.join.to_i
end

num1 = 6969
num2 = 9669
num3 = 669
num4 = 966
num5 = 666
num6 = 999

puts "Expected: 9969 -- Actual: #{maximum69_number(num1)}"
puts "Expected: 9969 -- Actual: #{maximum69_number(num2)}"
puts "Expected: 969 -- Actual: #{maximum69_number(num3)}"
puts "Expected: 996 -- Actual: #{maximum69_number(num4)}"
puts "Expected: 966 -- Actual: #{maximum69_number(num5)}"
puts "Expected: 999 -- Actual: #{maximum69_number(num6)}"