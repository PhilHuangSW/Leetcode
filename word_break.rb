#################### WORD BREAK ####################

# Given a non-empty string s and a dictionary wordDict containing 
# a list of non-empty words, determine if s can be segmented into 
# a space-separated sequence of one or more dictionary words.

# Note:
# - The same word in the dictionary may be reused multiple times in the segmentation.
# - You may assume the dictionary does not contain duplicate words.

# Example 1:
# Input: s = "leetcode", wordDict = ["leet", "code"]
# Output: true
# Explanation: Return true because "leetcode" can be segmented as "leet code".

# Example 2:
# Input: s = "applepenapple", wordDict = ["apple", "pen"]
# Output: true
# Explanation: Return true because "applepenapple" can be segmented as "apple pen apple".
#              Note that you are allowed to reuse a dictionary word.

# Example 3:
# Input: s = "catsandog", wordDict = ["cats", "dog", "sand", "and", "cat"]
# Output: false


#################### SOLUTION ####################
# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
def word_break(s, dict)
  word_break_with_memo(s, dict, {})
end

def word_break_with_memo(s, dict, memo)
  return true if s == ''
  return false if memo[s] == false
  dict.each do |word|
    next unless word == s[0...word.size]
    if word_break_with_memo(s[word.size..-1], dict, memo)
      return true
    else
      memo[s[word.size..-1]] = false
    end
  end
  false
end

s1 = "leetcode"
wordDict1 = ["leet","code"]
s2 = "applepenapple"
wordDict2 = ["apple","pen"]
s3 = "catsandog"
wordDict3 = ["cats","dog","sand","and","cat"]
s4 = "cars"
wordDict4 = ["car","ca","rs"]
s5 = "leetleetleetleetsletleets"
wordDict5 = ["leet","leets"]

puts "Expected: true -- Actual: #{word_break(s1, wordDict1)}"
puts "Expected: true -- Actual: #{word_break(s2, wordDict2)}"
puts "Expected: false -- Actual: #{word_break(s3, wordDict3)}"
puts "Expected: true -- Actual: #{word_break(s4, wordDict4)}"
puts "Expected: false -- Actual: #{word_break(s5, wordDict5)}"
