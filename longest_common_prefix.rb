#################### LONGEST COMMON PREFIX ####################

# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

# **Example 1:**
# ```
# Input: strs = ["flower","flow","flight"]
# Output: "fl"
# ```

# **Example 2:**
# ```
# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
# ```

# **Constraints:**
# - 0 <= strs.length <= 200
# - 0 <= strs[i].length <= 200
# - strs[i] consists of only lower-case English letters.

#################### SOLUTION ####################
# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return "" if strs.empty?
  return strs[0] if strs.length == 1
  return strs[0] if strs.uniq.length == 1
  strs.sort_by!{|str| str.length}
  return "" if strs[0].length < 1

  
  if strs[0].length == 1
    for i in 1...strs.length
      if strs[0][0] != strs[i][0]
        return ""
      end
    end
    return strs[0]
  end

  ans = ""
  for i in 0...strs[0].length
    ans << strs[0][i]
    for j in 1...strs.length
      if ans.length == 1
        if ans != strs[j][0]
          return ""
        end
      else 
        if ans != strs[j][0..i]
          return ans[0...i]
        end
      end
    end
  end
  ans
end

strs1 = ["flower","flow","flight"]
strs2 = ["dog","racecar","car"]
strs3 = ["dog","racecar",""]
strs4 = ["dog","racecar","a"]
strs5 = ["dog"]
strs6 = ["dog", "dog", "dog", "dog"]
strs7 = ["ab", "a"]
strs8 = ["ab", "aa"]
strs9 = ["aaa","aa","aaa"]

puts "Expected: fl -- Actual: #{longest_common_prefix(strs1)}"
puts "Expected: \"\" -- Actual: #{longest_common_prefix(strs2)}"
puts "Expected: \"\" -- Actual: #{longest_common_prefix(strs3)}"
puts "Expected: \"\" -- Actual: #{longest_common_prefix(strs4)}"
puts "Expected: dog -- Actual: #{longest_common_prefix(strs5)}"
puts "Expected: dog -- Actual: #{longest_common_prefix(strs6)}"
puts "Expected: a -- Actual: #{longest_common_prefix(strs7)}"
puts "Expected: a -- Actual: #{longest_common_prefix(strs8)}"
puts "Expected: aa -- Actual: #{longest_common_prefix(strs9)}"