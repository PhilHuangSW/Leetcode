#################### CONTAINS DUPLICATE ####################

# Given an array of integers, find if the array contains any duplicates.

# Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

# **Example 1:**
# ```
# Input: [1,2,3,1]
# Output: true
# ```

# **Example 2:**
# ```
# Input: [1,2,3,4]
# Output: false
# ```

# **Example 3:**
# ```
# Input: [1,1,1,3,3,4,3,2,4,2]
# Output: true
# ```

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {Integer[]} nums
# @return {Boolean}
# TIME: O(n) -- SPACE: O(n)
def contains_duplicate(nums)
  return false if nums.length <= 1
  h = Hash.new{|h,k| h[k] = 0}
  for i in 0...nums.length
    if h.has_key?(nums[i])
      return true
    else
      h[nums[i]] += 1
    end
  end
  return false
end

nums1 = [1,2,3,1]
nums2 = []
nums3 = [1]
nums4 = [1,1]
nums5 = [1,2]
nums6 = [1,2,23,4,5,6,8655,8,234,5,557,546,2,344,23]
nums7 = [1,2,3,4]

describe "contains duplicate" do
  it "should return true if there are duplicate(s), or false if there are none" do
    expect(contains_duplicate(nums1)).to eq(true)
  end
  it "should return true if there are duplicate(s), or false if there are none" do
    expect(contains_duplicate(nums2)).to eq(false)
  end
  it "should return true if there are duplicate(s), or false if there are none" do
    expect(contains_duplicate(nums3)).to eq(false)
  end
  it "should return true if there are duplicate(s), or false if there are none" do
    expect(contains_duplicate(nums4)).to eq(true)
  end
  it "should return true if there are duplicate(s), or false if there are none" do
    expect(contains_duplicate(nums5)).to eq(false)
  end
  it "should return true if there are duplicate(s), or false if there are none" do
    expect(contains_duplicate(nums6)).to eq(true)
  end
  it "should return true if there are duplicate(s), or false if there are none" do
    expect(contains_duplicate(nums7)).to eq(false)
  end
end