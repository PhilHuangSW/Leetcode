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
def find_unsorted_subarray(nums)
    copy = nums.sort
    index = []
    if copy == nums
        return 0
    end
    
    # push indexes into the array for every mismatched number in the array
    for i in 0...nums.length
        if nums[i] != copy[i]
            index << i
        end
    end
    
    # have to add the +1 to account for inclusivity
    ans = (index.max - index.min) + 1
end
