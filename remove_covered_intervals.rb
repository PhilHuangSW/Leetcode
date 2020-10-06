#################### REMOVE COVERED INTERVALS ####################

# Given a list of intervals, remove all intervals that are covered by 
# another interval in the list.

# Interval [a,b) is covered by interval [c,d) if and only if c <= a 
# and b <= d.

# After doing so, return the number of remaining intervals.

# Example 1:
# Input: intervals = [[1,4],[3,6],[2,8]]
# Output: 2
# Explanation: Interval [3,6] is covered by [2,8], therefore it is removed.

# Example 2:
# Input: intervals = [[1,4],[2,3]]
# Output: 1

# Example 3:
# Input: intervals = [[0,10],[5,12]]
# Output: 2

# Example 4:
# Input: intervals = [[3,10],[4,10],[5,11]]
# Output: 2

# Example 5:
# Input: intervals = [[1,2],[1,4],[3,4]]
# Output: 1

# Constraints:
# - 1 <= intervals.length <= 1000
# - intervals[i].length == 2
# - 0 <= intervals[i][0] < intervals[i][1] <= 10^5
# - All the intervals are unique.


#################### SOLUTION ####################
# @param {Integer[][]} intervals
# @return {Integer}
def remove_covered_intervals(intervals)
  intervals = intervals.sort
  current_interval = [-1,-1]
  ans = 0
  intervals.each do |interval|
    if current_interval[0] < interval[0] && current_interval[1] < interval[1]
      current_interval[0] = interval[0]
      ans += 1
    end
    current_interval[1] = [current_interval[1], interval[1]].max
  end
  ans
end

intervals1 = [[1,4],[3,6],[2,8]]
intervals2 = [[1,4],[2,3]]
intervals3 = [[0,10],[5,12]]
intervals4 = [[3,10],[4,10],[5,11]]
intervals5 = [[1,2],[1,4],[3,4]]
intervals6 = [[1,2],[2,3],[3,4],[4,5],[1,6]]

puts "Expected: 2 -- Actual: #{remove_covered_intervals(intervals1)}"
puts "Expected: 1 -- Actual: #{remove_covered_intervals(intervals2)}"
puts "Expected: 2 -- Actual: #{remove_covered_intervals(intervals3)}"
puts "Expected: 2 -- Actual: #{remove_covered_intervals(intervals4)}"
puts "Expected: 1 -- Actual: #{remove_covered_intervals(intervals5)}"
puts "Expected: 1 -- Actual: #{remove_covered_intervals(intervals6)}"