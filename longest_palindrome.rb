#################### LONGEST PALINDROME ####################

# Given a string s which consists of lowercase or uppercase letters, return *the length of the* **longest palindrome** that can be built with those letters.

# Letters are **case sensitive**, for example, "Aa" is not considered a palindrome here.

# **Example 1:**
# ```
# Input: s = "abccccdd"
# Output: 7
# Explanation:
# One longest palindrome that can be built is "dccaccd", whose length is 7.
# ```

# **Example 2:**
# ```
# Input: s = "a"
# Output: 1
# ```

# **Example 3:**
# ```
# Input: s = "bb"
# Output: 2
# ```

# **Constraints:**
# - 1 <= s.length <= 2000
# - s consits of lower-case and/or upper-case English letters only.


#################### SOLUTION ####################
# @param {String} s
# @return {Integer}
# TIME: O(n) -- SPACE: O(n)
def longest_palindrome(s)
  h = Hash.new{|h,char| h[char] = 0}
  for i in 0...s.length
      h[s[i]] += 1
  end
  have_one = false
  ans = 0
  h.values.each do |value|
      if value == 1 && have_one == false
          ans += 1
          have_one = true
      elsif value > 1 && value%2 == 1
          if have_one == false
              ans += value
              have_one = true
          else
              ans += value-1
          end
      elsif value > 1 && value%2 == 0
          ans += value
      end
  end
  ans
end

s1 = "abccccdd"
s2 = "a"
s3 = "bb"
s4 = "ccc"
s5 = "asdjflkhASHJLKHSDlkajsdkalJADKLjalsdjakslldksjflasfj"

puts "Expected: 7 -- Actual: #{longest_palindrome(s1)}"
puts "Expected: 1 -- Actual: #{longest_palindrome(s2)}"
puts "Expected: 2 -- Actual: #{longest_palindrome(s3)}"
puts "Expected: 3 -- Actual: #{longest_palindrome(s4)}"
puts "Expected: 49 -- Actual: #{longest_palindrome(s5)}"