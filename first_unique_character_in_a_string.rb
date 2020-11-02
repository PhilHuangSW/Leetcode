#################### FIRST UNIQUE CHARACTER IN A STRING ####################

# Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.

# **Examples:**
# ```
# s = "leetcode"
# return 0.

# s = "loveleetcode"
# return 2.
# ```

# **Note:** You may assume the string contains only lowercase English letters.

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  return -1 if s.empty?
  return 0 if s.length == 1
  h = Hash.new{|h,k| h[k] = 0}
  for i in 0...s.length
    h[s[i]] += 1 
  end
  uniq_char = ""
  h.each do |char, occurrence|
    if occurrence == 1
      uniq_char = char
      break
    end
  end
  return -1 if uniq_char == ""
  for i in 0...s.length
    if s[i] == uniq_char
      return i
    end
  end
end

s1 = "leetcode"
s2 = "loveleetcode"
s3 = ""
s4 = "a"
s5 = "aa"

describe "First Unique Character" do
  it "should return the index of the first unique character" do
    expect(first_uniq_char(s1)).to eq(0)
  end
  it "should return the index of the first unique character" do
    expect(first_uniq_char(s2)).to eq(2)
  end
  it "should return the index of the first unique character" do
    expect(first_uniq_char(s3)).to eq(-1)
  end
  it "should return the index of the first unique character" do
    expect(first_uniq_char(s4)).to eq(0)
  end
  it "should return the index of the first unique character" do
    expect(first_uniq_char(s5)).to eq(-1)
  end
end