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
require 'rspec/autorun'

# @param {Integer[]} position
# @return {Integer}
def min_cost_to_move_chips(position)
  return 0 if position.length == 1
  odd_count = 0
  even_count = 0
  for i in 0...position.length
    if position[i]%2 == 1
      odd_count += 1
    else
      even_count += 1
    end
  end
  return [odd_count, even_count].min
end

position1 = [1,2,3]
position2 = [2,2,2,3,3]
position3 = [1,1000000000]
position4 = [1,1,1,1,1,2,2,2]
position5 = [1]
position6 = [1,2]
position7 = [2,2,2,2,2,2,2]

describe "Minimum cost to move chips to the same position" do
  it "returns the minimum cost" do
    expect(min_cost_to_move_chips(position1)).to eq(1)
  end
  it "returns the minimum cost" do
    expect(min_cost_to_move_chips(position2)).to eq(2)
  end
  it "returns the minimum cost" do
    expect(min_cost_to_move_chips(position3)).to eq(1)
  end
  it "returns the minimum cost" do
    expect(min_cost_to_move_chips(position4)).to eq(3)
  end
  it "returns the minimum cost" do
    expect(min_cost_to_move_chips(position5)).to eq(0)
  end
  it "returns the minimum cost" do
    expect(min_cost_to_move_chips(position6)).to eq(1)
  end
  it "returns the minimum cost" do
    expect(min_cost_to_move_chips(position7)).to eq(0)
  end
end