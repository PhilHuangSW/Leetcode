#################### BINARY SEARCH ####################

# Given a **sorted** (in ascending order) integer array nums of n elements and a target value, write a function to search target in nums. If target exists, then return its index, otherwise return -1.

# **Example 1:**
# ```
# Input: nums = [-1,0,3,5,9,12], target = 9
# Output: 4
# Explanation: 9 exists in nums and its index is 4
# ```

# **Example 2:**
# ```
# Input: nums = [-1,0,3,5,9,12], target = 2
# Output: -1
# Explanation: 2 does not exist in nums so return -1
# ```

# **Note:**
# 1. You may assume that all elements in nums are unique.
# 2. n will be in the range [1, 10000].
# 3. The value of each element in nums will be in the range [-9999, 9999].

#################### SOLUTION ####################
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  return -1 if nums.length == 0
  index = nums.length/2
  half = nums.length/2
  while true
    return -1 if nums.length == 0
    if nums.length == 1
      if nums[0] == target
        return index
      else
        return -1
      end
    end
    if nums[half] == target
      return index
    elsif nums[half] > target
      nums = nums[0...half]
      half = nums.length/2
      if nums.length%2 == 1
        index -= (half+1)
      else
        index -= half
      end
    elsif nums[half] < target
      nums = nums[(half+1)...nums.length]
      half = nums.length/2
      index += (half+1)
    end
  end
end

nums1 = [-1,0,3,5,9,12]
target1 = 13
nums2 = [-1,0,3,5,9,12]
target2 = 9
nums3 = [-1,0,3,5,9,12] 
target3 = 2
nums4 = []
target4 = 1
nums5 = [1]
target5 = 1
nums6 = [-1]
target6 = 1
nums7 = [-1,2,5,10,20,22,23,24,27,30,31,330,360,600]
target7 = 31

puts "Expected: -1 -- Actual: #{search(nums1, target1)}"
puts "Expected: 4 -- Actual: #{search(nums2, target2)}"
puts "Expected: -1 -- Actual: #{search(nums3, target3)}"
puts "Expected: -1 -- Actual: #{search(nums4, target4)}"
puts "Expected: 0 -- Actual: #{search(nums5, target5)}"
puts "Expected: -1 -- Actual: #{search(nums6, target6)}"
puts "Expected: 10 -- Actual: #{search(nums7, target7)}"