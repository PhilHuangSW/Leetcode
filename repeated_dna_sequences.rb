#################### REPEATED DNA SEQUENCES ####################

# All DNA is composed of a series of nucleotides abbreviated as 'A', 'C', 'G', and 'T', for example: "ACGAATTCCG". When studying DNA, it is sometimes useful to identify repeated sequences within the DNA.

# Write a function to find all the 10-letter-long sequences (substrings) that occur more than once in a DNA molecule.

# **Example 1:**
# ```
# Input: s = "AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT"
# Output: ["AAAAACCCCC","CCCCCAAAAA"]
# ```

# **Example 2:**
# ```
# Input: s = "AAAAAAAAAAAAA"
# Output: ["AAAAAAAAAA"]
# ```

# **Constraints:**
# - 0 <= s.length <= 105
# - s[i] is 'A', 'C', 'G', or 'T'.

#################### SOLUTION ####################
# @param {String} s
# @return {String[]}
# TIME: O(n) -- SPACE: O(n)
def find_repeated_dna_sequences(s)
  # if a sequence is less than 11, there can't possibly be a repeated sequence
  return [] if s.length < 11
  # check to see if a sequence is all the same character, if so just return the string of characters
  return [s[0..9]] if s.split('').uniq.length == 1
  ans = []
  right = 10
  h = Hash.new{|h,seq| h[seq] = 0}
  # One pass of sequence, if there's a match, and it hasn't been seen before, add the sequence to the answer array, then shift the window by 1
  for i in 0...(s.length-9)
      if h.has_key?(s[i...right])
        if h[s[i...right]] >= 2
          right += 1
          next
        else
          ans << s[i...right]
        end
      end
    h[s[i...right]] += 1
    right += 1
  end
  ans
end

s1 = "AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT"
s2 = "AAAAAAAAAAAAA"
s3 = "AAAAAAAAAAAAAAAAACCCCCCGGGGGGTTTTTTTGGGGGGGGGTTTTTTAAAAAAAAAACCCCCCCGGGGGGGGTTTTTT"
s4 = "AGGTTTATA"
s5 = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
s6 = "GAGAGAGAGAGA"

puts "Expected: [\"AAAAACCCCC\", \"CCCCCAAAAA\"] -- Actual: #{find_repeated_dna_sequences(s1)}"
puts "Expected: [\"AAAAAAAAAA\"] -- Actual: #{find_repeated_dna_sequences(s2)}"
puts "Expected: [\"AAAAAAAAAA\", \"GGGGGGTTTT\", \"GGGGGTTTTT\", \"GGGGTTTTTT\", \"AAAAAAAAAC\", \"AAAAAAAACC\", \"AAAAAAACCC\", \"AAAAAACCCC\", \"AAAAACCCCC\", \"AAAACCCCCC\", \"CCCCCCGGGG\", \"CCCCCGGGGG\", \"CCCCGGGGGG\", \"GGGGGGGGTT\", \"GGGGGGGTTT\"] -- Actual: #{find_repeated_dna_sequences(s3)}"
puts "Expected: [] -- Actual: #{find_repeated_dna_sequences(s4)}"
puts "Expected: [\"AAAAAAAAAA\"] -- Actual: #{find_repeated_dna_sequences(s5)}"
puts "Expected: [\"GAGAGAGAGA\"] -- Actual: #{find_repeated_dna_sequences(s6)}"