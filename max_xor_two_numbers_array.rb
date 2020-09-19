#################### MAXIMUM XOR OF TWO NUMBERS IN AN ARRAY ####################

# Given a **non-empty** array of numbers, a0, a1, a2, … , an-1, where 0 ≤ ai < 231.

# Find the maximum result of ai XOR aj, where 0 ≤ i, j < n.

# Could you do this in O(n) runtime?

# Example:
# Input: [3, 10, 5, 25, 2, 8]
# Output: 28
# Explanation: The maximum result is 5 ^ 25 = 28.


#################### SOLUTION ####################
# @param {Integer[]} nums
# @return {Integer}
# Brute Force Attempt -- Calculates ALL XOR combinations
# TIME: O(n^2) -- SPACE: O(1)
def find_maximum_xor(nums)
  max = 0
  for i in 0...(nums.length-1)
    for j in (i+1)...(nums.length)
      if (nums[i] ^ nums[j]) > max
        max = (nums[i] ^ nums[j])
      end
    end
  end
  max
end

nums1 = [3,10,5,25,2,8]
nums2 = [4,6,7]

puts "Expected: 28 -- Actual: #{find_maximum_xor(nums1)}"
puts "Expected: 3 -- Actual: #{find_maximum_xor(nums2)}"