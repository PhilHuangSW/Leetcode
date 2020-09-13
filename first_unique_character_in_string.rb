#################### FIRST UNIQUE CHARACTER IN A STRING ####################

# Given a string, find the first non-repeating character in it and return its 
# index. If it doesn't exist, return -1.

# Example 1:
# s = "leetcode"
# return 0.

# Example 2:
# s = "loveleetcode"
# return 2.

# Note: You may assume the string contains only lowercase English letters.


#################### SOLUTION ####################
# @param {String} s
# @return {Integer}
# first attempt
# def first_uniq_char(s)
#   return -1 if s == ""
#   return 0 if s.length == 1
  
#   # Create a hash containing all chars and their count in s
#   h = Hash.new{|h,char| h[char] = 0}
#   for i in 0...s.length
#       h[s[i]] += 1
#   end
  
#   # loop through the hash and find the char(s) that are unique
#   char = ""
#   uniq_chars = s.split(//).uniq
#   for i in 0...uniq_chars.length
#       if h[uniq_chars[i]] == 1
#           char << uniq_chars[i]
#           break
#       end
#   end

#   # if there is no unique char, return -1, otherwise loop through s and 
#   # find and return the first occurrence of the char
#   if char == "" 
#       return -1
#   else
#       for i in 0...s.length
#           if char == s[i]
#               return i
#           end
#       end
#   end
# end

# @param {String} s
# @return {Integer}
# second attempt
def first_uniq_char(s)
  return -1 if s == ""
  return 0 if s.length == 1
  
  # Create a hash containing all chars and their count in s
  h = Hash.new{|h,char| h[char] = 0}
  for i in 0...s.length
      h[s[i]] += 1
  end

  for i in 0...s.length
    if h[s[i]] == 1
      return i
    end
  end
  return -1
end

s1 = "leetcode"
s2 = "loveleetcode"
s3 = "dddccbba"
s4 = ""
s5 = "lip"
s6 = "phillihp"

puts "Expected: 0 -- Actual: #{first_uniq_char(s1)}"
puts "Expected: 2 -- Actual: #{first_uniq_char(s2)}"
puts "Expected: 7 -- Actual: #{first_uniq_char(s3)}"
puts "Expected: -1 -- Actual: #{first_uniq_char(s4)}"
puts "Expected: 0 -- Actual: #{first_uniq_char(s5)}"
puts "Expected: -1 -- Actual: #{first_uniq_char(s6)}"
