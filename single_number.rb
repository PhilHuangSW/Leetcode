#################### SINGLE NUMBER ####################

# Given a **non-empty** array of integers nums, every element appears *twice* except for one. Find that single one.

# **Follow up:** Could you implement a solution with a linear runtime complexity and without using extra memory?

# **Example 1:**
# ```
# Input: nums = [2,2,1]
# Output: 1
# ```

# **Example 2:**
# ```
# Input: nums = [4,1,2,1,2]
# Output: 4
# ```

# **Example 3:**
# ```
# Input: nums = [1]
# Output: 1
# ```

# **Constraints:**
# - 1 <= nums.length <= 3 * 104
# - -3 * 104 <= nums[i] <= 3 * 104
# - Each element in the array appears twice except for one element which appears only once.

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {Integer[]} nums
# @return {Integer}
# TIME: O(n) -- SPACE: O(n)
def single_number(nums)
  return nums[0] if nums.length == 1
  h = Hash.new{|h,num| h[num] = 0}
  for i in 0...nums.length
    h[nums[i]] += 1
  end
  h.each do |num, occur|
    if occur == 1
      return num
    end
  end
end

nums1 = [2,2,1]
nums2 = [4,1,2,1,2]
nums3 = [1]
nums4 = [0,0,2,6,10,20,3,3,6,2,23,10,20]

describe "single number" do
  it "should return the single number" do
    expect(single_number(nums1)).to eq(1)
  end
  it "should return the single number" do
    expect(single_number(nums2)).to eq(4)
  end
  it "should return the single number" do
    expect(single_number(nums3)).to eq(1)
  end
  it "should return the single number" do
    expect(single_number(nums4)).to eq(23)
  end
end