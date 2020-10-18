#################### SHUFFLE STRING ####################

# Given a string s and an integer array indices of the **same length**.

# The string s will be shuffled such that the character at the ith position moves to indices[i] in the shuffled string.

# Return the *shuffled string*.

# **Example 1:**
# ```
# Input: s = "codeleet", indices = [4,5,6,7,0,2,1,3]
# Output: "leetcode"
# Explanation: As shown, "codeleet" becomes "leetcode" after shuffling.
# ```

# **Example 2:**
# ```
# Input: s = "abc", indices = [0,1,2]
# Output: "abc"
# Explanation: After shuffling, each character remains in its position.
# ```

# **Example 3:**
# ```
# Input: s = "aiohn", indices = [3,1,4,2,0]
# Output: "nihao"
# ```

# **Example 4:**
# ```
# Input: s = "aaiougrt", indices = [4,0,2,6,7,3,1,5]
# Output: "arigatou"
# ```

# **Example 5:**
# ```
# Input: s = "art", indices = [1,0,2]
# Output: "rat"
# ```

# **Constraints:**
# - s.length == indices.length == n
# - 1 <= n <= 100
# - s contains only lower-case English letters.
# - 0 <= indices[i] < n
# - All values of indices are unique (i.e. indices is a permutation of the integers from 0 to n - 1).

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {String} s
# @param {Integer[]} indices
# @return {String}
########## uses an array to store the letters, then concatenates the array into a string
# def restore_string(s, indices)
#   shuffled = Array.new(indices.length)
#   for i in 0...indices.length
#     shuffled[indices[i]] = s[i]
#   end
#   shuffled.join.to_s
# end

def restore_string(s, indices)
  shuffled = " "*s.length
  for i in 0...indices.length
    shuffled[indices[i]] = s[i]
  end
  shuffled
end

s1 = "codeleet"
indices1 = [4,5,6,7,0,2,1,3]
s2 = "abc"
indices2 = [0,1,2]
s3 = "aiohn"
indices3 = [3,1,4,2,0]
s4 = "aaiougrt"
indices4 = [4,0,2,6,7,3,1,5]
s5 = "art"
indices5 = [1,0,2]

describe "restore string" do
  it "returns the array" do
    expect(restore_string(s1, indices1)).to eq("leetcode")
  end
  it "returns the array" do
    expect(restore_string(s2, indices2)).to eq("abc")
  end
  it "returns the array" do
    expect(restore_string(s3, indices3)).to eq("nihao")
  end
  it "returns the array" do
    expect(restore_string(s4, indices4)).to eq("arigatou")
  end
  it "returns the array" do
    expect(restore_string(s5, indices5)).to eq("rat")
  end
end