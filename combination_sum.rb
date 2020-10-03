#################### COMBINATION SUM ####################

# Given an array of distinct integers candidates and a target integer 
# target, return a list of all unique combinations of candidates where 
# the chosen numbers sum to target. You may return the combinations in any order.

# The same number may be chosen from candidates an unlimited number of 
# times. Two combinations are unique if the frequency of at least one of 
# the chosen numbers is different.

# Example 1:
# Input: candidates = [2,3,6,7], target = 7
# Output: [[2,2,3],[7]]
# Explanation:
# 2 and 3 are candidates, and 2 + 2 + 3 = 7. Note that 2 can be used multiple times.
# 7 is a candidate, and 7 = 7.
# These are the only two combinations.

# Example 2:
# Input: candidates = [2,3,5], target = 8
# Output: [[2,2,2,2],[2,3,3],[3,5]]

# Example 3:
# Input: candidates = [2], target = 1
# Output: []

# Example 4:
# Input: candidates = [1], target = 1
# Output: [[1]]

# Example 5:
# Input: candidates = [1], target = 2
# Output: [[1,1]]

# Constraints:
# - 1 <= candidates.length <= 30
# - 1 <= candidates[i] <= 200
# - All elements of candidates are distinct.
# - 1 <= target <= 500


#################### SOLUTION ####################
# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)
  return [] if candidates.empty?
  dfs(candidates, target)
end

# we use depth-first search to be able to get all values that add up to our target value
# the use of index (idx) helps us keep uniqueness as the for loop within the dfs only 
# uses values from idx-->forward
# i.e. if you start with [2,3,6,7], you will get [2], [3], [6], [7], let's go through the [2] path
# [2] will then obtain [2,2], [2,3], [2,6], [2,7], but [2,6] and [2,7] > target, so skip those
# [2,2] has idx 0, so you can choose from [2,3,6,7]
# [2,3] has idx 1, so you can choose from [3,6,7]
# [2,2] will then grab [2,2,2] and [2,2,3]
# [2,3] will grab [2,3,3], [2,3,6], [2,3,7] which are all > target, so skip all these
# [2,2,2] will then grab [2,2,2,2], [2,2,2,3], [2,2,2,6], [2,2,2,7], again, all of which are > target, so we skip
# [2,2,3] == target so we return this
def dfs(candidates, target, idx = 0, current_total = 0, path = [], result = [])
  if current_total == target
    result << path
    return
  end
  for i in idx...candidates.size
    next if current_total + candidates[i] > target
    dfs(candidates, target, i, current_total + candidates[i], path + [candidates[i]], result)
  end
  result
end

candidates1 = [2,3,6,7]
target1 = 7
candidates2 = [2,3,5]
target2 = 8
candidates3 = [1]
target3 = 1
candidates4 = [1]
target4 = 2
candidates5 = [2]
target5 = 3

puts "Expected: [[2,2,3],[7]] -- Actual: #{combination_sum(candidates1, target1)}"
puts "Expected: [[2,2,2,2],[2,3,3],[3,5]] -- Actual: #{combination_sum(candidates2, target2)}"
puts "Expected: [[1]] -- Actual: #{combination_sum(candidates3, target3)}"
puts "Expected: [[1,1]] -- Actual: #{combination_sum(candidates4, target4)}"
puts "Expected: [] -- Actual: #{combination_sum(candidates5, target5)}"