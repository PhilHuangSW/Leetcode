#################### SEARCH A 2D MATRIX ####################

# Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:

# - Integers in each row are sorted from left to right.
# - The first integer of each row is greater than the last integer of the previous row.

# **Example 1:**
# ```
# Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,50]], target = 3
# Output: true
# ```

# **Example 2:**
# ```
# Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,50]], target = 13
# Output: false
# ```

# **Example 3:**
# ```
# Input: matrix = [], target = 0
# Output: false
# ```

# **Constraints:**
# - m == matrix.length
# - n == matrix[i].length
# - 0 <= m, n <= 100
# - -104 <= matrix[i][j], target <= 104

#################### SOLUTION ####################
# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
# TIME: O(nlogn) -- SPACE: O(1)
# If the last element of the first row of a matrix is lower than target
# we skip to the next row
# Otherwise we do a binary search on the row to find the target
# if we can't find the target in the binary search, return false, otherwise true
def search_matrix(matrix, target)
  return false if matrix.empty?
  return false if matrix[0].empty?
  for i in 0...matrix.length
    puts "matrix[i]: #{matrix[i]} -- looking at: #{matrix[i][matrix[i].length-1]}"
    if matrix[i][matrix[i].length-1] == target
      return true
    end
    if matrix[i][matrix[i].length-1] < target
      next
    else
      return binary_search(matrix[i], 0, matrix[i].length-1, target)
    end
  end
  return false
end

def binary_search(subarray, left, right, target)
  while left <= right
    pivot = left + (right - left) / 2
    if subarray[pivot] == target
      return true
    end
    if subarray[pivot] < target
      left = pivot + 1
    else
      right = pivot - 1
    end
  end
  return false
end

matrix1 = [[1,3,5,7],[10,11,16,20],[23,30,34,50]]
target1 = 3
matrix2 = [[1,3,5,7],[10,11,16,20],[23,30,34,50]]
target2 = 13
matrix3 = []
target3 = 0
matrix4 = [[1,2,3,6,7,10,23],[25,30,40,70,90,101,106],[200,301,302,304,306,309,400]]
target4 = 309
matrix5 = [[1,5,10,12,13,18],[22,23,24,25,26,27]]
target5 = 15
matrix6 = [[]]
target6 = 1
matrix7 = [[1]]
target7 = 2
matrix8 = [[1],[2],[5],[10],[12],[15]]
target8 = 13
matrix9 = [[1],[2],[5],[10],[12],[15]]
target9 = 12

puts "Expected: true -- Actual: #{search_matrix(matrix1, target1)}"
puts "Expected: false -- Actual: #{search_matrix(matrix2, target2)}"
puts "Expected: false -- Actual: #{search_matrix(matrix3, target3)}"
puts "Expected: true -- Actual: #{search_matrix(matrix4, target4)}"
puts "Expected: false -- Actual: #{search_matrix(matrix5, target5)}"
puts "Expected: false -- Actual: #{search_matrix(matrix6, target6)}"
puts "Expected: false -- Actual: #{search_matrix(matrix7, target7)}"
puts "Expected: false -- Actual: #{search_matrix(matrix8, target8)}"
puts "Expected: true -- Actual: #{search_matrix(matrix9, target9)}"