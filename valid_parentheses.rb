#################### VALID PARENTHESES ####################

# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', 
# determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.

# Example 1:
# Input: s = "()"
# Output: true

# Example 2:
# Input: s = "()[]{}"
# Output: true

# Example 3:
# Input: s = "(]"
# Output: false

# Example 4:
# Input: s = "([)]"
# Output: false

# Example 5:
# Input: s = "{[]}"
# Output: true
 
# Constraints:
# - 1 <= s.length <= 104
# - s consists of parentheses only '()[]{}'.


#################### SOLUTION ####################

# @param {String} s
# @return {Boolean}
# Using stacks and hashes
# TIME: O(n) -- SPACE: O(n)
def is_valid(s)
  # solution must be even length, otherwise there's a missing 
  # closing/opening parenthesis somewhere
  return false if (s.length)%2 == 1
  h = Hash.new{|h,right| h[right] = 0}
  valid_stack = []
  
  for i in 0...s.length
    if s[i] == '('
      valid_stack << s[i]
      h[')'] += 1
    end
    if s[i] == '{'
      valid_stack << s[i]
      h['}'] += 1
    end
    if s[i] == '['
      valid_stack << s[i]
      h[']'] += 1
    end
    if s[i] == ')'
      if h.has_key?(s[i]) && h[s[i]] != 0
        if valid_stack.pop != '('
          return false
        end
        h[s[i]] -= 1
      else
        return false
      end
    end
    if s[i] == '}'
      if h.has_key?(s[i]) && h[s[i]] != 0
        if valid_stack.pop != '{'
          return false
        end
        h[s[i]] -= 1
      else
        return false
      end
    end
    if s[i] == ']'
      if h.has_key?(s[i]) && h[s[i]] != 0
        if valid_stack.pop != '['
          return false
        end
        h[s[i]] -= 1
      else 
        return false
      end
    end
  end
  valid_stack.empty?
end

s1 = "()"
s2 = "()[]{}"
s3 = "(]"
s4 = "([)]"
s5 = "{[()]}"
s6 = "{{"
s7 = "{{(([]))}}"
s8 = "([()})"

puts "Expected: true -- Actual: #{is_valid(s1)}"
puts "Expected: true -- Actual: #{is_valid(s2)}"
puts "Expected: false -- Actual: #{is_valid(s3)}"
puts "Expected: false -- Actual: #{is_valid(s4)}"
puts "Expected: true -- Actual: #{is_valid(s5)}"
puts "Expected: false -- Actual: #{is_valid(s6)}"
puts "Expected: true -- Actual: #{is_valid(s7)}"
puts "Expected: false -- Actual: #{is_valid(s8)}"