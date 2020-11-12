#################### VALID SQUARE ####################

# Given the coordinates of four points in 2D space, return whether the four points could construct a square.

# The coordinate (x,y) of a point is represented by an integer array with two integers.

# **Example:**
# ```
# Input: p1 = [0,0], p2 = [1,1], p3 = [1,0], p4 = [0,1]
# Output: True
# ```

# **Note:**
# 1. All the input integers are in the range [-10000, 10000].
# 2. A valid square has four equal sides with positive length and four equal angles (90-degree angles).
# 3. Input points have no order.

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {Integer[]} p1
# @param {Integer[]} p2
# @param {Integer[]} p3
# @param {Integer[]} p4
# @return {Boolean}
# TIME: O(1) -- SPACE: O(1)
def valid_square(p1, p2, p3, p4)
  p_arr = [p1,p2,p3,p4]
  p_arr.sort_by!{|f,s| f}
  for i in 0...(p_arr.length-1)
    if p_arr[i][0] == p_arr[i+1][0]
      if p_arr[i][1] > p_arr[i+1][1]
        temp = p_arr[i][1]
        p_arr[i][1] = p_arr[i+1][1]
        p_arr[i+1][1] = temp
      end
    end
  end
  p1 = p_arr[0]
  p2 = p_arr[1]
  p3 = p_arr[2]
  p4 = p_arr[3]
  if (dist(p1,p2) != 0 && 
    dist(p1,p2) == dist(p2,p4) &&
    dist(p2,p4) == dist(p3,p4) &&
    dist(p3,p4) == dist(p1,p3) &&
    dist(p1,p4) == dist(p2,p3))
    return true
  else
    return false
  end
end

def dist(p1, p2)
  return (p2[1] - p1[1]) * (p2[1] - p1[1]) + (p2[0] - p1[0]) * (p2[0] - p1[0]) 
end

p1_1 = [0,0]
p2_1 = [1,1]
p3_1 = [1,0]
p4_1 = [0,1]

p1_2 = [0,0]
p2_2 = [1,2]
p3_2 = [2,1]
p4_2 = [3,3]

describe "Valid Square" do
  it "returns true if the 4 points form a square, false otherwise" do
    expect(valid_square(p1_1,p2_1,p3_1,p4_1)).to eq(true)
  end
  it "returns true if the 4 points form a square, false otherwise" do
    expect(valid_square(p1_2,p2_2,p3_2,p4_2)).to eq(false)
  end
end