#################### TRAPPING RAIN WATER ####################

# Given n non-negative integers representing an elevation map where 
# the width of each bar is 1, compute how much water it is able to 
# trap after raining.

# The above (picture not included) elevation map is represented by 
# array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain 
# water (blue section) are being trapped.

# Example:
# Input: [0,1,0,2,1,0,1,3,2,1,2,1]
# Output: 6


#################### SOLUTION ####################
# @param {Integer[]} height
# @return {Integer}
# TIME: O(n) -- SPACE: O(n)
def trap(height)
  return 0 if height.empty?
  # we create a left_height and a right_height that displays the MAX height
  # depending on which direction we're coming from.
  # i.e. if for left_height, we see what the max height is from the left is
  left_height = Array.new(height.length)
  left_height[0] = height[0]
  right_height = Array.new(height.length)
  right_height[height.length-1] = height[height.length-1]
  for i in 1...height.length
    left_height[i] = [height[i], left_height[i-1]].max
  end
  for i in (height.length-2).downto(0)
    right_height[i] = [height[i], right_height[i+1]].max
  end
  # we obtain the trapped water when the we take the min from index i
  # of left_height and right_height, and we subtract it from the height array
  # at index i. 
  trapped_water = 0
  for i in 0...height.length
    if [left_height[i], right_height[i]].min >= height[i]
      trapped_water += [left_height[i], right_height[i]].min - height[i]
    end
  end
  trapped_water
end

height1 = [0,1,0,2,1,0,1,3,2,1,2,1]
height2 = [0,1,2,1,0]
height3 = [0,1,3,0,2,1,1,2,0,3]
height4 = [0,1,3,2,1,0,0,1]
height5 = [0,1]
height6 = [1,0,1]
height7 = []

puts "Expected: 6 -- Actual: #{trap(height1)}"
puts "Expected: 0 -- Actual: #{trap(height2)}"
puts "Expected: 12 -- Actual: #{trap(height3)}"
puts "Expected: 2 -- Actual: #{trap(height4)}"
puts "Expected: 0 -- Actual: #{trap(height5)}"
puts "Expected: 1 -- Actual: #{trap(height6)}"
puts "Expected: 0 -- Actual: #{trap(height7)}"