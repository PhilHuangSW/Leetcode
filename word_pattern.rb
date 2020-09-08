#################### WORD PATTERN ####################

# Given a pattern and a string str, find if str follows the same pattern.

# Here follow* means a full match, such that there is a bijection 
# between a letter in pattern and a non-empty word in str.

# Example 1:
# Input: pattern = "abba", str = "dog cat cat dog"
# Output: true

# Example 2:
# Input:pattern = "abba", str = "dog cat cat fish"
# Output: false

# Example 3:
# Input: pattern = "aaaa", str = "dog cat cat dog"
# Output: false

# Example 4:
# Input: pattern = "abba", str = "dog dog dog dog"
# Output: false

# Notes:
# - You may assume pattern contains only lowercase letters, and str contains 
# lowercase letters that may be separated by a single space.


#################### SOLUTION ####################
# @param {String} pattern
# @param {String} str
# @return {Boolean}
# Brute Force attempt at the solution, in a somewhat roundabout way
def word_pattern(pattern, str)
  # create a hash to place only the unique chars in the pattern str
  pattern_hash = Hash.new{|pattern_hash,char| pattern_hash[char] = ""}
  pattern_array = pattern.split(//).uniq

  # create an array to place only the unique strings in a str_array
  str_array = str.split(" ").uniq

  # if there are more unique strings than chars in the pattern (or vice versa) 
  # return false since there's no way it can match the pattern
  if str_array.length != pattern_array.length
      return false
  else
    # place each unique string as the value to the unique hash char key
      for i in 0...str_array.length
          pattern_hash[pattern_array[i]] = str_array[i]
      end
  end

  # create another 2 arrays
  # 1) An array of the strings in str
  # 2) A built array of the strings that matches the pattern
  p_array = pattern.split(//)
  str_array = []
  match = str.split(/ /)
  for i in 0...p_array.length
      str_array << pattern_hash[p_array[i]]
  end
  if str_array == match
      return true
  else
      return false
  end    
end

