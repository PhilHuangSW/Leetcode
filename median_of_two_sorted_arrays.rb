#################### MEDIAN OF TWO SORTED ARRAYS ####################

# Given two sorted arrays nums1 and nums2 of size m and n respectively, return **the median** of the two sorted arrays.

# **Follow up:** The overall run time complexity should be O(log (m+n)).

# **Example 1:**
# ```
# Input: nums1 = [1,3], nums2 = [2]
# Output: 2.00000
# Explanation: merged array = [1,2,3] and median is 2.
# ```

# **Example 2:**
# ```
# Input: nums1 = [1,2], nums2 = [3,4]
# Output: 2.50000
# Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
# ```

# **Example 3:**
# ```
# Input: nums1 = [0,0], nums2 = [0,0]
# Output: 0.00000
# ```

# **Example 4:**
# ```
# Input: nums1 = [], nums2 = [1]
# Output: 1.00000
# ```

# **Example 5:**
# ```
# Input: nums1 = [2], nums2 = []
# Output: 2.00000
# ```

# **Constraints:**
# - nums1.length == m
# - nums2.length == n
# - 0 <= m <= 1000
# - 0 <= n <= 1000
# - 1 <= m + n <= 2000
# - -106 <= nums1[i], nums2[i] <= 106

#################### SOLUTION ####################
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
# TIME: O(n+m) -- SPACE: O(n+m)
def find_median_sorted_arrays(nums1, nums2)
  merged = Array.new(nums1.length + nums2.length)
  idx1, idx2, merged_idx = 0, 0, 0
  while idx1 != nums1.length && idx2 != nums2.length
    if nums1[idx1] > nums2[idx2]
      merged[merged_idx] = nums2[idx2]
      idx2 += 1
      merged_idx += 1
    elsif nums1[idx1] < nums2[idx2]
      merged[merged_idx] = nums1[idx1]
      idx1 += 1
      merged_idx += 1
    else
      merged[merged_idx] = nums1[idx1]
      idx1 += 1
      merged_idx += 1
      merged[merged_idx] = nums2[idx2]
      idx2 += 1
      merged_idx += 1
    end
  end
  if idx1 == nums1.length && idx2 != nums2.length
    while idx2 != nums2.length
      merged[merged_idx] = nums2[idx2]
      idx2 += 1
      merged_idx += 1
    end
  end
  if idx1 != nums1.length && idx2 == nums2.length
    while idx1 != nums1.length
      merged[merged_idx] = nums1[idx1]
      idx1 += 1
      merged_idx += 1
    end
  end
  median = 0.0
  if merged.length%2 == 1
    median = merged[merged.length/2].to_f
  else
    median = ((merged[merged.length/2]).to_f + (merged[merged.length/2 - 1]).to_f)/2.0
  end
  median
end

nums1_1 = [1,3]
nums2_1 = [2]
nums1_2 = [1,2]
nums2_2 = [3,4]
nums1_3 = [0,0]
nums2_3 = [0,0]
nums1_4 = []
nums2_4 = [1]
nums1_5 = [2]
nums2_5 = []

puts "Expected: 2.00000 -- Actual: #{find_median_sorted_arrays(nums1_1, nums2_1)}"
puts "Expected: 2.50000 -- Actual: #{find_median_sorted_arrays(nums1_2, nums2_2)}"
puts "Expected: 0.00000 -- Actual: #{find_median_sorted_arrays(nums1_3, nums2_3)}"
puts "Expected: 1.00000 -- Actual: #{find_median_sorted_arrays(nums1_4, nums2_4)}"
puts "Expected: 2.00000 -- Actual: #{find_median_sorted_arrays(nums1_5, nums2_5)}"