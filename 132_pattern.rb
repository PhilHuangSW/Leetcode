#################### 132 PATTERN ####################

# Given an array of n integers nums, **a 132 pattern** is a subsequence of three integers nums[i], nums[j] and nums[k] such that i < j < k and nums[i] < nums[k] < nums[j].

# Return true *if there is* **a 132 pattern** *in nums, otherwise*, return false.

# **Follow up:** The O(n^2) is trivial, could you come up with the O(n logn) or the O(n) solution?

# **Example 1:**
# ```
# Input: nums = [1,2,3,4]
# Output: false
# Explanation: There is no 132 pattern in the sequence.
# ```

# **Example 2:**
# ```
# Input: nums = [3,1,4,2]
# Output: true
# Explanation: There is a 132 pattern in the sequence: [1, 4, 2].
# ```

# **Example 3:**
# ```
# Input: nums = [-1,3,2,0]
# Output: true
# Explanation: There are three 132 patterns in the sequence: [-1, 3, 2], [-1, 3, 0] and [-1, 2, 0].
# ```

# **Constraints:**
# - n == nums.length
# - 1 <= n <= 104
# - -109 <= nums[i] <= 109

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {Integer[]} nums
# @return {Boolean}
# TIME: O(n) -- SPACE: O(n)
def find132pattern(nums)
  return false if nums.length <= 2
  min = []
  min << nums[0]

  # create a min array of nums
  # i.e. nums = [3,1,4,2] -- min = [3,1,1,1] 
  for i in 1...nums.length
    min << [min[i-1], nums[i]].min
  end

  # create a stack of values
  # i.e. 
  # nums = [6,12,3,4,6,11,20]
  # min = [6,6,3,3,3,3,3]
  # compare 20 and 3 --> stack = [20]
  # compare 11 and 3 --> stack = [20,11]
  # compare 6 and 3 --> stack = [20,11,6]
  # compare 4 and 3 --> stack = [20,11,6,4]
  # compare 3 and 3 --> stack = [20,11,6,4]
  # compare 12 and 6 --> stack = [20,11,6]
  # compare 12 and 6 --> stack = [20,11] -- return true
  stack = []
  for j in (nums.length-1).downto(0)
    if nums[j] > min[j]
      while !stack.empty? && stack[stack.length-1] <= min[j]
        stack.pop
      end
      if !stack.empty? && stack[stack.length-1] < nums[j]
        return true
      end
      stack << nums[j]
    end
  end
  return false
end

nums1 = [1,2,3,4]
nums2 = [3,1,4,2]
nums3 = [-1,3,2,0]

describe "find 132 pattern" do
  it "returns true if it can find a 132 pattern, false otherwise" do
    expect(find132pattern(nums1)).to eq(false)
  end
  it "returns true if it can find a 132 pattern, false otherwise" do
    expect(find132pattern(nums2)).to eq(true)
  end
  it "returns true if it can find a 132 pattern, false otherwise" do
    expect(find132pattern(nums3)).to eq(true)
  end
end