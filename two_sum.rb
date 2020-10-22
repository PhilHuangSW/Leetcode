#################### TWO SUM ####################

# Given an array of integers nums and an integer target, return *indices of the two numbers such that they add up to target*.

# You may assume that each input would have **exactly one solution**, and you may not use the same element twice.

# You can return the answer in any order.

# **Example 1:**
# ```
# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Output: Because nums[0] + nums[1] == 9, we return [0, 1].
# ```

# **Example 2:**
# ```
# Input: nums = [3,2,4], target = 6
# Output: [1,2]
# ```

# **Example 3:**
# ```
# Input: nums = [3,3], target = 6
# Output: [0,1]
# ```

# **Constraints:**
# - 2 <= nums.length <= 105
# - -109 <= nums[i] <= 109
# - -109 <= target <= 109
# **Only one valid answer exists.**

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# Brute Force
# TIME: O(n^2) -- SPACE: O(1)
# def two_sum(nums, target)
#   for i in 0...nums.length
#     for j in i+1...nums.length
#       if nums[i] + nums[j] == target
#         return ans = [i,j]
#       end
#     end
#   end
# end

# HashTable
# TIME: O(n) -- SPACE: O(n)
def two_sum(nums, target)
  h = Hash.new{|h,k| h[k] = 0}
  for i in 0...nums.length
    if h.has_key?(target - nums[i])
      return [h[target-nums[i]], i]
    else
      h[nums[i]] = i
    end
  end
end

nums1 = [3,2,4]
target1 = 6
nums2 = [2,7,11,15]
target2 = 9
nums3 = [3,3]
target3 = 6
nums4 = [3,2,6,10,-14,-19,-5,-15]
target4 = -5

describe "two sum" do
  it "finds the indices of the values that add up to target" do
    expect(two_sum(nums1, target1)).to eq([1,2])
  end
  it "finds the indices of the values that add up to target" do
    expect(two_sum(nums2, target2)).to eq([0,1])
  end
  it "finds the indices of the values that add up to target" do
    expect(two_sum(nums3, target3)).to eq([0,1])
  end
  it "finds the indices of the values that add up to target" do
    expect(two_sum(nums4, target4)).to eq([3,7])
  end
end