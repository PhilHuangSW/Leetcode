#################### JUMP GAME ####################

# Given an array of non-negative integers, you are initially 
# positioned at the first index of the array.

# Each element in the array represents your maximum jump length 
# at that position.

# Determine if you are able to reach the last index.

# Example 1:
# Input: nums = [2,3,1,1,4]
# Output: true
# Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.

# Example 2:
# Input: nums = [3,2,1,0,4]
# Output: false
# Explanation: You will always arrive at index 3 no matter what. Its maximum jump length is 0, which makes it impossible to reach the last index.

# Constraints:
# - 1 <= nums.length <= 3 * 10^4
# - 0 <= nums[i][j] <= 10^5


#################### SOLUTION ####################
# @param {Integer[]} nums
# @return {Boolean}
def can_jump(nums)
  # all base checks
  return true if nums.length == 1
  return true if nums[0] > 0 && nums.length == 2
  return false if nums[0] == 0
  # start with index 1 if we can get to this spot (since move will be non-0)
  index = 1
  last = nums.length - 1
  index_at_highest = 0
  movement = nums[0] - 1
  while(true)
    # we've reached the end of the array, return true
    if index == last
      return true
    end
    # we've jumped as far as we can and can't get to the end, return false
    if nums[index] == 0 && movement == 0
      return false
    end
    # if the current move contains more movement, take the more movement
    if nums[index] >= movement
      movement = nums[index]
    end
    # jump to next index and subtract one from your movement
    movement -= 1
    index += 1
  end
end

nums1 = [2,3,1,1,4]
nums2 = [3,2,1,0,4]
nums3 = [1,2,3]
nums4 = [3,5,1,0,0,0,1,2,0]
nums5 = [1,0]
nums6 = [0]
nums7 = [4,0,0,1,0,2]

puts "Expected: true -- Actual: #{can_jump(nums1)}"
puts "Expected: false -- Actual: #{can_jump(nums2)}"
puts "Expected: true -- Actual: #{can_jump(nums3)}"
puts "Expected: true -- Actual: #{can_jump(nums4)}"
puts "Expected: true -- Actual: #{can_jump(nums5)}"
puts "Expected: true -- Actual: #{can_jump(nums6)}"
puts "Expected: false -- Actual: #{can_jump(nums7)}"
