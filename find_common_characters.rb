#################### FIND COMMON CHARACTERS ####################

# Given an array A of strings made only from lowercase letters, 
# return a list of all characters that show up in all strings 
# within the list (including duplicates).  For example, if a character 
# occurs 3 times in all strings but not 4 times, you need to include 
# that character three times in the final answer.

# You may return the answer in any order.

# Example 1:
# Input: ["bella","label","roller"]
# Output: ["e","l","l"]

# Example 2:
# Input: ["cool","lock","cook"]
# Output: ["c","o"]

# Note:
# - 1 <= A.length <= 100
# - 1 <= A[i].length <= 100
# - A[i][j] is a lowercase letter


#################### SOLUTION ####################
# @param {String[]} a
# @return {String[]}
def common_chars(a)
    h = Hash.new{|h,k| h[k] = 0}
    first_word = a.shift
    first_word.each_char {|char| h[char] += 1}
    
    a.each.with_index do |word, index|
        temp_h = Hash.new(0)
        word.each_char do |char|
            if h[char] != 0 && h[char] > temp_h[char]
                temp_h[char] += 1
            end
        end
        h = temp_h
    end
    
    str = ""
    h.each do |key, val|
        str += key * val
    end
    
    str.split(//)
end