#################### JUMP GAME III ####################

# Given an array of non-negative integers arr, you are initially 
# positioned at start index of the array. When you are at index i, 
# you can jump to i + arr[i] or i - arr[i], check if you can reach 
# to **any** index with value 0.

# Notice that you can not jump outside of the array at any time.

# **Example 1:**
# Input: arr = [4,2,3,0,3,1,2], start = 5
# Output: true
# Explanation: 
# All possible ways to reach at index 3 with value 0 are: 
# index 5 -> index 4 -> index 1 -> index 3 
# index 5 -> index 6 -> index 4 -> index 1 -> index 3 

# **Example 2:**
# Input: arr = [4,2,3,0,3,1,2], start = 0
# Output: true 
# Explanation: 
# One possible way to reach at index 3 with value 0 is: 
# index 0 -> index 4 -> index 1 -> index 3

# **Example 3:**
# Input: arr = [3,0,2,1,2], start = 2
# Output: false
# Explanation: There is no way to reach at index 1 with value 0.

# **Constraints:**
# - 1 <= arr.length <= 5 * 10^4
# - 0 <= arr[i] < arr.length
# - 0 <= start < arr.length


#################### SOLUTION ####################
# @param {Integer[]} arr
# @param {Integer} start
# @return {Boolean}
# DFS solution, start from start index, then
# DFS(start + arr[start]) and DFS(start - arr[start])
# we use a hash to see if we've been there before, if so we skip it
def can_reach(arr, start)
  return true if arr[start] == 0
  max_index = arr.length - 1
  h = Hash.new{|h,index| h[index] = false}
  reach = false
  reach = dfs(arr, start, h, max_index, reach)
  return true if reach == true
  return false
end

def dfs(arr, start, h, max_index, reach)
  if arr[start] == 0
    reach = true
    return reach
  end
  add_index = start + arr[start]
  neg_index = start - arr[start]
  if add_index <= max_index && !h.has_key?(add_index)
    h[add_index] = true
    reach = dfs(arr, add_index, h, max_index, reach)
  end
  if neg_index >= 0 && !h.has_key?(neg_index)
    h[neg_index] = true
    reach = dfs(arr, neg_index, h, max_index, reach)
  end
  reach
end
  
arr1 = [4,2,3,0,3,1,2]
start1 = 5
arr2 = [4,2,3,0,3,1,2]
start2 = 0
arr3 = [3,0,2,1,2]
start3 = 2
arr4 = [3,0,2,1,2]
start4 = 2
arr5 = [0,0]
start5 = 0
arr6 = [1,0,2,0]
start6 = 0

puts "Expected: true -- Actual: #{can_reach(arr1, start1)}"
puts "Expected: true -- Actual: #{can_reach(arr2, start2)}"
puts "Expected: false -- Actual: #{can_reach(arr3, start3)}"
puts "Expected: false -- Actual: #{can_reach(arr4, start4)}"
puts "Expected: true -- Actual: #{can_reach(arr5, start5)}"
puts "Expected: true -- Actual: #{can_reach(arr6, start6)}"