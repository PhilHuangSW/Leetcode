#################### CONSECUTIVE CHARACTERS ####################

# Given a string s, the power of the string is the maximum length of a non-empty substring that contains only one unique character.

# Return *the power* of the string.

# **Example 1:**
# ```
# Input: s = "leetcode"
# Output: 2
# Explanation: The substring "ee" is of length 2 with the character 'e' only.
# ```

# **Example 2:**
# ```
# Input: s = "abbcccddddeeeeedcba"
# Output: 5
# Explanation: The substring "eeeee" is of length 5 with the character 'e' only.
# ```

# **Example 3:**
# ```
# Input: s = "triplepillooooow"
# Output: 5
# ```

# **Example 4:**
# ```
# Input: s = "hooraaaaaaaaaaay"
# Output: 11
# ```

# **Example 5:**
# ```
# Input: s = "tourist"
# Output: 1
# ```

# **Constraints:**
# - 1 <= s.length <= 500
# - s contains only lowercase English letters.

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {String} s
# @return {Integer}
def max_power(s)
  return 1 if s.length == 1
  longest = 1
  streak = 1
  current_char = s[0]
  for i in 1...s.length
    if s[i] == current_char
      streak += 1
    else
      if longest < streak
        longest = streak
      end
      streak = 1
      current_char = s[i]
    end
  end
  if longest < streak
    longest = streak
  end
  longest
end

s1 = "leetcode"
s2 = "abbcccddddeeeeedcba"
s3 = "triplepillooooow"
s4 = "hooraaaaaaaaaaay"
s5 = "tourist"
s6 = "q"
s7 = "cc"
s8 = "ppqlqllelqppppp"

describe "Consecutive Characters" do
  it "returns the power of the most consecutive characters in a string" do
    expect(max_power(s1)).to eq(2)
  end
  it "returns the power of the most consecutive characters in a string" do
    expect(max_power(s2)).to eq(5)
  end
  it "returns the power of the most consecutive characters in a string" do
    expect(max_power(s3)).to eq(5)
  end
  it "returns the power of the most consecutive characters in a string" do
    expect(max_power(s4)).to eq(11)
  end
  it "returns the power of the most consecutive characters in a string" do
    expect(max_power(s5)).to eq(1)
  end
  it "returns the power of the most consecutive characters in a string" do
    expect(max_power(s6)).to eq(1)
  end
  it "returns the power of the most consecutive characters in a string" do
    expect(max_power(s7)).to eq(2)
  end
  it "returns the power of the most consecutive characters in a string" do
    expect(max_power(s8)).to eq(5)
  end
end