#################### LENGTH OF LAST WORD ####################

# Given a string s consists of upper/lower-case alphabets and 
# empty space characters ' ', return the length of last word 
# (last word means the last appearing word if we loop from left 
# to right) in the string.

# If the last word does not exist, return 0.

# Note: A word is defined as a maximal substring consisting of 
# non-space characters only.

# Example:
# Input: "Hello World"
# Output: 5


#################### SOLUTION ####################
# @param {String} s
# @return {Integer}
def length_of_last_word(s)
  return 0 if s == ""
  # creates an array of just "words"
  s = s.split(/ /)
  return 0 if s.empty?

  # this can be reduced simply to s[s.length-1].length
  last = (s.length-1)
  ans = s[last].length
end

s1 = "Hello World"
s2 = " "
s3 = ""
s4 = "The fox in the forest jumped over a brick and a river"
s5 = "My name is Phil "

puts "Expected: 5 -- Actual: #{length_of_last_word(s1)}"
puts "Expected: 0 -- Actual: #{length_of_last_word(s2)}"
puts "Expected: 0 -- Actual: #{length_of_last_word(s3)}"
puts "Expected: 5 -- Actual: #{length_of_last_word(s4)}"
puts "Expected: 4 -- Actual: #{length_of_last_word(s5)}"


# without the use of built in .split function in Ruby
# @param {String} s
# @return {Integer}
# def length_of_last_word(s)
#   return 0 if s == ""
#   temp = ""
#   s_arr = []
#   for i in 0...s.length
#       if s[i] != " "
#           temp << s[i]
#       elsif s[i] != "" && temp != ""
#           s_arr << temp.dup
#           temp = ""
#       end
#   end
#   if temp != ""
#       s_arr << temp
#   end
#   return 0 if s_arr.empty?
#   s_arr[s_arr.length-1].length
# end