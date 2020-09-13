#################### INSERT INTERVAL ####################

# Given a set of non-overlapping intervals, insert a new interval 
# into the intervals (merge if necessary).

# You may assume that the intervals were initially sorted according 
# to their start times.

# Example 1:
# Input: intervals = [[1,3],[6,9]], newInterval = [2,5]
# Output: [[1,5],[6,9]]

# Example 2:
# Input: intervals = [[1,2],[3,5],[6,7],[8,10],[12,16]], newInterval = [4,8]
# Output: [[1,2],[3,10],[12,16]]
# Explanation: Because the new interval [4,8] overlaps with [3,5],[6,7],[8,10].


#################### SOLUTION ####################
# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  ans = []
  if intervals.empty?
      return ans << new_interval
  end
  start_index = 0
  end_index = 0
  min = new_interval[0]
  max = new_interval[1]
  
  start_index = find_min_index(intervals, min)
  end_index = find_max_index(intervals, max)
  
  if start_index == -1
      return intervals << new_interval
  end
  if end_index == -1
      ans << new_interval
      for i in 0...intervals.length
          ans << intervals[i]
      end
      return ans
  end
      
  
  interval = []
  if min <= intervals[start_index][0]
      interval << min
  else
      interval << intervals[start_index][0]
  end
  if max >= intervals[end_index][1]
      interval << max
  else
      interval << intervals[end_index][1]
  end
  
  for i in 0...start_index
      ans << intervals[i]
  end
  ans << interval
  for i in (end_index+1)...intervals.length
      ans << intervals[i]
  end
  ans
end

def find_min_index(arr, min)
  for i in 0...arr.length
      for j in 0...arr[i].length
          if min <= arr[i][j]
              return i
          end
      end
  end
  return -1
end

def find_max_index(arr, max)
  for i in (arr.length-1).downto(0)
      for j in (arr[i].length-1).downto(0)
          if max >= arr[i][j]
              return i
          end
      end
  end
  return -1
end

intervals1 = [[1,3],[6,9]]
new_interval1 = [2,5]
intervals2 = [[1,2],[3,5],[6,7],[8,10],[12,16]]
new_interval2 = [4,8]
intervals3 = []
new_interval3 = [2,5]
intervals4 = [[1,5]]
new_interval4 = [0,0]
intervals5 = [[1,3],[6,9],[11,13]]
new_interval5 = [10,13]

puts "Expected: [[1, 5], [6, 9]] -- Actual: #{insert(intervals1, new_interval1)}"
puts "Expected: [[1, 2], [3, 10], [12, 16]] -- Actual: #{insert(intervals2, new_interval2)}"
puts "Expected: [[2, 5]] -- Actual: #{insert(intervals3, new_interval3)}"
puts "Expected: [[0, 0], [1, 5]] -- Actual: #{insert(intervals4, new_interval4)}"
puts "Expected: [[1, 3], [6, 9], [10, 13]] -- Actual: #{insert(intervals5, new_interval5)}"

