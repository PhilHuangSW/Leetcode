#################### SPLIT A STRING IN BALANCED STRINGS ####################

# Balanced strings are those who have equal quantity of 'L' and 'R' characters.

# Given a balanced string s split it in the maximum amount of balanced strings.

# Return the maximum amount of splitted balanced strings.

# Example 1:
# Input: s = "RLRRLLRLRL"
# Output: 4
# Explanation: s can be split into "RL", "RRLL", "RL", "RL", each substring contains 
# same number of 'L' and 'R'.

# Example 2:
# Input: s = "RLLLLRRRLR"
# Output: 3
# Explanation: s can be split into "RL", "LLLRRR", "LR", each substring contains same 
# number of 'L' and 'R'.

# Example 3:
# Input: s = "LLLLRRRR"
# Output: 1
# Explanation: s can be split into "LLLLRRRR".

# Example 4:
# Input: s = "RLRRRLLRLL"
# Output: 2
# Explanation: s can be split into "RL", "RRRLLRLL", since each substring contains an 
# equal number of 'L' and 'R'

# Constraints:
# - 1 <= s.length <= 1000
# - s[i] = 'L' or 'R'


#################### SOLUTION ####################
# @param {String} s
# @return {Integer}
def balanced_string_split(s)
  ans = 0
  return ans if s == ""
  
  s_arr = s.split(//)
  r_count = 0
  l_count = 0
  
  for i in 0...s_arr.length
      # starts the count for R or L
      if r_count == 0 && l_count == 0
          if s_arr[i] == "R"
              r_count = 1
              l_count = 0
              next
          else
              l_count = 1
              r_count = 0
              next
          end
      end
      
      # increments R or L counts if they're consecutive
      if s_arr[i] == "R" && r_count != 0 
          r_count += 1
          next
      end
      if s_arr[i] == "L" && l_count != 0
          l_count += 1
          next
      end
      
      # we decrement if we see an opposite letter (i.e. if we see L when r_count != 0)
      # if both counts are 0, we have a balanced string so we increment ans
      if s_arr[i] == "R" && l_count != 0
          l_count -= 1
          if l_count == 0
              ans += 1
          end
      end
      if s_arr[i] == "L" && r_count != 0
          r_count -= 1
          if r_count == 0
              ans += 1
          end
      end
  end
  ans
end

s1 = "RLRRLLRLRL"
s2 = "RLLLLRRRLR"
s3 = "LLLLRRRR"
s4 = "RLRRRLLRLL"
s5 = ""

puts "Expected: 4 -- Actual: #{balanced_string_split(s1)}"
puts "Expected: 3 -- Actual: #{balanced_string_split(s2)}"
puts "Expected: 1 -- Actual: #{balanced_string_split(s3)}"
puts "Expected: 2 -- Actual: #{balanced_string_split(s4)}"
puts "Expected: 0 -- Actual: #{balanced_string_split(s5)}"