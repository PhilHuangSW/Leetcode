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
    # grabs the first str in array, then splits each char into a hash map
    # where hash[char] = occurrences (i.e. number of times seen in the string)
    first_word = a.shift
    first_word.each_char {|char| h[char] += 1}
    
    # create a temp hash that will compare its values to that of our first
    # string. If we match with a char, increment that char if and only if
    # the first string also has that many occurrences
    # i.e. bella and stellla would return {"e"=>1, "l"=>2, "a"=>1}
    a.each.with_index do |word, index|
        temp_h = Hash.new(0)
        word.each_char do |char|
            if h[char] != 0 && h[char] > temp_h[char]
                temp_h[char] += 1
            end
        end
        # replace h with temp, then reset temp for the new string
        # h holds the chars that match between 2 strings
        h = temp_h
    end
    
    str = ""
    h.each do |key, val|
        # key * val means {"l"=>2} would produce ["l", "l"]
        str += key * val
    end
    
    # string are all letters that occur in all strings, split breaks them
    # up into each char
    str.split(//)
end

str1 = ["bella","label","roller"]
str2 = ["cool","lock","cook"]
str3 = ["phil","hill","until"]
str4 = ["candy","sandy","dandy","mandy"]
str5 = ["rain","snow","dine"]

puts "Expected: [\"l\", \"l\", \"e\"] -- Actual: #{common_chars(str1)}"
puts "Expected: [\"c\", \"o\"] -- Actual: #{common_chars(str2)}"
puts "Expected: [\"i\", \"l\"] -- Actual: #{common_chars(str3)}"
puts "Expected: [\"a\", \"n\", \"d\", \"y\"] -- Actual: #{common_chars(str4)}"
puts "Expected: [\"n\"] -- Actual: #{common_chars(str5)}"
