#################### DECODE STRING ####################

# Given an encoded string, return its decoded string.

# The encoding rule is: k[encoded_string], where the *encoded_string* inside the square brackets is being repeated exactly k times. Note that k is guaranteed to be a positive integer.

# You may assume that the input string is always valid; No extra white spaces, square brackets are well-formed, etc.

# Furthermore, you may assume that the original data does not contain any digits and that digits are only for those repeat numbers, k. For example, there won't be input like 3a or 2[4].

# **Example 1:**
# ```
# Input: s = "3[a]2[bc]"
# Output: "aaabcbc"
# ```

# **Example 2:**
# ```
# Input: s = "3[a2[c]]"
# Output: "accaccacc"
# ```

# **Example 3:**
# ```
# Input: s = "2[abc]3[cd]ef"
# Output: "abcabccdcdcdef"
# ```

# **Example 4:**
# ```
# Input: s = "abc3[cd]xyz"
# Output: "abccdcdcdxyz"
# ```

# **Constraints:**
# - 1 <= s.length <= 30
# - s consists of lowercase English letters, digits, and square brackets '[]'.
# - s is guaranteed to be a valid input.
# - All the integers in s are in the range [1, 300].

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {String} s
# @return {String}
def decode_string(s)
  return s if s.length == 1
  ans = ""
  idx = 0
  current = 0
  while (idx < s.length)
    if s[idx].match(/[a-z]/)
      ans << s[idx]
    else
      temp = ""
      temp_num = s[idx]
      while (s[idx+1] != "[")
        temp_num << s[idx+1]
        idx += 1
      end
      num = temp_num.to_i
      temp, idx = decode(s, idx+2, temp, num)
      ans << temp
    end
    idx += 1
  end
  ans
end
  
def decode(s, idx, temp, num)
  while(s[idx] != "]")
    if s[idx].match(/[a-z]/)
      temp << s[idx]
    else
      temp1 = ""
      temp_num = s[idx]
      while (s[idx+1] != "[")
        temp_num << s[idx+1]
        idx += 1
      end
      temp1, idx = decode(s, idx+2, temp1, temp_num.to_i)
      temp << temp1
    end
    idx += 1
  end
  temp = temp * num
  return temp, idx
end

s1 = "3[a]2[bc]"
s2 = "3[a2[c]]"
s3 = "2[abc]3[cd]ef"
s4 = "abc3[cd]xyz"
s5 = "12[a10[b]]"
s6 = "a"
s7 = "2[a]"

describe "Decode String" do
  it "returns the decoded encoded string" do
    expect(decode_string(s1)).to eq("aaabcbc")
  end
  it "returns the decoded encoded string" do
    expect(decode_string(s2)).to eq("accaccacc")
  end
  it "returns the decoded encoded string" do
    expect(decode_string(s3)).to eq("abcabccdcdcdef")
  end
  it "returns the decoded encoded string" do
    expect(decode_string(s4)).to eq("abccdcdcdxyz")
  end
  it "returns the decoded encoded string" do
    expect(decode_string(s5)).to eq("abbbbbbbbbbabbbbbbbbbbabbbbbbbbbbabbbbbbbbbbabbbbbbbbbbabbbbbbbbbbabbbbbbbbbbabbbbbbbbbbabbbbbbbbbbabbbbbbbbbbabbbbbbbbbbabbbbbbbbbb")
  end
  it "returns the decoded encoded string" do
    expect(decode_string(s6)).to eq("a")
  end
  it "returns the decoded encoded string" do
    expect(decode_string(s7)).to eq("aa")
  end
end