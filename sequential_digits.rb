#################### SEQUENTIAL DIGITS ####################

# An integer has sequential digits if and only if each digit in 
# the number is one more than the previous digit.

# Return a sorted list of all the integers in the range [low, high] 
# inclusive that have sequential digits.

# Example 1:
# Input: low = 100, high = 300
# Output: [123,234]

# Example 2:
# Input: low = 1000, high = 13000
# Output: [1234,2345,3456,4567,5678,6789,12345]

# Constraints:
# - 10 <= low <= high <= 10^9


#################### SOLUTION ####################
# @param {Integer} low
# @param {Integer} high
# @return {Integer[]}
def sequential_digits(low, high)
  ans = []
  # we use these lengths to determine how long our sequences can be
  high_length = high.to_s.length
  low_length = low.to_s.length
  for i in low_length..high_length
    # we use (10-i) because if our length is 3, 10-3 = 7 is the last
    # digit that can form a valid sequence number (i.e. 789)
    for j in 1..(10-i)
      num = build_numbers(j, low, high, i) 
      # our helper function builds our integer sequence for us and
      # returns a number >0, 0, or -1
      # >0 == valid sequential number
      # 0 == lower than our low, but is less than our high
      # -1 == higher than our high, break out since we can't go higher
      if num > 0
        ans << num
      elsif num == 0
        next
      else
        break
      end
    end
  end
  ans
end

# helper function to build sequential numbers based on restraints
def build_numbers(start, low, max, length)
  ans = ""
  for i in start..(start+length-1)
    ans << i.to_s
  end
  ans = ans.to_i
  if ans > max
    return -1
  elsif ans < low
    return 0
  else
    return ans
  end
end

low1 = 100
high1 = 300
low2 = 1000
high2 = 13000
low3 = 10
high3 = 20
low4 = 234
high4 = 345
low5 = 10
high5 = 1000
low6 = 530
high6 = 568
low7 = 10
high7 = 11


puts "Expected: [123, 234] -- Actual: #{sequential_digits(low1, high1)}"
puts "Expected: [1234, 2345, 3456, 4567, 5678, 6789, 12345] -- Actual: #{sequential_digits(low2, high2)}"
puts "Expected: [12] -- Actual: #{sequential_digits(low3, high3)}"
puts "Expected: [234, 345] -- Actual: #{sequential_digits(low4, high4)}"
puts "Expected: [12, 23, 34, 45, 56, 67, 78, 89, 123, 234, 345, 456, 567, 678, 789] -- Actual: #{sequential_digits(low5, high5)}"
puts "Expected: [567] -- Actual: #{sequential_digits(low6, high6)}"
puts "Expected: [] -- Actual: #{sequential_digits(low7, high7)}"