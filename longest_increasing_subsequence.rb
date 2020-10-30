#################### LONGEST INCREASING SUBSEQUENCE ####################

# Given an unsorted array of integers, find the length of longest increasing subsequence.

# **Example:**
# ```
# Input: [10,9,2,5,3,7,101,18]
# Output: 4 
# Explanation: The longest increasing subsequence is [2,3,7,101], therefore the length is 4. 
# ```

# **Note:**
# - There may be more than one LIS combination, it is only necessary for you to return the length.
# - Your algorithm should run in O(n2) complexity.

# **Follow up:** Could you improve it to O(n log n) time complexity?

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
  return 0 if nums.length == 0
  return 1 if nums.length == 1
  return 1 if nums.uniq.length == 1
  dp = Array.new(nums.length){1}
  for i in 1...nums.length
    for j in 0...i
      if nums[i] > nums[j]
        dp[i] = [dp[i], dp[j]+1].max
      end
    end
  end
  dp.max
end

nums1 = [10,9,2,5,3,7,101,18]
nums2 = [2,2,2,2,2]
nums3 = []
nums4 = [1]
nums5 = [7,1,2,6,10,5,4,23]

describe "Longest Increasing Subsequence" do
  it "returns the length of the longest increasing subsequence in array" do
    expect(length_of_lis(nums1)).to eq(4)
  end
  it "returns the length of the longest increasing subsequence in array" do
    expect(length_of_lis(nums2)).to eq(1)
  end
  it "returns the length of the longest increasing subsequence in array" do
    expect(length_of_lis(nums3)).to eq(0)
  end
  it "returns the length of the longest increasing subsequence in array" do
    expect(length_of_lis(nums4)).to eq(1)
  end
  it "returns the length of the longest increasing subsequence in array" do
    expect(length_of_lis(nums5)).to eq(5)
  end
end