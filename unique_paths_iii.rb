#################### UNIQUE PATHS III ####################

# On a 2-dimensional grid, there are 4 types of squares:

# - 1 represents the starting square.  There is exactly one starting square.
# - 2 represents the ending square.  There is exactly one ending square.
# - 0 represents empty squares we can walk over.
# - -1 represents obstacles that we cannot walk over.

# Return the number of 4-directional walks from the starting square to 
# the ending square, that walk over every non-obstacle square exactly once.

# Example 1:
# Input: [[1,0,0,0],[0,0,0,0],[0,0,2,-1]]
# Output: 2
# Explanation: We have the following two paths: 
# 1. (0,0),(0,1),(0,2),(0,3),(1,3),(1,2),(1,1),(1,0),(2,0),(2,1),(2,2)
# 2. (0,0),(1,0),(2,0),(2,1),(1,1),(0,1),(0,2),(0,3),(1,3),(1,2),(2,2)

# Example 2:
# Input: [[1,0,0,0],[0,0,0,0],[0,0,0,2]]
# Output: 4
# Explanation: We have the following four paths: 
# 1. (0,0),(0,1),(0,2),(0,3),(1,3),(1,2),(1,1),(1,0),(2,0),(2,1),(2,2),(2,3)
# 2. (0,0),(0,1),(1,1),(1,0),(2,0),(2,1),(2,2),(1,2),(0,2),(0,3),(1,3),(2,3)
# 3. (0,0),(1,0),(2,0),(2,1),(2,2),(1,2),(1,1),(0,1),(0,2),(0,3),(1,3),(2,3)
# 4. (0,0),(1,0),(2,0),(2,1),(1,1),(0,1),(0,2),(0,3),(1,3),(1,2),(2,2),(2,3)

# Example 3:
# Input: [[0,1],[2,0]]
# Output: 0
# Explanation: 
# There is no path that walks over every empty square exactly once.
# Note that the starting and ending square can be anywhere in the grid.

# Note:
# - 1 <= grid.length * grid[0].length <= 20


#################### SOLUTION ####################
# @param {Integer[][]} grid
# @return {Integer}
def unique_paths_iii(grid)
  rows = grid.length
  cols = grid[0].length
  non_obstacles = 0
  start_row = 0
  start_col = 0
  for row in 0...rows
    for col in 0...cols
      cell = grid[row][col]
      if cell >= 0
        non_obstacles += 1
      end
      if cell == 1
        start_row = row
        start_col = col
      end
    end
  end
  path_count = 0

  def backtrack(row, col, remain)
    @path_count
    if grid[row][col] == 2 && remain == 1
      @path_count += 1
      return
    end
    temp = grid[row][col]
    grid[row][col] = -4
    remain -= 1
    for ro, co in [(0,1), (0,-1), (1,0), (-1,0)]
      next_row = row + ro
      next_col = col + co
      if !(0 <= next_row < rows && 0 <= next_col < cols)
        next
      end
      if grid[next_row][next_col] < 0
        next
      end
      backtrack(next_row, next_col, remain)
      grid[row][col] = temp
    end
    backtrack(start_row, start_col, non_obstacles)
  end
  path_count
end