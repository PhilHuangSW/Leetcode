#################### PERMUTATIONS II ####################

# Given a collection of numbers, nums, that might contain duplicates, *return all possible unique permutations **in any order.***

# **Example 1:**
# ```
# Input: nums = [1,1,2]
# Output:
# [[1,1,2],
#  [1,2,1],
#  [2,1,1]]
# ```
 
# **Example 2:**
# ```
# Input: nums = [1,2,3]
# Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
# ```

# **Constraints:**
# - 1 <= nums.length <= 8
# - -10 <= nums[i] <= 10

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {Integer[]} nums
# @return {Integer[][]}
def permute_unique(nums)
  nums.permutation.uniq
end

nums1 = [1,1,2]
nums2 = [1,2,3]

describe "Permutations" do
  it "returns all unique permutations" do
    expect(permute_unique(nums1)).to eq([[1,1,2],[1,2,1],[2,1,1]])
  end
  it "returns all unique permutations" do
    expect(permute_unique(nums2)).to eq([[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]])
  end
end