#################### TOP K FREQUENT ELEMENTS ####################

# Given a non-empty array of integers, return the k most frequent elements.

# Example 1:
# Input: nums = [1,1,1,2,2,3], k = 2
# Output: [1,2]

# Example 2:
# Input: nums = [1], k = 1
# Output: [1]

# Note:
# - You may assume k is always valid, 1 ≤ k ≤ number of unique elements.
# - Your algorithm's time complexity must be better than O(n log n), where n is the array's size.
# - It's guaranteed that the answer is unique, in other words the set of the top k frequent elements is unique.
# - You can return the answer in any order.


#################### SOLUTION ####################
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
    return [] if nums.nil?
    return nums if nums.length == 1
    
    ans = []
    h = Hash.new{|h,num| h[num] = 0}
    for i in 0...nums.length
        h[nums[i]] += 1
    end

    # sorts the hash using largest values (most occurrences)
    sorted_hash = []
    sorted_hash = h.sort_by {|k, v| -v}
    for i in 0...k
        ans << sorted_hash[i][0]
    end
    ans
end

nums1 = [1,1,1,2,2,3]
k1 = 2
nums2 = [1]
k2 = 1
nums3 = [5,4,4,5,5,5,2,1,1]
k3 = 3
nums4 = [10,2,3,1,1,10,10,10,5,5,5]
k4 = 3
nums5 = [6,6,1]
k5 = 1

puts "Expected: [1, 2] -- Actual: #{top_k_frequent(nums1, k1)}"
puts "Expected: [1] -- Actual: #{top_k_frequent(nums2, k2)}"
puts "Expected: [5, 1, 4] -- Actual: #{top_k_frequent(nums3, k3)}"
puts "Expected: [10, 5, 1] -- Actual: #{top_k_frequent(nums4, k4)}"
puts "Expected: [6] -- Actual: #{top_k_frequent(nums5, k5)}"