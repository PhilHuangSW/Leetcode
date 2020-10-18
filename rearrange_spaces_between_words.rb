#################### REARRANGE SPACES BETWEEN WORDS ####################

# You are given a string text of words that are placed among some number of spaces. Each word consists of one or more lowercase English letters and are separated by at least one space. It's guaranteed that text **contains at least one word**.

# Rearrange the spaces so that there is an **equal** number of spaces between every pair of adjacent words and that number is **maximized**. If you cannot redistribute all the spaces equally, place the **extra spaces at the end**, meaning the returned string should be the same length as text.

# Return *the string after rearranging the spaces*.

# **Example 1:**
# ```
# Input: text = "  this   is  a sentence "
# Output: "this   is   a   sentence"
# Explanation: There are a total of 9 spaces and 4 words. We can evenly divide the 9 spaces between the words: 9 / (4-1) = 3 spaces.
# ```

# **Example 2:**
# ```
# Input: text = " practice   makes   perfect"
# Output: "practice   makes   perfect "
# Explanation: There are a total of 7 spaces and 3 words. 7 / (3-1) = 3 spaces plus 1 extra space. We place this extra space at the end of the string.
# ```

# **Example 3:**
# ```
# Input: text = "hello   world"
# Output: "hello   world"
# ```

# **Example 4:**
# ```
# Input: text = "  walks  udp package   into  bar a"
# Output: "walks  udp  package  into  bar  a "
# ```

# **Example 5:**
# ```
# Input: text = "a"
# Output: "a"
# ```

# **Constraints:**
# - 1 <= text.length <= 100
# - text consists of lowercase English letters and ' '.
# - text contains at least one word.

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {String} text
# @return {String}
def reorder_spaces(text)
  ans = ""
  words = text.split(' ')
  num_words = words.length
  words_length = 0
  for i in 0...words.length
    words_length += words[i].length
  end
  if words_length == 0
    return text
  end

  space_length = text.length - words_length
  if space_length == 0
    return text
  end

  if num_words == 1
    ans << words[0]
    rest_of_spaces = " " * space_length
    ans << rest_of_spaces
    return ans
  end

  space_between_each = space_length / (num_words-1)
  space_between = " " * space_between_each
  space_at_end = (space_length % (num_words-1))
  if space_at_end != 0
    space_end = " " * space_at_end
  end
  
  for i in 0...words.length
    ans << words[i]
    num_words -= 1
    if num_words > 0
      ans << space_between
    end
  end
  if space_end
    ans << space_end
  end
  ans
end

text1 = "  this   is  a sentence "
text2 = " practice   makes   perfect"
text3 = "hello   world"
text4 = "  walks  udp package   into  bar a"
text5 = "a"
text6 = "abcdefelkagjli43jlkajsdflkj"
text7 = "a           bf ajsdfk        asdfk"
text8 = "   hello"
text9 = "   "
text10 = "   hello   "

describe "reorder spaces" do
  it "gives me a number of spaces" do
    expect(reorder_spaces(text1)).to eq("this   is   a   sentence")
  end
  it "gives me a number of spaces" do
    expect(reorder_spaces(text2)).to eq("practice   makes   perfect ")
  end
  it "gives me a number of spaces" do
    expect(reorder_spaces(text3)).to eq("hello   world")
  end
  it "gives me a number of spaces" do
    expect(reorder_spaces(text4)).to eq("walks  udp  package  into  bar  a ")
  end
  it "gives me a number of spaces" do
    expect(reorder_spaces(text5)).to eq("a")
  end
  it "gives me a number of spaces" do
    expect(reorder_spaces(text6)).to eq("abcdefelkagjli43jlkajsdflkj")
  end
  it "gives me a number of spaces" do
    expect(reorder_spaces(text7)).to eq("a      bf      ajsdfk      asdfk  ")
  end
  it "gives me a number of spaces" do
    expect(reorder_spaces(text8)).to eq("hello   ")
  end
  it "gives me a number of spaces" do
    expect(reorder_spaces(text9)).to eq("   ")
  end
  it "gives me a number of spaces" do
    expect(reorder_spaces(text10)).to eq("hello      ")
  end
end