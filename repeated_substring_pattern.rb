#################### REPEATED SUBSTRING PATTERN ####################

# Given a non-empty string check if it can be constructed by taking a 
# substring of it and appending multiple copies of the substring together. 
# You may assume the given string consists of lowercase English letters 
# only and its length will not exceed 10000.

# Example 1:
# Input: "abab"
# Output: True
# Explanation: It's the substring "ab" twice.

# Example 2:
# Input: "aba"
# Output: False

# Example 3:
# Input: "abcabcabcabc"
# Output: True
# Explanation: It's the substring "abc" four times. (And the substring "abcabc" twice.)


#################### SOLUTION ####################
# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
    return false if s.empty?
    return false if s.size == 1
    
    (0...s.size/2).each do |i|
        # builds a substring up to half of string, so if 
        # str is "abcabcabc" it will build "a" then "ab"
        # then "abc" then "abca" (assuming it hasn't returned true yet)
        temp = s[0..i]
        if (s.size%temp.size) == 0
            if temp * (s.size/temp.size) == s
                return true
            end
        end
    end
    false
end

s1 = "abc"
s2 = "abab"
s3 = "philipphilip"
s4 = "aba"
s5 = "abcabcabcabc"

puts "Expected: false -- Output: #{repeated_substring_pattern(s1)}"
puts "Expected: true -- Output: #{repeated_substring_pattern(s2)}"
puts "Expected: true -- Output: #{repeated_substring_pattern(s3)}"
puts "Expected: false -- Output: #{repeated_substring_pattern(s4)}"
puts "Expected: true -- Output: #{repeated_substring_pattern(s5)}"


