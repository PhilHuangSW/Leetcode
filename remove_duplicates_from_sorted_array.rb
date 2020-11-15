# ################### REMOVE DUPLICATES FROM SORTED ARRAY ####################

# Given a sorted array *nums*, remove the duplicates in-place such that each element appears only once and returns the new length.

# Do not allocate extra space for another array, you must do this by **modifying the input array** **in-place** with O(1) extra memory.

# **Example 1:**
# ```
# Given nums = [1,1,2],

# Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.

# It doesn't matter what you leave beyond the returned length.
# ```

# **Example 2:**
# ```
# Given nums = [0,0,1,1,1,2,2,3,3,4],

# Your function should return length = 5, with the first five elements of nums being modified to 0, 1, 2, 3, and 4 respectively.

# It doesn't matter what values are set beyond the returned length.
# ```

# **Clarification:**

# Confused why the returned value is an integer but your answer is an array?

# Note that the input array is passed in by **reference**, which means a modification to the input array will be known to the caller as well.

# Internally you can think of this:
# ```
# // nums is passed in by reference. (i.e., without making a copy)
# int len = removeDuplicates(nums);

# // any modification to nums in your function would be known by the caller.
# // using the length returned by your function, it prints the first len elements.
# for (int i = 0; i < len; i++) {
#     print(nums[i]);
# }
# ```

# ################### SOLUTION ####################
# @param {Integer[]} nums
# @return {Integer}
# TIME: O(n) -- SPACE: O(1)
def remove_duplicates(nums)
  return 1 if nums.length == 1
  return 0 if nums.length == 0
  idx = 1
  current = nums[0]
  timer = 1
  while true
    if nums[idx] == current
      nums.delete_at(idx)
    else
      current = nums[idx]
      idx += 1
      timer += 1
    end
    if timer == nums.length
      return nums.length
    end
  end
end

nums1 = [1,1,2]
nums2 = [0,0,1,1,1,2,2,3,3,4]
nums3 = [0,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,7,8,9,10,11,11,12,13,13,15,15,15,15,15,15,15,15]

puts "nums before: #{nums1}"
puts "Expected: 2 -- Actual: #{remove_duplicates(nums1)}"
puts "nums after: #{nums1}"
puts "--------------------"
puts "nums before: #{nums2}"
puts "Expected: 5 -- Actual: #{remove_duplicates(nums2)}"
puts "nums after: #{nums2}"
puts "--------------------"
puts "nums before: #{nums3}"
puts "Expected: 12 -- Actual: #{remove_duplicates(nums3)}"
puts "nums after: #{nums3}"
