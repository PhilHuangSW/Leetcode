#################### NUMBER OF LONGEST INCREASING SUBSEQUENCE ####################

# Given an integer array nums, return *the number of longest increasing subsequences*.

# **Example 1:**
# ```
# Input: nums = [1,3,5,4,7]
# Output: 2
# Explanation: The two longest increasing subsequences are [1, 3, 4, 7] and [1, 3, 5, 7].
# ```

# **Example 2:**
# ```
# Input: nums = [2,2,2,2,2]
# Output: 5
# Explanation: The length of longest continuous increasing subsequence is 1, and there are 5 subsequences' length is 1, so output 5.
# ```

# **Constraints:**
# - 0 <= nums.length <= 2000
# - -106 <= nums[i] <= 106

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {Integer[]} nums
# @return {Integer}
def find_number_of_lis(nums)
  return 0 if nums.length == 0
  return 1 if nums.length == 1
  return nums.length if nums.uniq.length == 1
  lengths = Array.new(nums.length){1}
  counts = Array.new(nums.length){1}
  
  for i in 1...nums.length
    for j in 0...i
      if nums[j] < nums[i]
        if lengths[j] + 1 > lengths[i]
          lengths[i] = 1 + lengths[j]
          counts[i] = counts[j]
        elsif lengths[j] + 1 == lengths[i]
          counts[i] += counts[j]
        end
      end
    end
  end

  longest = lengths.max
  ans = 0
  for i in 0...counts.length
    if lengths[i] == longest
      ans += counts[i]
    end
  end
  ans
end

nums1 = [1,3,5,4,7]
nums2 = [2,2,2,2,2]
nums3 = []
nums4 = [1]

describe "Find Number of Longest Increasing Subsequence" do
  it "returns the number of longest increasing subsequences" do
    expect(find_number_of_lis(nums1)).to eq(2)
  end
  it "returns the number of longest increasing subsequences" do
    expect(find_number_of_lis(nums2)).to eq(5)
  end
  it "returns the number of longest increasing subsequences" do
    expect(find_number_of_lis(nums3)).to eq(0)
  end
  it "returns the number of longest increasing subsequences" do
    expect(find_number_of_lis(nums4)).to eq(1)
  end
end