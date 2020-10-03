#################### FIRST MISSING POSITIVE ####################

# Given an unsorted integer array, find the smallest missing positive integer.

# Example 1:
# Input: [1,2,0]
# Output: 3

# Example 2:
# Input: [3,4,-1,1]
# Output: 2

# Example 3:
# Input: [7,8,9,11,12]
# Output: 1

# Follow up:
# Your algorithm should run in O(n) time and uses constant extra space.


#################### SOLUTION ####################
# @param {Integer[]} nums
# @return {Integer}
# TIME: O(n) -- SPACE: O(1)
def first_missing_positive(nums)
  first_positive = 1
  while nums.include?(first_positive)
    first_positive += 1
  end
  first_positive
end

nums1 = [1,2,0]
nums2 = [3,4,-1,1]
nums3 = [7,8,9,11,12]
nums4 = [-1,-2,-5,-10,10]
nums5 = [1]
nums6 = []

puts "Expected: 3 -- Actual: #{first_missing_positive(nums1)}"
puts "Expected: 2 -- Actual: #{first_missing_positive(nums2)}"
puts "Expected: 1 -- Actual: #{first_missing_positive(nums3)}"
puts "Expected: 1 -- Actual: #{first_missing_positive(nums4)}"
puts "Expected: 2 -- Actual: #{first_missing_positive(nums5)}"
puts "Expected: 1 -- Actual: #{first_missing_positive(nums6)}"