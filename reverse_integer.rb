#################### REVERSE INTEGER ####################

# Given a 32-bit signed integer, reverse digits of an integer.

# **Note:**
# Assume we are dealing with an environment that could only store integers within the 32-bit signed integer range: [−2^31,  2^31 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.

# **Example 1:**
# ```
# Input: x = 123
# Output: 321
# ```

# **Example 2:**
# ```
# Input: x = -123
# Output: -321
# ```

# **Example 3:**
# ```
# Input: x = 120
# Output: 21
# ```

# **Example 4:**
# ```
# Input: x = 0
# Output: 0
# ```

# **Constraints:**
# - -2^31 <= x <= 2^31 - 1

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {Integer} x
# @return {Integer}
def reverse(x)
  x_arr = x.to_s.split('')
  ans = []
  if x_arr[0] == "-"
    ans << "-"
    x_arr.shift
  end
  x_arr.reverse!
  for i in 0...x_arr.length
    ans << x_arr[i]
  end
  if ans.join.to_i > 2147483647 || ans.join.to_i < -2147483648
    return 0
  else
    return ans.join.to_i
  end
end

x1 = 123
x2 = -123
x3 = 120
x4 = 654005300000000000
x5 = 8463847412
x6 = 2169848943210464
x7 = -8463847412
x8 = 0

describe "reverse integer" do
  it "should return the reverse integer of the given integer" do
    expect(reverse(x1)).to eq(321)
  end
  it "should return the reverse integer of the given integer" do
    expect(reverse(x2)).to eq(-321)
  end
  it "should return the reverse integer of the given integer" do
    expect(reverse(x3)).to eq(21)
  end
  it "should return the reverse integer of the given integer" do
    expect(reverse(x4)).to eq(3500456)
  end
  it "should return the reverse integer of the given integer" do
    expect(reverse(x5)).to eq(0)
  end
  it "should return the reverse integer of the given integer" do
    expect(reverse(x6)).to eq(0)
  end
  it "should return the reverse integer of the given integer" do
    expect(reverse(x7)).to eq(-2147483648)
  end
  it "should return the reverse integer of the given integer" do
    expect(reverse(x8)).to eq(0)
  end
end