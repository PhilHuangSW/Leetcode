#################### REVERSE STRING ####################

# Write a function that reverses a string. The input string is given as an array of characters char[].

# Do not allocate extra space for another array, you must do this by **modifying the input array in-place** with O(1) extra memory.

# You may assume all the characters consist of printable ascii characters.

# **Example 1:**
# ```
# Input: ["h","e","l","l","o"]
# Output: ["o","l","l","e","h"]
# ```

# **Example 2:**
# ```
# Input: ["H","a","n","n","a","h"]
# Output: ["h","a","n","n","a","H"]
# ```

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  return [] if s.length == 0
  return s if s.length == 1
  first = 0
  last = s.length-1
  temp = s[first]
  for i in 0...(s.length/2)
    s[first] = s[last]
    s[last] = temp
    first += 1
    last -= 1
    temp = s[first]
  end
  s
end

s1 = ["h","e","l","l","o"]
s2 = ["h"]
s3 = []
s4 = ["c","a","t","d","o","g"]

describe "Reverse String" do
  it "returns the reversed string" do
    expect(reverse_string(s1)).to eq(["o","l","l","e","h"])
  end
  it "returns the reversed string" do
    expect(reverse_string(s2)).to eq(["h"])
  end
  it "returns the reversed string" do
    expect(reverse_string(s3)).to eq([])
  end
  it "returns the reversed string" do
    expect(reverse_string(s4)).to eq(["g","o","d","t","a","c"])
  end
end