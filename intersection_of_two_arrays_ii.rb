#################### INTERSECTION OF TWO ARRAYS II ####################

# Given two arrays, write a function to compute their intersection.

# **Example 1:**
# ```
# Input: nums1 = [1,2,2,1], nums2 = [2,2]
# Output: [2,2]
# ```

# **Example 2:**
# ```
# Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
# Output: [4,9]
# ```

# **Note:**
# - Each element in the result should appear as many times as it shows in both arrays.
# - The result can be in any order.

# **Follow up:**
# - What if the given array is already sorted? How would you optimize your algorithm?
# - What if nums1's size is small compared to nums2's size? Which algorithm is better?
# - What if elements of nums2 are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  return [] if nums1.length == 0 || nums2.length == 0
  h = Hash.new{|h,k| h[k] = 0}
  if nums1.length > nums2.length
    for i in 0...nums2.length
      h[nums2[i]] += 1
    end
    return helper(h, nums1)
  else
    for i in 0...nums1.length
      h[nums1[i]] += 1
    end
    return helper(h, nums2)
  end
end

def helper(hash, nums)
  ans = []
  for i in 0...nums.length
    if hash.has_key?(nums[i]) && hash[nums[i]] > 0
      ans << nums[i]
      hash[nums[i]] -= 1
    end
  end
  ans.sort
end


nums1_1 = [1,2,2,1]
nums2_1 = [2,2]
nums1_2 = [1,2,2,1]
nums2_2 = []
nums1_3 = [4,9,5]
nums2_3 = [9,4,9,8,4]
nums1_4 = [1,2,3,4,5,6,7,8]
nums2_4 = [8,8,8,8,8,8,8,8,8,8,8,7,6,2,1,6,5,3,1,6,8]
nums1_5 = [3,6,8,10,123,124151,29300]
nums2_5 = [2]

describe "intersect" do
  it "should return an array of all values that intersect with each other" do
    expect(intersect(nums1_1,nums2_1)).to eq([2,2])
  end
  it "should return an array of all values that intersect with each other" do
    expect(intersect(nums1_2,nums2_2)).to eq([])
  end
  it "should return an array of all values that intersect with each other" do
    expect(intersect(nums1_3,nums2_3)).to eq([4,9])
  end
  it "should return an array of all values that intersect with each other" do
    expect(intersect(nums1_4,nums2_4)).to eq([1,2,3,5,6,7,8])
  end
  it "should return an array of all values that intersect with each other" do
    expect(intersect(nums1_5,nums2_5)).to eq([])
  end
end