#################### RANGE SUM QUERY - IMMUTABLE ####################

# Given an integer array nums, find the sum of the elements between 
# indices i and j (i ≤ j), inclusive.

# Example:
# Given nums = [-2, 0, 3, -5, 2, -1]

# sumRange(0, 2) -> 1
# sumRange(2, 5) -> -1
# sumRange(0, 5) -> -3

# Constraints:
# - You may assume that the array does not change.
# - There are many calls to sumRange function.
# - 0 <= nums.length <= 10^4
# - -10^5 <= nums[i] <= 10^5
# - 0 <= i <= j < nums.length


#################### SOLUTION ####################
class NumArray
=begin
  :type nums: Integer[]
=end
  def initialize(nums)
    @sum_cache = []
    sum = 0
    nums.each_with_index{ |num, index| 
      sum += num
      @sum_cache[index] = sum
    }
  end


=begin
  :type i: Integer
  :type j: Integer
  :rtype: Integer
=end
  def sum_range(i, j)
    i == 0 ? @sum_cache[j] : @sum_cache[j] - @sum_cache[i-1]
  end
end
# Your NumArray object will be instantiated and called as such:
# obj = NumArray.new(nums)
# param_1 = obj.sum_range(i, j)
