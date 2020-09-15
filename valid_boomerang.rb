#################### VALID BOOMERANG ####################

# A boomerang is a set of 3 points that are all distinct 
# and not in a straight line.

# Given a list of three points in the plane, return whether 
# these points are a boomerang.

# Example 1:
# Input: [[1,1],[2,3],[3,2]]
# Output: true

# Example 2:
# Input: [[1,1],[2,2],[3,3]]
# Output: false
 
# Note:
# 1. points.length == 3
# 2. points[i].length == 2
# 3. 0 <= points[i][j] <= 100


#################### SOLUTION ####################
# @param {Integer[][]} points
# @return {Boolean}
def is_boomerang(points)
  # if any points are ==, it is false since the values need to be DISTINCT
  if points[0] == points[1] || points[1] == points[2] || points[0] == points[2]
      return false
  end
  # if all x values are ==, it is false since they will be in a straight line
  if points[0][0] == points[1][0] && points[1][0] == points[2][0]
      return false
  end
  # if all y values are ==, it is false since they will be in a straight line
  if points[0][1] == points[1][1] && points[1][1] == points[2][1]
      return false
  end
  # checks the slope of each value, and returns true if they have different slopes
  # false otherwise
  # LOGICAL OR 
  #         TRUE FALSE
  #        ------------
  # TRUE  | TRUE TRUE   
  # FALSE | TRUE FALSE
  x_boomerang(points) || y_boomerang(points)
end

def x_boomerang(points)
  slope = points[0][0] - points[1][0]
  if points[1][0] - points[2][0] != slope
      return true
  else
      return false
  end
end

def y_boomerang(points)
  slope = points[0][1] - points[1][1]
  if points[1][1] - points[2][1] != slope
      return true
  else
      return false
  end
end

points1 = [[1,1],[2,2],[3,3]]
points2 = [[1,0],[0,0],[2,0]]
points3 = [[1,1],[2,3],[3,2]]
points4 = [[0,-2],[0,3],[0,-7]]
points5 = [[1,5],[2,4],[-2,-8]]

puts "Expected: false -- Actual: #{is_boomerang(points1)}"
puts "Expected: false -- Actual: #{is_boomerang(points2)}"
puts "Expected: true -- Actual: #{is_boomerang(points3)}"
puts "Expected: false -- Actual: #{is_boomerang(points4)}"
puts "Expected: true -- Actual: #{is_boomerang(points5)}"