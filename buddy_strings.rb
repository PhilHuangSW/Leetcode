#################### BUDDY STRINGS ####################

# Given two strings A and B of lowercase letters, return true *if you can swap two letters in* A so the result is equal to B, otherwise, return false.

# Swapping letters is defined as taking two indices i and j (0-indexed) such that i != j and swapping the characters at A[i] and A[j]. For example, swapping at indices 0 and 2 in "abcd" results in "cbad".

# **Example 1:**
# ```
# Input: A = "ab", B = "ba"
# Output: true
# Explanation: You can swap A[0] = 'a' and A[1] = 'b' to get "ba", which is equal to B.
# ```

# **Example 2:**
# ```
# Input: A = "ab", B = "ab"
# Output: false
# Explanation: The only letters you can swap are A[0] = 'a' and A[1] = 'b', which results in "ba" != B.
# ```

# **Example 3:**
# ```
# Input: A = "aa", B = "aa"
# Output: true
# Explanation: You can swap A[0] = 'a' and A[1] = 'a' to get "aa", which is equal to B.
# ```

# **Example 4:**
# ```
# Input: A = "aaaaaaabc", B = "aaaaaaacb"
# Output: true
# ```

# **Example 5:**
# ```
# Input: A = "", B = "aa"
# Output: false
# ```

# **Constraints:**
# - 0 <= A.length <= 20000
# - 0 <= B.length <= 20000
# - A and B consist of lowercase letters.

#################### SOLUTION ####################
# @param {String} a
# @param {String} b
# @return {Boolean}
# TIME: O(n) -- SPACE: O(n)
def buddy_strings(a, b)
  if a == b
    h = Hash.new{|h,k| h[k] = false}
    a.each_char do |char|
      if h.has_key?(char)
        return true
      end
      h[char] = true
    end
    return false
  end
  return false if a.length != b.length
  count = 0
  index = []
  for i in 0...a.length
    if a[i] != b[i]
      count += 1
      index << i
    end
  end
  if count != 2
    return false
  else
    temp = a[index[0]]
    a[index[0]] = a[index[1]]
    a[index[1]] = temp
    a == b ? true : false
  end
end

a1 = "ab"
b1 = "ba"
a2 = "ab"
b2 = "ab"
a3 = "aa"
b3 = "aa"
a4 = "aaaaaaabc"
b4 = "aaaaaaacb"
a5 = ""
b5 = "aa"
a6 = "abcdefghijklm"
b6 = "abcdefghijllm"
a7 = "abcdefghijklm"
b7 = "abcdefghijklm"
a8 = "aacdefghijklm"
b8 = "aacdefghijklm"
a9 = "abcaa"
b9 = "abcbb"

puts "Expected: true -- Actual: #{buddy_strings(a1, b1)}"
puts "Expected: false -- Actual: #{buddy_strings(a2, b2)}"
puts "Expected: true -- Actual: #{buddy_strings(a3, b3)}"
puts "Expected: true -- Actual: #{buddy_strings(a4, b4)}"
puts "Expected: false -- Actual: #{buddy_strings(a5, b5)}"
puts "Expected: false -- Actual: #{buddy_strings(a6, b6)}"
puts "Expected: false -- Actual: #{buddy_strings(a7, b7)}"
puts "Expected: true -- Actual: #{buddy_strings(a8, b8)}"
puts "Expected: false -- Actual: #{buddy_strings(a9, b9)}"