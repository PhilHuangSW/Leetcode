#################### MAXIMIZE DISTANCE TO CLOSEST PERSON ####################

# You are given an array representing a row of seats where seats[i] = 1 represents a person sitting in the ith seat, and seats[i] = 0 represents that the ith seat is empty **(0-indexed)**.

# There is at least one empty seat, and at least one person sitting.

# Alex wants to sit in the seat such that the distance between him and the closest person to him is maximized. 

# Return *that maximum distance to the closest person*.

# **Example 1:**
# ```
# Input: seats = [1,0,0,0,1,0,1]
# Output: 2
# Explanation: 
# If Alex sits in the second open seat (i.e. seats[2]), then the closest person has distance 2.
# If Alex sits in any other open seat, the closest person has distance 1.
# Thus, the maximum distance to the closest person is 2.
# ```

# **Example 2:**
# ```
# Input: seats = [1,0,0,0]
# Output: 3
# Explanation: 
# If Alex sits in the last seat (i.e. seats[3]), the closest person is 3 seats away.
# This is the maximum distance possible, so the answer is 3.
# ```

# **Example 3:**
# ```
# Input: seats = [0,1]
# Output: 1
# ```

# **Constraints:**
# - 2 <= seats.length <= 2 * 104
# - seats[i] is 0 or 1.
# - At least one seat is empty.
# - At least one seat is occupied.

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {Integer[]} seats
# @return {Integer}
# @param {Integer[]} seats
# @return {Integer}
# TIME: O(n) -- SPACE: O(1)
def max_dist_to_closest(seats)
  first_taken = false
  last_taken = false
  if seats[0] == 1
    first_taken = true
  else
    first_taken = false
  end
  if seats[seats.length-1] == 1
    last_taken = true
  else
    last_taken = false
  end
  most_empty = 0
  count = 0
  for i in 0...seats.length
    if seats[i] == 0
      count += 1
    else
      if count > most_empty
        most_empty = count
      end
      count = 0
    end
  end
  ans = []
  count = 1
  if first_taken == false
    for i in 1...seats.length
      if seats[i] == 0
        count += 1
      else
        ans << count
        break
      end
    end
  end
  count = 1
  if last_taken == false
    for i in (seats.length-2).downto(0)
      if seats[i] == 0
        count += 1
      else
        ans << count
        break
      end
    end
  end
  if most_empty%2 == 1
    ans << ((most_empty/2) + 1)
  else
    ans << (most_empty/2)
  end
  ans.max
end

seats1 = [1,0,0,0,1,0,1]
seats2 = [1,0,0,0]
seats3 = [0,1]

describe "maximum distance to closest person" do
  it "returns the max distance between you and the closest person" do
    expect(max_dist_to_closest(seats1)).to eq(2)
  end
  it "returns the max distance between you and the closest person" do
    expect(max_dist_to_closest(seats2)).to eq(3)
  end
  it "returns the max distance between you and the closest person" do
    expect(max_dist_to_closest(seats3)).to eq(1)
  end
end