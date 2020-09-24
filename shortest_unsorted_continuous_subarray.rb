#################### SHORTEST UNSORTED CONTINUOUS SUBARRAY ####################

# You need to find the shortest such subarray and output its length.

# Example 1:
# Input: [2, 6, 4, 8, 10, 9, 15]
# Output: 5
# Explanation: You need to sort [6, 4, 8, 10, 9] in ascending order to make the 
# whole array sorted in ascending order.

# Note:
# - Then length of the input array is in range [1, 10,000].
# - The input array may contain duplicates, so ascending order here means <=.


#################### SOLUTION ####################
# @param {Integer[]} nums
# @return {Integer}
# TIME: O(nlogn) -- SPACE: O(n)
# def find_unsorted_subarray(nums)
#     copy = nums.sort
#     index = []
#     if copy == nums
#         return 0
#     end
    
#     # push indexes into the array for every mismatched number in the array
#     for i in 0...nums.length
#         if nums[i] != copy[i]
#             index << i
#         end
#     end
    
#     # have to add the +1 to account for inclusivity
#     ans = (index.max - index.min) + 1
# end

# TIME: O(nlogn) -- SPACE: O(n)
# def find_unsorted_subarray(nums)
#     copy = nums.sort
#     left_index = 0
#     right_index = 0
#     if copy == nums
#         return 0
#     end

#     # finds the first index where the sorted list doesn't match the unsorted list
#     for i in 0...nums.length
#         if nums[i] != copy[i]
#             left_index = i
#             break
#         end
#     end
#     # finds the last index where the sorted list doesn't match the unsorted list
#     for i in (nums.length-1).downto(0)
#         if nums[i] != copy[i]
#             right_index = i
#             break
#         end
#     end

#     # have to add the +1 to account for inclusivity
#     ans = (right_index - left_index) + 1
# end

def find_unsorted_subarray(nums)
    left_index = 0
    right_index = 0
    return 0 if nums.length == 1
    for i in 1...nums.length
        if nums[i] < nums[i-1]
            left_index = i-1
            break
        end
    end
    for i in (nums.length-2).downto(0)
        if nums[i] > nums[i+1]
            right_index = i+1
            break
        end
    end
    return 0 if left_index == 0 && right_index == 0
    ans = (right_index - left_index) + 1
end

nums1 = [2,6,4,8,10,9,15]
nums2 = [2,3,5,10,6,11]
nums3 = [1,2,3,4,5]
nums4 = [2,10,15,12,23,16,29]
nums5 = [2,3]
nums6 = [2]
nums7 = [1,3,2,2,2]
nums8 = [3,1,1,1,5]

puts "Expected: 5 -- Actual: #{find_unsorted_subarray(nums1)}"
puts "Expected: 2 -- Actual: #{find_unsorted_subarray(nums2)}"
puts "Expected: 0 -- Actual: #{find_unsorted_subarray(nums3)}"
puts "Expected: 4 -- Actual: #{find_unsorted_subarray(nums4)}"
puts "Expected: 0 -- Actual: #{find_unsorted_subarray(nums5)}"
puts "Expected: 0 -- Actual: #{find_unsorted_subarray(nums6)}"
puts "Expected: 4 -- Actual: #{find_unsorted_subarray(nums7)}"
puts "Expected: 4 -- Actual: #{find_unsorted_subarray(nums8)}"