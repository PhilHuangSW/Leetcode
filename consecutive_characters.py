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
class Solution:
  def maxPower(self, s: str) -> int:
    if len(s) == 1:
      return 1
    longest = 1
    streak = 1
    current_char = s[0]
    for i in range(1, len(s)):
      if s[i] == current_char:
        streak += 1
      else:
        if longest < streak:
          longest = streak
        streak = 1
        current_char = s[i]
    if longest < streak:
      longest = streak
    return longest

s1 = "leetcode"
s2 = "abbcccddddeeeeedcba"
s3 = "triplepillooooow"
s4 = "hooraaaaaaaaaaay"
s5 = "tourist"
s6 = "q"
s7 = "cc"
s8 = "ppqlqllelqppppp"

instance = Solution()
print(f'Expected: 2 -- Actual: {instance.maxPower(s1)}')
print(f'Expected: 5 -- Actual: {instance.maxPower(s2)}')
print(f'Expected: 5 -- Actual: {instance.maxPower(s3)}')
print(f'Expected: 11 -- Actual: {instance.maxPower(s4)}')
print(f'Expected: 1 -- Actual: {instance.maxPower(s5)}')
print(f'Expected: 1 -- Actual: {instance.maxPower(s6)}')
print(f'Expected: 2 -- Actual: {instance.maxPower(s7)}')
print(f'Expected: 5 -- Actual: {instance.maxPower(s8)}')