#################### LARGEST TIME FOR GIVEN DIGITS ####################

# Given an array of 4 digits, return the largest 24 hour time that can be made.

# The smallest 24 hour time is 00:00, and the largest is 23:59.  
# Starting from 00:00, a time is larger if more time has elapsed since midnight.

# Return the answer as a string of length 5.  If no valid time can be made, return an empty string.

# Example 1:
# Input: [1,2,3,4]
# Output: "23:41"

# Example 2:
# Input: [5,5,5,5]
# Output: ""

# Note:
# -A.length == 4
# - 0 <= A[i] <= 9


#################### SOLUTION ####################
# @param {Integer[]} a
# @return {String}
def largest_time_from_digits(a)
  valid_times = []
  ans = ""
  # permutation gives all permutations in the subarray size
  # i.e. permutation(2) gives all permutations of length 2 of 
  # the elements in the array
  for hh, h, mm, m in a.permutation(4)
      hour = hh*10 + h
      minute = mm*10 + m
      # if hour < 24 or minute < 60, we know we have a valid
      # time for that permutation, so we add it to our array of valid times
      if (hour < 24) && (minute < 60)
          time = []
          time << hh << h << mm << m
          valid_times << time
      end
  end
  # if no permutation was added, return ""
  if valid_times == []
      return ans
  end
  # otherwise we find the max valid time in our array, and turn that into
  # a string with the matching time
  valid_times = valid_times.max
  ans = "#{valid_times[0]}#{valid_times[1]}:#{valid_times[2]}#{valid_times[3]}"
  ans
end

a = [0,0,1,0]
b = [1,2,3,4]
c = [0,6,2,6]

puts "Expected: \"10:00\" --- Output: \"#{largest_time_from_digits(a)}\""
puts "Expected: \"23:41\" --- Output: \"#{largest_time_from_digits(b)}\""
puts "Expected: \"06:26\" --- Output: \"#{largest_time_from_digits(c)}\""