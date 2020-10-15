#################### ROTATE ARRAY ####################

# Given an array, rotate the array to the right by *k* steps, where *k* is non-negative.

# **Follow up:**
# - Try to come up as many solutions as you can, there are at least 3 different ways to solve this problem.
# - Could you do it in-place with O(1) extra space?

# **Example 1:**
# ```
# Input: nums = [1,2,3,4,5,6,7], k = 3
# Output: [5,6,7,1,2,3,4]
# Explanation:
# rotate 1 steps to the right: [7,1,2,3,4,5,6]
# rotate 2 steps to the right: [6,7,1,2,3,4,5]
# rotate 3 steps to the right: [5,6,7,1,2,3,4]
# ```

# **Example 2:**
# ```
# Input: nums = [-1,-100,3,99], k = 2
# Output: [3,99,-1,-100]
# Explanation: 
# rotate 1 steps to the right: [99,-1,-100,3]
# rotate 2 steps to the right: [3,99,-1,-100]
# ```

# **Constraints:**
# - 1 <= nums.length <= 2 * 104
# - -231 <= nums[i] <= 231 - 1
# - 0 <= k <= 105

#################### SOLUTION ####################
# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
# TIME: O(n) -- SPACE: O(1)
def rotate(nums, k)
  return nums if k == 0
  mod_k = k%nums.length
  return nums if mod_k == 0
  while mod_k > 0
    last = nums.pop
    nums.unshift(last)
    mod_k -= 1
  end
  nums
end

nums1 = [1,2,3,4,5,6,7]
k1 = 3
nums2 = [-1,-100,3,99]
k2 = 2
nums3 = [1,2,3,4,5,6,7]
k3 = 7
nums4 = [1,2,3,4,5,6,7]
k4 = 6
nums5 = [1,2,3,4,5,6,7]
k5 = 2000000
nums6 = [1,2,3,4,5,6,7]
k6 = 2301

puts "Expected: [5,6,7,1,2,3,4] -- Actual: #{rotate(nums1, k1)}"
puts "Expected: [3,99,-1,-100] -- Actual: #{rotate(nums2, k2)}"
puts "Expected: [1,2,3,4,5,6,7] -- Actual: #{rotate(nums3, k3)}"
puts "Expected: [2,3,4,5,6,7,1] -- Actual: #{rotate(nums4, k4)}"
puts "Expected: [6,7,1,2,3,4,5] -- Actual: #{rotate(nums5, k5)}"
puts "Expected: [3,4,5,6,7,1,2] -- Actual: #{rotate(nums6, k6)}"