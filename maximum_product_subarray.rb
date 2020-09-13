#################### MAXIMUM PRODUCT SUBARRAY ####################

# Given an integer array nums, find the contiguous subarray within an 
# array (containing at least one number) which has the largest product.

# Example 1:
# Input: [2,3,-2,4]
# Output: 6
# Explanation: [2,3] has the largest product 6.

# Example 2:
# Input: [-2,0,-1]
# Output: 0
# Explanation: The result cannot be 2, because [-2,-1] is not a subarray.


#################### SOLUTION ####################
# @param {Integer[]} nums
# @return {Integer}
# Finds all the subarrays of an array
def sub(arr)
  ans = []
  temp = []
  for i in 0...arr.length
    for j in i...arr.length
      for k in i..j
        temp << arr[k]
      end
      ans << temp
      temp = []
    end
  end
  ans
end

# Outputs the product of an array
def product(arr)
  product = 1
  for i in 0...arr.length
    product *= arr[i]
  end
  product
end

# Produces all the subarrays, finds the product of each subarray - 
# - then finds the max
def max_product(num)
  all_sub = sub(num)
  product_sub = []
  for i in 0...all_sub.length
    product_sub << product(all_sub[i])
  end

  product_sub.max
end

arr1 = [2,3,-2,4]
arr2 = [-2,0,-1]
arr3 = [10,0,2,4,5]
arr4 = [-2]
arr5 = [-1,11,0,12,2]

puts "Expected: 6 -- Actual: #{max_product(arr1)}"
puts "Expected: 0 -- Actual: #{max_product(arr2)}"
puts "Expected: 40 -- Actual: #{max_product(arr3)}"
puts "Expected: -2 -- Actual: #{max_product(arr4)}"
puts "Expected: 24 -- Actual: #{max_product(arr5)}"


# Improved solution with O(n) time
def max_product(nums)
  min = 1
  max = 1
  result = -1.0/0.0
  nums.each do |num|
      puts "prev_min: #{prev_min = min}"
      # prev_min = min
      puts "min: #{min = [min*num, max*num, num].min}, min*num: #{min*num}, max*num: #{max*num}, num: #{num}"
      # min = [min*num, max*num, num].min
      puts "max: #{max = [prev_min*num, max*num, num].max}, prev_min*num: #{prev_min*num}, max*num: #{max*num}, num: #{num}"
      # max = [prev_min*num, max*num, num].max
      puts "result: #{result = [max, result].max}"
      # result = [max, result].max
  end
  result
end