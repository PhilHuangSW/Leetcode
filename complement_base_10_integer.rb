#################### COMPLEMENT OF BASE 10 INTEGER ####################

# Every non-negative integer N has a binary representation.  For example, 
# 5 can be represented as "101" in binary, 11 as "1011" in binary, and so on.  
# Note that except for N = 0, there are no leading zeroes in any binary representation.

# The complement of a binary representation is the number in binary you get 
# when changing every 1 to a 0 and 0 to a 1.  For example, the complement 
#   of "101" in binary is "010" in binary.

# For a given number N in base-10, return the complement of it's binary representation 
# as a base-10 integer.

# Example 1:
# Input: 5
# Output: 2
# Explanation: 5 is "101" in binary, with complement "010" in binary, which is 2 in base-10.

# Example 2:
# Input: 7
# Output: 0
# Explanation: 7 is "111" in binary, with complement "000" in binary, which is 0 in base-10.

# Example 3:
# Input: 10
# Output: 5
# Explanation: 10 is "1010" in binary, with complement "0101" in binary, which is 5 in base-10.

# Note:
# - 0 <= N < 10^9


#################### SOLUTION ####################
# @param {Integer} n
# @return {Integer}
# TIME: O(1) -- SPACE: O(1)
# Simple brute force -> Convert n to binary, get the complement of binary n,
# then convert the complement of n to decimal
# def bitwise_complement(n)
#   return 1 if n == 0
#   return 0 if n == 1
#   arr = dec_to_bin(n)
#   arr = complement(arr)
#   ans = bin_to_dec(arr)
#   ans
# end

# def dec_to_bin(n)
#   return [0] if n == 0
#   dec_array = []
#   while n != 0
#     if n == 1
#       dec_array << 1
#       return dec_array.reverse
#     end
#     if n%2 == 1
#       dec_array << 1
#       n /= 2
#     else
#       dec_array << 0
#       n /= 2
#     end
#   end
# end

# def complement(arr)
#   return [1] if (arr.length == 1 && arr[0] == 0)
#   return [0] if (arr.length == 1 && arr[0] == 1)
#   compl = []
#   for i in 0...arr.length
#     if arr[i] == 1
#       compl << 0
#     else
#       compl << 1
#     end
#   end
#   compl
# end

# def bin_to_dec(arr)
#   return 0 if (arr.length == 1 && arr[0] == 0)
#   return 1 if (arr.length == 1 && arr[0] == 1)
#   dec = 0
#   placement = arr.length-1
#   for i in 0...arr.length
#     if arr[i] == 1
#       dec += 2**placement
#     end
#     placement -= 1
#   end
#   dec
# end

## Using more powerful tools that Ruby has
def bitwise_complement(n)
  n.to_s(2).chars.map{|char| char == '1' ? '0' : '1'}.join('').to_i(2)
end

n1 = 5
n2 = 7
n3 = 10
n4 = 0
n5 = 1502304

puts "Expected: 2 -- Actual: #{bitwise_complement(n1)}"
puts "Expected: 0 -- Actual: #{bitwise_complement(n2)}"
puts "Expected: 5 -- Actual: #{bitwise_complement(n3)}"
puts "Expected: 1 -- Actual: #{bitwise_complement(n4)}"
puts "Expected: 594847 -- Actual: #{bitwise_complement(n5)}"