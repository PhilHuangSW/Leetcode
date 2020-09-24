#################### MAJORITY ELEMENT II ####################

# Given an integer array of size n, find all elements that appear 
# more than ⌊ n/3 ⌋ times.

# Note: The algorithm should run in linear time and in O(1) space.

# Example 1:
# Input: [3,2,3]
# Output: [3]

# Example 2:
# Input: [1,1,1,3,3,2,2,2]
# Output: [1,2]


#################### SOLUTION ####################
# @param {Integer[]} nums
# @return {Integer[]}
def majority_element(nums)
  limit = ((nums.length).to_f/3.to_f)
  ans = []
  h = Hash.new{|h,num| h[num] = 0}
  for i in 0...nums.length
    h[nums[i]] += 1
    if h[nums[i]] > limit
      ans << nums[i]
    end
  end
  ans.uniq
end

nums1 = [3,2,3]
nums2 = [1,1,1,3,3,2,2,2]
nums3 = [3,2,2,6,6,5,5,5,5,5,7,10,12]
nums4 = [2,2]

puts "Expected: [3] -- Actual: #{majority_element(nums1)}"
puts "Expected: [1,2] -- Actual: #{majority_element(nums2)}"
puts "Expected: [5] -- Actual: #{majority_element(nums3)}"
puts "Expected: [2] -- Actual: #{majority_element(nums4)}"