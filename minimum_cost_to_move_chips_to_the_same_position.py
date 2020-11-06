#################### MINIMUM COST TO MOVE CHIPS TO THE SAME POSITION ####################

# We have n chips, where the position of the ith chip is position[i].

# We need to move all the chips to **the same position**. In one step, we can change the position of the ith chip from position[i] to:

# - position[i] + 2 or position[i] - 2 with cost = 0.
# - position[i] + 1 or position[i] - 1 with cost = 1.

# Return *the minimum cost* needed to move all the chips to the same position.

# **Example 1:**
# ```
# Input: position = [1,2,3]
# Output: 1
# Explanation: First step: Move the chip at position 3 to position 1 with cost = 0.
# Second step: Move the chip at position 2 to position 1 with cost = 1.
# Total cost is 1.
# ```

# **Example 2:**
# ```
# Input: position = [2,2,2,3,3]
# Output: 2
# Explanation: We can move the two chips at poistion 3 to position 2. Each move has cost = 1. The total cost = 2.
# ```

# **Example 3:**
# ```
# Input: position = [1,1000000000]
# Output: 1
# ```

# **Constraints:**
# - 1 <= position.length <= 100
# - 1 <= position[i] <= 10^9

#################### SOLUTION ####################
from typing import List

class Solution:
  def minCostToMoveChips(self, position: List[int]) -> int:
    if len(position) == 1:
      return 0
    odd_count = 0
    even_count = 0
    for i in range(0,len(position)):
      if position[i]%2 == 1:
        odd_count += 1
      else:
        even_count += 1
    return min(odd_count, even_count)

position1 = [1,2,3]
position2 = [2,2,2,3,3]
position3 = [1,1000000000]
position4 = [1,1,1,1,1,2,2,2]
position5 = [1]
position6 = [1,2]
position7 = [2,2,2,2,2,2,2]

instance = Solution()
print("Expected: 1 -- Actual: ", instance.minCostToMoveChips(position1))
print("Expected: 2 -- Actual: ", instance.minCostToMoveChips(position2))
print("Expected: 1 -- Actual: ", instance.minCostToMoveChips(position3))
print("Expected: 3 -- Actual: ", instance.minCostToMoveChips(position4))
print("Expected: 0 -- Actual: ", instance.minCostToMoveChips(position5))
print("Expected: 1 -- Actual: ", instance.minCostToMoveChips(position6))
print("Expected: 0 -- Actual: ", instance.minCostToMoveChips(position7))