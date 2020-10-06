#################### VALID PALINDROME ####################

# Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

# **Note:** For the purpose of this problem, we define empty string as valid palindrome.

# **Example 1:**
# ```
# Input: "A man, a plan, a canal: Panama"
# Output: true
# ```

# **Example 2:**
# ```
# Input: "race a car"
# Output: false
# ```

# **Constraints:**
# - s consists only of printable ASCII characters.


#################### SOLUTION ####################
# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s = s.gsub(/[^a-zA-Z0-9]/, '')
  s = s.downcase
  return true if s.length == 0 || s.length == 1
  last = s.length-1
  for i in 0...s.length
      return false if s[i] != s[last]
      last -= 1
      return true if last <= i
  end
end

s1 = "A man, a plan, a canal: Panama"
s2 = "race a car"
s3 = "0P"
s4 = "ab_a"
s5 = "lk423kj_jk324kl__'"

puts "Expected: true -- Actual: #{is_palindrome(s1)}"
puts "Expected: false -- Actual: #{is_palindrome(s2)}"
puts "Expected: false -- Actual: #{is_palindrome(s3)}"
puts "Expected: true -- Actual: #{is_palindrome(s4)}"
puts "Expected: true -- Actual: #{is_palindrome(s5)}"