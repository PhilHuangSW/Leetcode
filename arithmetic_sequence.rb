#################### CAN MAKE ARITHMETIC PROGRESSION FROM SEQUENCE ####################

# Given an array of numbers arr. A sequence of numbers is called an 
# arithmetic progression if the difference between any two consecutive 
# elements is the same.

# Return true if the array can be rearranged to form an arithmetic 
# progression, otherwise, return false.

# Example 1:
# Input: arr = [3,5,1]
# Output: true
# Explanation: We can reorder the elements as [1,3,5] or [5,3,1] with 
# differences 2 and -2 respectively, between each consecutive elements.

# Example 2:
# Input: arr = [1,2,4]
# Output: false
# Explanation: There is no way to reorder the elements to obtain an 
# arithmetic progression.
 
# Constraints:
# - 2 <= arr.length <= 1000
# - -10^6 <= arr[i] <= 10^6


#################### SOLUTION ####################
# @param {Integer[]} arr
# @return {Boolean}
def can_make_arithmetic_progression(arr)
  return true if arr.length == 2
  arr = arr.sort
  difference = arr[1] - arr[0]
  for i in 2...arr.length
      if arr[i] - arr[i-1] != difference
          return false
      end
  end
  return true
end

arr1 = [3,5,1]
arr2 = [1,5]
arr3 = [3,5,1,8]
arr4 = [3,5,1,7,11,9]
arr5 = [3,5,4,1]

puts "Expected: true -- Actual: #{can_make_arithmetic_progression(arr1)}"
puts "Expected: true -- Actual: #{can_make_arithmetic_progression(arr2)}"
puts "Expected: false -- Actual: #{can_make_arithmetic_progression(arr3)}"
puts "Expected: true -- Actual: #{can_make_arithmetic_progression(arr4)}"
puts "Expected: false -- Actual: #{can_make_arithmetic_progression(arr5)}"


