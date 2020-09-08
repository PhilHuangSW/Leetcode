#################### SHUFFLE THE ARRAY ####################

# Given the array nums consisting of 2n elements in the form [x1,x2,...,xn,y1,y2,...,yn].

# Return the array in the form [x1,y1,x2,y2,...,xn,yn].

# Example 1:
# Input: nums = [2,5,1,3,4,7], n = 3
# Output: [2,3,5,4,1,7] 
# Explanation: Since x1=2, x2=5, x3=1, y1=3, y2=4, y3=7 then the answer is [2,3,5,4,1,7].

# Example 2:
# Input: nums = [1,2,3,4,4,3,2,1], n = 4
# Output: [1,4,2,3,3,2,4,1]

# Example 3:
# Input: nums = [1,1,2,2], n = 2
# Output: [1,2,1,2]
 
# Constraints:
# - 1 <= n <= 500
# - nums.length == 2n
# - 1 <= nums[i] <= 10^3


#################### SOLUTION ####################
# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
# def shuffle(nums, n)
#     # If it's less than 2, no need to reorder
#     if nums.length <= 2
#         return nums
#     end

#     # Since we know that the array is ordered by 
#     # [x1, x2, x3,...,xn, y1, y2, y3,...,yn], 
#     # we can create an array of just y values
#     y_arr = []
#     for i in n...nums.length
#         y_arr.push nums[i]
#     end
    
#     # Once we have the y array, we can just use 
#     # a for loop and interlock the x and y values
#     # into our final array
#     final_arr = []
#     for i in 0...(nums.length/2)
#         final_arr.push nums[i]
#         final_arr.push y_arr[i]
#     end
#     final_arr
# end

def shuffle(nums, n)
    # If it's less than 2, no need to reorder
    if nums.length <= 2
        return nums
    end

    final_arr = []
    # push x1, then y1, then x2, then y2, etc.
    for i in 0...(nums.length/2)
        final_arr.push nums[i]
        final_arr.push nums[i+n]
    end
    final_arr
end


nums1 = [2,5,1,3,4,7]
n1 = 3
nums2 = [1,2,3,4,4,3,2,1]
n2 = 4
nums3 = [1,1,2,2]
n3 = 2
nums4 = [7,4,5,4,1,8,9,5,10,3]
n4 = 5
nums5 = [9,2,23,12,10,4,7,11,13,22,40,1]
n5 = 6

puts "Expected: [2, 3, 5, 4, 1, 7] -- Actual: #{shuffle(nums1, n1)}"
puts "Expected: [1, 4, 2, 3, 3, 2, 4, 1] -- Actual: #{shuffle(nums2, n2)}"
puts "Expected: [1, 2, 1, 2] -- Actual: #{shuffle(nums3, n3)}"
puts "Expected: [7, 8, 4, 9, 5, 5, 4, 10, 1, 3] -- Actual: #{shuffle(nums4, n4)}"
puts "Expected: [9, 7, 2, 11, 23, 13, 12, 22, 10, 40, 4, 1] -- Actual: #{shuffle(nums5, n5)}"
