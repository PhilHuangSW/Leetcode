#################### LARGEST NUMBER ####################

# Given a list of non negative integers, arrange them such that 
# they form the largest number.

# Example 1:
# Input: [10,2]
# Output: "210"

# Example 2:
# Input: [3,30,34,5,9]
# Output: "9534330"

# Note: The result may be very large, so you need to return a string 
# instead of an integer.


#################### SOLUTION ####################
# @param {Integer[]} nums
# @return {String}
def largest_number(nums)
  return "" if nums.empty?
  h = Hash.new{|h,num| h[num] = []}
  for i in 0...nums.length
    h[nums[i]] << nums[i]
  end
  p h
end

def sort(arr, num)

end

nums1 = []
nums2 = [10,2]
nums3 = [3,30,34,5,9]
nums4 = [94,940,95,939,91]
nums5 = [9,9]
nums6 = [10,9,240,9,10]
nums7 = [9,90,909,99]

puts "Expected: \"\" -- Actual: #{largest_number(nums1)}"
puts "Expected: \"210\" -- Actual: #{largest_number(nums2)}"
puts "Expected: \"9534330\" -- Actual: #{largest_number(nums3)}"
puts "Expected: \"959494093991\" -- Actual: #{largest_number(nums4)}"
puts "Expected: \"99\" -- Actual: #{largest_number(nums5)}"
puts "Expected: \"992401010\" -- Actual: #{largest_number(nums6)}"
puts "Expected: \"99990990\" -- Actual: #{largest_number(nums7)}"


p a = [9,90,909,99]
p a.sort