#################### SHORT ENCODING OF WORDS ####################

# Given a list of words, we may encode it by writing a reference string S and a list of indexes A.

# For example, if the list of words is ["time", "me", "bell"], we can write it as S = "time#bell#" and indexes = [0, 2, 5].

# Then for each index, we will recover the word by reading from the reference string from that index until we reach a "#" character.

# What is the length of the shortest reference string S possible that encodes the given words?

# **Example:**
# ```
# Input: words = ["time", "me", "bell"]
# Output: 10
# Explanation: S = "time#bell#" and indexes = [0, 2, 5].
# ```

# **Note:**
# - 1 <= words.length <= 2000.
# - 1 <= words[i].length <= 7.
# - Each word has only lowercase letters.

#################### SOLUTION ####################
# @param {String[]} words
# @return {Integer}
def minimum_length_encoding(words)
  return 0 if words.empty?
  return (words[0].length+1) if words.length == 1
  words.sort_by! {|word| -word.length}
  # p words
  s = words[0]
  s << "#"
  hash_indices = [s.length-1]
  # p hash_indices
  matched = false
  for i in 1...words.length
    # p "words: #{words[i]}"
    hash_indices.each do |hash_start|
      # p "s_part: #{s[(hash_start - (words[i].length))...hash_start]}"
      if s[(hash_start - (words[i].length))...hash_start] == words[i]
        matched = true
      end
    end
    if matched == false
      s << words[i]
      s << "#"
      hash_indices << s.length-1
    end
    # puts "hash_indices: #{hash_indices} -- s: #{s} -- matched: #{matched}"
    matched = false
  end
  s.length
end

words1 = ["time", "me", "bell"]
words2 = []
words3 = [""]
words4 = ["time"]
words5 = ["time", "mea", "bell"]
words6 = ["time", "me", "e", "doing", "ng", "cool", "ol"]
words7 = ["me", "time"]
words8 = ["e", "me", "time", "bell", "ime", "ll", "ell"]

puts "Expected: 10 -- Actual: #{minimum_length_encoding(words1)}"
puts "Expected: 0 -- Actual: #{minimum_length_encoding(words2)}"
puts "Expected: 1 -- Actual: #{minimum_length_encoding(words3)}"
puts "Expected: 5 -- Actual: #{minimum_length_encoding(words4)}"
puts "Expected: 14 -- Actual: #{minimum_length_encoding(words5)}"
puts "Expected: 16 -- Actual: #{minimum_length_encoding(words6)}"
puts "Expected: 5 -- Actual: #{minimum_length_encoding(words7)}"
puts "Expected: 10 -- Actual: #{minimum_length_encoding(words8)}"