#################### REMOVE DUPLICATE LETTERS ####################

# Given a string s, remove duplicate letters so that every letter appears once and only once. You must make sure your result is **the smallest in lexicographical order** among all possible results.

# Note: This question is the same as 1081: https://leetcode.com/problems/smallest-subsequence-of-distinct-characters/

# **Example 1:**
# ```
# Input: s = "bcabc"
# Output: "abc"
# ```

# **Example 2:**
# ```
# Input: s = "cbacdcbc"
# Output: "acdb"
# ```

# **Constraints:**
# - 1 <= s.length <= 104
# - s consists of lowercase English letters.

#################### SOLUTION ####################
# @param {String} s
# @return {String}
def remove_duplicate_letters(s)
  return "" if s.length == 0

  count = Hash.new{0}
  s.each_char{|char| count[char] += 1 }
  position = 0
  s.each_char.with_index do |char,index|
    position = index if char < s[position]
    break if (count[char] -= 1) == 0
  end

  s[position] + remove_duplicate_letters(s[position+1..-1].delete(s[position]))
end

s1 = "bcabc"
s2 = "cbacdcbc"
s3 = "cbacbacdpdca"
s4 = "a"

puts "Expected: abc -- Actual: #{remove_duplicate_letters(s1)}"
puts "Expected: acdb -- Actual: #{remove_duplicate_letters(s2)}"
puts "Expected: abcdp -- Actual: #{remove_duplicate_letters(s3)}"
puts "Expected: a -- Actual: #{remove_duplicate_letters(s4)}"