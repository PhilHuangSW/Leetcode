#################### ZIGZAG CONVERSION ####################

# The string "PAYPALISHIRING" is written in a zigzag pattern on a given 
# number of rows like this: (you may want to display this pattern in a 
# fixed font for better legibility)

# P   A   H   N
# A P L S I I G
# Y   I   R

# And then read line by line: "PAHNAPLSIIGYIR"

# Write the code that will take a string and make this conversion given a number of rows:

# string convert(string s, int numRows);

# Example 1:
# Input: s = "PAYPALISHIRING", numRows = 3
# Output: "PAHNAPLSIIGYIR"

# Example 2:
# Input: s = "PAYPALISHIRING", numRows = 4
# Output: "PINALSIGYAHRPI"
# Explanation:
# P     I    N
# A   L S  I G
# Y A   H R
# P     I


#################### SOLUTION ####################
# @param {String} s
# @param {Integer} num_rows
# @return {String}
# TIME: O(n) -- SPACE: O(n)
def convert(s, num_rows)
  return s if num_rows == 1
  # this hash will hold all the chars from our string
  # each entry in the hash is one row of our letters
  h = Hash.new{|h,row| h[row] = []}
  for i in 0...num_rows
    h[i] = []
  end
  count = 0
  # we use this zig boolean to determine whether we increment or decrement
  zig = true
  for i in 0...s.length
    # if zig is true, we increment count
    if zig == true
      h[count] << s[i]
      count += 1
      if count == num_rows - 1
        zig = false
      end
    # else we decrement the count (zag)
    else
      h[count] << s[i]
      count -= 1
      if count == 0
        zig = true
      end
    end
  end
  ans = ""
  # iterate through our hash and collect each letter from each hash entry
  # and concatenate everything into one string
  for i in 0...num_rows
    h[i].each do |char|
      ans << char
    end
  end
  ans
end

s1 = "PAYPALISHIRING"
num_rows1 = 3
s2 = "PAYPALISHIRING"
num_rows2 = 4
s3 = "AB"
num_rows3 = 1
s4 = "APPLECIDER"
num_rows4 = 5
s5 = "PHILIPHUANG"
num_rows5 = 7

puts "Expected: PAHNAPLSIIGYIR -- Actual: #{convert(s1, num_rows1)}"
puts "Expected: PINALSIGYAHRPI -- Actual: #{convert(s2, num_rows2)}"
puts "Expected: AB -- Actual: #{convert(s3, num_rows3)}"
puts "Expected: AEPDRPILCE -- Actual: #{convert(s4, num_rows4)}"
puts "Expected: PHIGLNIAPUH -- Actual: #{convert(s5, num_rows5)}"