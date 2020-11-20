#################### SEARCH IN ROTATED SORTED ARRAY II ####################

# Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.

# (i.e., [0,0,1,2,2,5,6] might become [2,5,6,0,0,1,2]).

# You are given a target value to search. If found in the array return true, otherwise return false.

# **Example 1:**
# ```
# Input: nums = [2,5,6,0,0,1,2], target = 0
# Output: true
# ```

# **Example 2:**
# ```
# Input: nums = [2,5,6,0,0,1,2], target = 3
# Output: false
# ```

# **Follow up:**
# - This is a follow up problem to Search in Rotated Sorted Array, where nums may contain duplicates.
# - Would this affect the run-time complexity? How and why?

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {Integer[]} nums
# @param {Integer} target
# @return {Boolean}
# TIME: O(n) -- SPACE: O(1)
def search(nums, target)
  return false if nums.length == 0
  return false if nums.length == 1 && nums[0] != target
  return true if nums.length == 1 && nums[0] == target
  
  return true if nums[0] == target
  idx = 0
  backward = false
  forward = false
  if nums[0] > target
    idx = nums.length-1
    backward = true
  else
    idx += 1
    forward = true
  end

  while true
    # puts "nums[idx]: #{nums[idx]} -- idx: #{idx}"
    if (idx < 0 || idx == nums.length)
      return false
    elsif nums[idx] == target
      return true
    elsif nums[idx] > target && backward == true
      idx -= 1
    elsif nums[idx] > target && forward == true
      return false
    elsif nums[idx] < target && forward == true
      idx += 1
    elsif nums[idx] < target && backward == true
      return false
    end
  end
end

nums1 = []
target1 = 0
nums2 = [1]
target2 = 0
nums3 = [0]
target3 = 0
nums4 = [2,5,6,0,0,1,2]
target4 = 0
nums5 = [2,5,6,0,0,1,2]
target5 = 3
nums6 = [1,1]
target6 = 0
nums7 = [1,1]
target7 = 2

describe "Search in Rotated Sorted Array" do
  it "returns true if the target is found, false otherwise" do
    expect(search(nums1, target1)).to eq(false)
  end
  it "returns true if the target is found, false otherwise" do
    expect(search(nums2, target2)).to eq(false)
  end
  it "returns true if the target is found, false otherwise" do
    expect(search(nums3, target3)).to eq(true)
  end
  it "returns true if the target is found, false otherwise" do
    expect(search(nums4, target4)).to eq(true)
  end
  it "returns true if the target is found, false otherwise" do
    expect(search(nums5, target5)).to eq(false)
  end
  it "returns true if the target is found, false otherwise" do
    expect(search(nums6, target6)).to eq(false)
  end
  it "returns true if the target is found, false otherwise" do
    expect(search(nums7, target7)).to eq(false)
  end
end