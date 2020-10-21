#################### ASTEROID COLLISION ####################

# We are given an array asteroids of integers representing asteroids in a row.

# For each asteroid, the absolute value represents its size, and the sign represents its direction (positive meaning right, negative meaning left). Each asteroid moves at the same speed.

# Find out the state of the asteroids after all collisions. If two asteroids meet, the smaller one will explode. If both are the same size, both will explode. Two asteroids moving in the same direction will never meet.

# **Example 1:**
# ```
# Input: asteroids = [5,10,-5]
# Output: [5,10]
# Explanation: The 10 and -5 collide resulting in 10.  The 5 and 10 never collide.
# ```

# **Example 2:**
# ```
# Input: asteroids = [8,-8]
# Output: []
# Explanation: The 8 and -8 collide exploding each other.
# ```

# **Example 3:**
# ```
# Input: asteroids = [10,2,-5]
# Output: [10]
# Explanation: The 2 and -5 collide resulting in -5. The 10 and -5 collide resulting in 10.
# ```

# **Example 4:**
# ```
# Input: asteroids = [-2,-1,1,2]
# Output: [-2,-1,1,2]
# Explanation: The -2 and -1 are moving left, while the 1 and 2 are moving right. Asteroids moving the same direction never meet, so no asteroids will meet each other.
# ```

# **Constraints:**
# - 1 <= asteroids <= 104
# - -1000 <= asteroids[i] <= 1000
# - asteroids[i] != 0

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {Integer[]} asteroids
# @return {Integer[]}
# TIME: O(n) -- SPACE: O(1)
def asteroid_collision(asteroids)
  return asteroids if asteroids.length == 1
  prev_idx = 0
  curr_idx = 1
  while asteroids[curr_idx] != nil
    # positive vs negative
    if asteroids[prev_idx] > 0 && asteroids[curr_idx] < 0
      # 10 vs -5 --> 10
      # prev, curr indices stay the same
      if asteroids[prev_idx] > asteroids[curr_idx].abs
        asteroids.delete_at(curr_idx)
      # 10 vs -15 --> -15
      # replace 10 with -15, delete node that is -15 before, i.e. curr_idx
      # when we do this, make prev -= 1 and curr -= 1 to check the stuff before
      elsif asteroids[prev_idx] < asteroids[curr_idx].abs
        asteroids[prev_idx] = asteroids[curr_idx]
        asteroids.delete_at(curr_idx)
        if prev_idx != 0
          prev_idx -= 1
          curr_idx -= 1
        end
      else
        asteroids.delete_at(curr_idx)
        asteroids.delete_at(prev_idx)
        if prev_idx != 0
          prev_idx -= 1
          curr_idx -= 1
        end
      end
    # negative vs positive, negative vs negative, positive vs positive
    else
      prev_idx += 1
      curr_idx += 1
    end
  end
  asteroids
end

asteroids1 = [5,10,-5]
asteroids2 = [8,-8]
asteroids3 = [10,2,-5]
asteroids4 = [-2,-1,1,2]
asteroids5 = []
asteroids6 = [5]
asteroids7 = [20,10,5,2,-2,5,-10,-20]
asteroids8 = [20,10,5,2,-2,-5,-10,-20]
asteroids9 = [20,10,5,2,11,12,200]

describe "asteroid collisions" do
  it "returns all asteroids that are good" do
    expect(asteroid_collision(asteroids1)).to eq([5,10])
  end
  it "returns all asteroids that are good" do
    expect(asteroid_collision(asteroids2)).to eq([])
  end
  it "returns all asteroids that are good" do
    expect(asteroid_collision(asteroids3)).to eq([10])
  end
  it "returns all asteroids that are good" do
    expect(asteroid_collision(asteroids4)).to eq([-2,-1,1,2])
  end
  it "returns all asteroids that are good" do
    expect(asteroid_collision(asteroids5)).to eq([])
  end
  it "returns all asteroids that are good" do
    expect(asteroid_collision(asteroids6)).to eq([5])
  end
  it "returns all asteroids that are good" do
    expect(asteroid_collision(asteroids7)).to eq([])
  end
  it "returns all asteroids that are good" do
    expect(asteroid_collision(asteroids8)).to eq([])
  end
  it "returns all asteroids that are good" do
    expect(asteroid_collision(asteroids9)).to eq([20,10,5,2,11,12,200])
  end
end