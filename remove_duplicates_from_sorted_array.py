#################### REMOVE DUPLICATES FROM SORTED ARRAY ####################

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

#################### SOLUTION ####################
from typing import List
class Solution: 
  def removeDuplicates(self, nums: List[int]) -> int:
    if len(nums) == 0:
      return 0
    if len(nums) == 1:
      return 1
    current = nums[0]
    idx = 1
    timer = 1
    while True:
      if nums[idx] == current:
        nums.pop(idx)
      else:
        current = nums[idx]
        idx += 1
        timer += 1
      if timer == len(nums):
        return len(nums)

nums1 = [1,1,2]
nums2 = [0,0,1,1,1,2,2,3,3,4]
nums3 = [0,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,6,6,6,6,6,6,6,6,7,8,9,10,11,11,12,13,13,15,15,15,15,15,15,15,15]

instance = Solution()
print("nums before:", nums1)
instance.removeDuplicates(nums1)
print("nums after:", nums1)
print("------------------------")
print("nums before:", nums2)
instance.removeDuplicates(nums2)
print("nums after:", nums2)
print("------------------------")
print("nums before:", nums3)
instance.removeDuplicates(nums3)
print("nums after:", nums3)
