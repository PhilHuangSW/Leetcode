#################### UNIQUE MORSE CODE WORDS ####################

# International Morse Code defines a standard encoding where each letter is mapped to a series of dots and dashes, as follows: "a" maps to ".-", "b" maps to "-...", "c" maps to "-.-.", and so on.

# For convenience, the full table for the 26 letters of the English alphabet is given below:

# ```
# [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
# ```

# Now, given a list of words, each word can be written as a concatenation of the Morse code of each letter. For example, "cab" can be written as "-.-..--...", (which is the concatenation "-.-." + ".-" + "-..."). We'll call such a concatenation, the transformation of a word.

# Return the number of different transformations among all words we have.

# **Example:**
# ```
# Input: words = ["gin", "zen", "gig", "msg"]
# Output: 2
# Explanation: 
# The transformation of each word is:
# "gin" -> "--...-."
# "zen" -> "--...-."
# "gig" -> "--...--."
# "msg" -> "--...--."
# There are 2 different transformations, "--...-." and "--...--.".
# ```

# **Note:**
# - The length of words will be at most 100.
# - Each words[i] will have length in range [1, 12].
# - words[i] will only consist of lowercase letters.

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {String[]} words
# @return {Integer}
# TIME: O(n) -- SPACE: O(n)
def unique_morse_representations(words)
  return 0 if words.length == 0
  return 1 if words.length == 1
  morse_words = []
  h = Hash.new{|h,k| h[k] = 0}
  count = 0
  for i in 0...words.length
    morse_word = to_morse(words[i])
    if !h.has_key?(morse_word)
      h[morse_word] += 1
      count += 1
    end
  end
  count
end

def to_morse(word)
  morse = {
    "a" => ".-",
    "b" => "-...",
    "c" => "-.-.",
    "d" => "-..",
    "e" => ".",
    "f" => "..-.",
    "g" => "--.",
    "h" => "....",
    "i" => "..",
    "j" => ".---",
    "k" => "-.-",
    "l" => ".-..",
    "m" => "--",
    "n" => "-.",
    "o" => "---",
    "p" => ".--.",
    "q" => "--.-",
    "r" => ".-.",
    "s" => "...",
    "t" => "-",
    "u" => "..-",
    "v" => "...-",
    "w" => ".--",
    "x" => "-..-",
    "y" => "-.--",
    "z" => "--.."
  }
  morse_word = ""
  for i in 0...word.length
    morse_word += morse[word[i]]
  end
  return morse_word
end

words1 = ["gin", "zen", "gig", "msg"]
words2 = ["gin"]
words3 = [""]
words4 = ["gin", "zen", "gig", "msg", "apl", "liv", "liv", "opl", "aqp"]
words5 = []

describe "Unique Morse Code Words" do
  it "returns the number of unique morse code words" do
    expect(unique_morse_representations(words1)).to eq(2)
  end
  it "returns the number of unique morse code words" do
    expect(unique_morse_representations(words2)).to eq(1)
  end
  it "returns the number of unique morse code words" do
    expect(unique_morse_representations(words3)).to eq(1)
  end
  it "returns the number of unique morse code words" do
    expect(unique_morse_representations(words4)).to eq(6)
  end
  it "returns the number of unique morse code words" do
    expect(unique_morse_representations(words5)).to eq(0)
  end
end
