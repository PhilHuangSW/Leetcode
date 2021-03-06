#################### MINIMUM OPERATION TO MAKE ARRAY EQUAL ####################

# You have an array arr of length n where arr[i] = (2 * i) + 1 for all valid 
# values of i (i.e. 0 <= i < n).

# In one operation, you can select two indices x and y where 0 <= x, y < n and 
# subtract 1 from arr[x] and add 1 to arr[y] (i.e. perform arr[x] -=1 and arr[y] += 1).
# The goal is to make all the elements of the array equal. It is guaranteed that all 
# the elements of the array can be made equal using some operations.

# Given an integer n, the length of the array. Return the minimum number of 
# operations needed to make all the elements of arr equal.

# Example 1:
# Input: n = 3
# Output: 2
# Explanation: arr = [1, 3, 5]
# First operation choose x = 2 and y = 0, this leads arr to be [2, 3, 4]
# In the second operation choose x = 2 and y = 0 again, thus arr = [3, 3, 3].

# Example 2:
# Input: n = 6
# Output: 9

# Constraints:
# - 1 <= n <= 10^4


#################### SOLUTION ####################
# @param {Integer} n
# @return {Integer}
def min_operations(n)
    min_num_times = 0
    odd_increase = 1
    while odd_increase < n
        min_num_times += (n - odd_increase)
        odd_increase += 2
    end
    min_num_times
end

n1 = 3
n2 = 6
n3 = 12
n4 = 4
n5 = 2

puts "Expected: 2 -- Actual: #{min_operations(n1)}"
puts "Expected: 9 -- Actual: #{min_operations(n2)}"
puts "Expected: 36 -- Actual: #{min_operations(n3)}"
puts "Expected: 4 -- Actual: #{min_operations(n4)}"
puts "Expected: 1 -- Actual: #{min_operations(n5)}"