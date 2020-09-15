#################### HOUSE ROBBER II ####################

# You are a professional robber planning to rob houses along a street. 
# Each house has a certain amount of money stashed. All houses at this 
# place are arranged in a circle. That means the first house is the 
# neighbor of the last one. Meanwhile, adjacent houses have security 
# system connected and it will automatically contact the police if two 
# adjacent houses were broken into on the same night.

# Given a list of non-negative integers representing the amount of money 
# of each house, determine the maximum amount of money you can rob tonight 
# without alerting the police.

# Example 1:
# Input: [2,3,2]
# Output: 3
# Explanation: You cannot rob house 1 (money = 2) and then rob 
# house 3 (money = 2), because they are adjacent houses.

# Example 2:
# Input: [1,2,3,1]
# Output: 4
# Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3). 
# Total amount you can rob = 1 + 3 = 4.


#################### SOLUTION ####################
# @param {Integer[]} nums
# @return {Integer}
# Similar to our solution in House Robber, you still use dynamic programming (DP)
# for the solution, but with one minor tweak. Instead of calculating from all
# houses, we calculate once without the first house, and once without the last house
# and get the max between those 2.
def rob(nums)
  return 0 if nums.length == 0
  return nums[0] if nums.length == 1
  return nums.max if nums.length == 2
  ans = 0
  without_last = dp(nums[0...-1])
  without_first = dp(nums[1..-1])
  ans = [without_last, without_first].max
end

# created a method to do the actual dynamic programming instead of in our main function
def dp(nums)
  ans = Array.new(nums.length)
  ans[0] = nums[0]
  ans[1] = [nums[0], nums[1]].max
  for i in 2...nums.length
    ans[i] = [ans[i-1], nums[i] + ans[i-2]].max 
  end
  ans.max
end

nums1 = [2,3,2]
nums2 = [1,2,3,1]
nums3 = [0,0]
nums4 = [2,3,5,1,7,10,12]
nums5 = [20,2,0,19,20]

puts "Expected: 3 -- Actual: #{rob(nums1)}"
puts "Expected: 4 -- Actual: #{rob(nums2)}"
puts "Expected: 0 -- Actual: #{rob(nums3)}"
puts "Expected: 24 -- Actual: #{rob(nums4)}"
puts "Expected: 39 -- Actual: #{rob(nums5)}"
