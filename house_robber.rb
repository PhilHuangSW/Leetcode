#################### HOUSE ROBBER ####################

# You are a professional robber planning to rob houses along a 
# street. Each house has a certain amount of money stashed, the only 
# constraint stopping you from robbing each of them is that adjacent 
# houses have security system connected and it will automatically 
# contact the police if two adjacent houses were broken into on the 
# same night.

# Given a list of non-negative integers representing the amount of 
# money of each house, determine the maximum amount of money you can 
# rob tonight without alerting the police.

# Example 1:
# Input: nums = [1,2,3,1]
# Output: 4
# Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3). 
# Total amount you can rob = 1 + 3 = 4.

# Example 2:
# Input: nums = [2,7,9,3,1]
# Output: 12
# Explanation: Rob house 1 (money = 2), rob house 3 (money = 9) and rob house 5 (money = 1).
# Total amount you can rob = 2 + 9 + 1 = 12.

# Constraints:
# - 0 <= nums.length <= 100
# - 0 <= nums[i] <= 400


#################### SOLUTION ####################
# @param {Integer[]} nums
# @return {Integer}
# solution using dynamic programming (DP)
def rob(nums)
  return 0 if nums.length == 0
  return nums[0] if nums.length == 1

  # find your base cases ans[0] and ans[1]
  ans = []
  ans[0] = nums[0]
  ans[1] = [nums[0], nums[1]].max

  # recursion, starting from 2...(n-1)
  for i in 2...nums.length
    # here you just take the max value (money that you can rob)
    # at any given index using previous values you have taken
    ans[i] = [ans[i-1], nums[i] + ans[i-2]].max
  end
  ans.max
end

nums1 = [1,2,3,1]
nums2 = [1,0,8,10]
nums3 = [1,2,3,5,5,6,1,2,7]
nums4 = [2,7,9,3,1]
nums5 = [1,2]

puts "Expected: 4 -- Actual: #{rob(nums1)}"
puts "Expected: 11 -- Actual: #{rob(nums2)}"
puts "Expected: 20 -- Actual: #{rob(nums3)}"
puts "Expected: 12 -- Actual: #{rob(nums4)}"
puts "Expected: 2 -- Actual: #{rob(nums5)}"