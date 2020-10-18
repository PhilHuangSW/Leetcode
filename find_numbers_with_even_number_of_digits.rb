#################### FIND NUMBERS WITH EVEN NUMBER OF DIGITS ####################

# Given an array nums of integers, return how many of them contain an **even number** of digits.

# **Example 1:**
# ```
# Input: nums = [12,345,2,6,7896]
# Output: 2
# Explanation: 
# 12 contains 2 digits (even number of digits). 
# 345 contains 3 digits (odd number of digits). 
# 2 contains 1 digit (odd number of digits). 
# 6 contains 1 digit (odd number of digits). 
# 7896 contains 4 digits (even number of digits). 
# Therefore only 12 and 7896 contain an even number of digits.
# ```

# **Example 2:**
# ```
# Input: nums = [555,901,482,1771]
# Output: 1 
# Explanation: 
# Only 1771 contains an even number of digits.
# ```

# **Constraints:**
# - 1 <= nums.length <= 500
# - 1 <= nums[i] <= 10^5

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
  count = 0
  for i in 0...nums.length
    if nums[i].to_s.length%2 == 0
      count += 1
    end
  end
  count
end

nums1 = [12,345,6,7896]
nums2 = [555,901,482,1771]
nums3 = []
nums4 = [1]
nums5 = [11,22,33,44,55,66,77,88,99,1000,123121]
nums6 = [12,345,2,6,7896]

describe "find numbers" do
  it "prints out the amount of numbers that have even digits" do
    expect(find_numbers(nums1)).to eq(2)
  end
  it "prints out the amount of numbers that have even digits" do
    expect(find_numbers(nums2)).to eq(1)
  end
  it "prints out the amount of numbers that have even digits" do
    expect(find_numbers(nums3)).to eq(0)
  end
  it "prints out the amount of numbers that have even digits" do
    expect(find_numbers(nums4)).to eq(0)
  end
  it "prints out the amount of numbers that have even digits" do
    expect(find_numbers(nums5)).to eq(11)
  end
  it "prints out the amount of numbers that have even digits" do
    expect(find_numbers(nums6)).to eq(2)
  end
end