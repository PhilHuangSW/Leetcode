#################### SUBARRAY PRODUCT LESS THAN K ####################

# You're are given an array of positive integers nums.

# Count and print the number of (contiguous) subarrays where the product of 
# all the elements in the subarray is less than k.

# Example 1:
# Input: nums = [10, 5, 2, 6], k = 100
# Output: 8
# Explanation: The 8 subarrays that have product less than 100 are: 
# [10], [5], [2], [6], [10, 5], [5, 2], [2, 6], [5, 2, 6].
# Note that [10, 5, 2] is not included as the product of 100 is not strictly less than k.

# Note:
# - 0 < nums.length <= 50000.
# - 0 < nums[i] < 1000.
# - 0 <= k < 10^6.


#################### SOLUTION ####################
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
# TIME: O(n^2) -- SPACE: O(1)
# Hits the time limit on the problem
# def num_subarray_product_less_than_k(nums, k)
#   index = 0
#   count = 0
#   current_product = 1
#   while (true)
#     for i in index...nums.length
#       current_product *= nums[i]
#       if current_product < k 
#         count += 1
#       else
#         break
#       end
#     end

#     current_product = 1
#     index += 1
#     if index == nums.length
#       return count
#     end
#   end
# end

# TIME: O(n) -- SPACE: O(1)
def num_subarray_product_less_than_k(nums, k)
  return 0 if k <= 1
  prod = 1
  ans = 0
  left = 0
  for i in 0...nums.length
    prod *= nums[i]
    while prod >= k
      prod /= nums[left]
      left += 1
    end
    ans += i - left + 1
  end
  ans
end

nums1 = [10,5,2,6]
k1 = 100
nums2 = [100]
k2 = 100
nums3 = [10,5,2,6]
k3 = 0
nums4 = [1,5,2,6]
k4 = 2
nums5 = [1,5,2,6,20,1,2,16,2,10,6,2,10,7,12,1,2,1,5]
k5 = 100000

puts "Expected: 8 -- Actual: #{num_subarray_product_less_than_k(nums1, k1)}"
puts "Expected: 0 -- Actual: #{num_subarray_product_less_than_k(nums2, k2)}"
puts "Expected: 0 -- Actual: #{num_subarray_product_less_than_k(nums3, k3)}"
puts "Expected: 1 -- Actual: #{num_subarray_product_less_than_k(nums4, k4)}"
puts "Expected: 114 -- Actual: #{num_subarray_product_less_than_k(nums5, k5)}"