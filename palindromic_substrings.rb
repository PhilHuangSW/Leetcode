#################### PALINDROMIC SUBSTRINGS ####################

# Given a string, your task is to count how many palindromic substrings in this string.

# The substrings with different start indexes or end indexes are counted as different substrings even they consist of same characters.

# **Example 1:**
# ```
# Input: "abc"
# Output: 3
# Explanation: Three palindromic strings: "a", "b", "c".
# ```

# **Example 2:**
# ```
# Input: "aaa"
# Output: 6
# Explanation: Six palindromic strings: "a", "a", "a", "aa", "aa", "aaa".
# ```

# **Note:**
# - The input string length won't exceed 1000.

#################### SOLUTION ####################
# @param {String} s
# @return {Integer}
def count_substrings(s)
  return 0 if s.length == 0
  return 1 if s.length == 1
  str = ""
  ans = 0
  left = 0
  for i in 0...s.length
    p str << s[i]
    while is_palindrome(str) == false && str.length > 1
      str[0] = ''
      left += 1
    end
    p ans += i - left + 1
  end
  ans
end
  
def is_palindrome(str)
  return true if str.length == 0
  return true if str.length == 1
  last = str.length - 1
  for i in 0...str.length
    return false if str[i] != str[last]
    last -= 1
    return true if last <= i
  end
end

s1 = "abc"
s2 = "aaa"
s3 = "ab"
s4 = "aba"
s5 = "abaa"
s6 = "abaaa"

puts "Expected: 3 -- Actual: #{count_substrings(s1)}"
puts "Expected: 6 -- Actual: #{count_substrings(s2)}"
puts "Expected: 2 -- Actual: #{count_substrings(s3)}"
puts "Expected: 4 -- Actual: #{count_substrings(s4)}"
puts "Expected: 6 -- Actual: #{count_substrings(s5)}"
puts "Expected: 9 -- Actual: #{count_substrings(s6)}"