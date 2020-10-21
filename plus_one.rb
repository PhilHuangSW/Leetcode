#################### PLUS ONE ####################

# Given a **non-empty** array of digits representing a non-negative integer, increment one to the integer.

# The digits are stored such that the most significant digit is at the head of the list, and each element in the array contains a single digit.

# You may assume the integer does not contain any leading zero, except the number 0 itself.

# **Example 1:**
# ```
# Input: digits = [1,2,3]
# Output: [1,2,4]
# Explanation: The array represents the integer 123.
# ```

# **Example 2:**
# ```
# Input: digits = [4,3,2,1]
# Output: [4,3,2,2]
# Explanation: The array represents the integer 4321.
# ```

# **Example 3:**
# ```
# Input: digits = [0]
# Output: [1]
# ```

# **Constraints:**
# - 1 <= digits.length <= 100
# - 0 <= digits[i] <= 9

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {Integer[]} digits
# @return {Integer[]}
# TIME: O(n) -- SPACE: O(1)
def plus_one(digits)
  idx = digits.length-1
  if digits.length == 1 && digits[0] == 9
    digits[0] = 0
    digits.insert(0, 1)
    return digits
  end
  if digits[idx] != 9
    digits[idx] += 1
    return digits
  else
    while idx != -1
      if digits[idx] == 9
        digits[idx] = 0
        idx -= 1
        if idx == -1
          digits.insert(0,1)
          return digits
        end
      else
        digits[idx] += 1
        return digits
      end
    end
  end
end

digits1 = [1]
digits2 = [1,9,9]
digits3 = [1,2,6,8]
digits4 = [9]
digits5 = [9,9,9,9]
digits6 = [2,4,6,8]

describe "plus one" do
  it "should add one to the array integer" do
    expect(plus_one(digits1)).to eq([2])
  end
  it "should add one to the array integer" do
    expect(plus_one(digits2)).to eq([2,0,0])
  end
  it "should add one to the array integer" do
    expect(plus_one(digits3)).to eq([1,2,6,9])
  end
  it "should add one to the array integer" do
    expect(plus_one(digits4)).to eq([1,0])
  end
  it "should add one to the array integer" do
    expect(plus_one(digits5)).to eq([1,0,0,0,0])
  end
  it "should add one to the array integer" do
    expect(plus_one(digits6)).to eq([2,4,6,9])
  end
end