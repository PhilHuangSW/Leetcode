#################### K CLOSEST POINTS TO ORIGIN ####################

# We have a list of points on the plane.  Find the K closest points to the origin (0, 0).

# (Here, the distance between two points on a plane is the Euclidean distance.)

# You may return the answer in any order.  The answer is guaranteed to be unique 
# (except for the order that it is in.)

# Example 1:
# Input: points = [[1,3],[-2,2]], K = 1
# Output: [[-2,2]]
# Explanation: 
# The distance between (1, 3) and the origin is sqrt(10).
# The distance between (-2, 2) and the origin is sqrt(8).
# Since sqrt(8) < sqrt(10), (-2, 2) is closer to the origin.
# We only want the closest K = 1 points from the origin, so the answer is just [[-2,2]].

# Example 2:
# Input: points = [[3,3],[5,-1],[-2,4]], K = 2
# Output: [[3,3],[-2,4]]
# (The answer [[-2,4],[3,3]] would also be accepted.)
 
# Note:
# 1. 1 <= K <= points.length <= 10000
# 2. -10000 < points[i][0] < 10000
# 3. -10000 < points[i][1] < 10000


#################### SOLUTION ####################
# @param {Integer[][]} points
# @param {Integer} k
# @return {Integer[][]}
# Euclidean distance is (x^2 + y^2)^2
# i.e. [1,3] => (1^2 + 3^2) => (1 + 9)^2 => (10)^2
# sort the points by their Euclidean distance, then place the - 
# - first k points into an array, then return the array
def k_closest(points, k)
    points.sort_by!{|point| point[0]**2 + point[1]**2}
    ans = []
    for i in 0...k
      ans << points[i]
    end
    ans
end

points1 = [[1,3],[-2,2]]
k1 = 1
points2 = [[3,3],[5,-1],[-2,4]]
k2 = 2
points3 = [[1,3],[-2,2],[0,1],[6,-2],[2,1]]
k3 = 3
points4 = [[1,3],[-2,2],[1,1],[0,0]]
k4 = 2
points5 = [[1,3]]
k5 = 1

puts "Expected: [[-2, 2]] -- Actual: #{k_closest(points1, k1)}"
puts "Expected: [[3, 3], [-2, 4]] -- Actual: #{k_closest(points2, k2)}"
puts "Expected: [[0, 1], [2, 1], [-2, 2]] -- Actual: #{k_closest(points3, k3)}"
puts "Expected: [[0, 0], [1, 1]] -- Actual: #{k_closest(points4, k4)}"
puts "Expected: [[1, 3]] -- Actual: #{k_closest(points5, k5)}"
