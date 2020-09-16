#################### CONTAINER WITH MOST WATER ####################

# Given n non-negative integers a1, a2, ..., an , where each represents a 
# point at coordinate (i, ai). n vertical lines are drawn such that the two 
# endpoints of line i is at (i, ai) and (i, 0). Find two lines, which 
# together with x-axis forms a container, such that the container contains 
# the most water.

# Note: You may not slant the container and n is at least 2.

# The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. 
# In this case, the max area of water (blue section) the container can 
# contain is 49.

# Example:
# Input: [1,8,6,2,5,4,8,3,7]
# Output: 49


#################### SOLUTION ####################
# @param {Integer[]} height
# @return {Integer}
# Brute Force attempt. Solution works but is slow. On large inputs it 
# exceeds time limit 
# TIME: O(n^2) -- SPACE: O(1)
# def max_area(height)
#   area = 0
#   for i in 0...(height.length-1)
#       for j in (i+1)...height.length
#           if (([height[i],height[j]].min) * (j-i)) > area
#             area = ([height[i],height[j]].min) * (j-i)
#           end
#       end
#   end
#   area     
# end

# @param {Integer[]} height
# @return {Integer}
# Two pointer approach
# TIME: O(n) -- SPACE: O(1)
def max_area(height)
  area = 0
  front = 0
  back = height.length - 1
  while front != back
    if (([height[front], height[back]].min) * (back - front)) > area
      area = ([height[front], height[back]].min) * (back - front)
    end
    if height[front] >= height[back]
      back -= 1
    else
      front += 1
    end
  end
  area
end

height1 = [1,8,6,2,5,4,8,3,7]
height2 = [1,8,6,2,5,4,9]
height3 = [2,3,4,5,18,17,6]

puts "Expected: 49 -- Actual: #{max_area(height1)}"
puts "Expected: 40 -- Actual: #{max_area(height2)}"
puts "Expected: 17 -- Actual: #{max_area(height3)}"
