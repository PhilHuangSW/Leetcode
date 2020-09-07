#################### LONGEST SUBSTRING WITHOUT REPEATING CHARACTERS ####################

# Given a string s, find the length of the longest substring without repeating characters.

# Example 1:
# Input: s = "abcabcbb"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.

# Example 2:
# Input: s = "bbbbb"
# Output: 1
# Explanation: The answer is "b", with the length of 1.

# Example 3:
# Input: s = "pwwkew"
# Output: 3
# Explanation: The answer is "wke", with the length of 3.
# Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

# Example 4:
# Input: s = ""
# Output: 0

# Constraints:
# - 0 <= s.length <= 5 * 104
# - s consists of English letters, digits, symbols and spaces.


#################### SOLUTION ####################
# @param {String} s
# @return {Integer}

# Brute Force attempt by placing every substring starting from
# each character in the array and stopping when it matches a characters 
# already seen

# returns the max of the array, i.e. returns the longest substring
def length_of_longest_substring(s)
    current_count = 0
    longest = []
    ans = 0
    h = Hash.new{|h,char| h[char] = 0}
    for i in 0...s.length
        for j in i...s.length
            if !h.has_key?(s[j])
                h[s[j]] += 1
                current_count += 1
            else
                longest << current_count
                current_count = 0
                h.clear()
                break
            end
        end
    end
    longest << current_count
    ans = longest.max
    ans
end