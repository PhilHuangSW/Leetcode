#################### DIVIDE TWO INTEGERS ####################

# Given two integers dividend and divisor, divide two integers without 
# using multiplication, division and mod operator.

# Return the quotient after dividing dividend by divisor.

# The integer division should truncate toward zero, which means losing its 
# fractional part. For example, truncate(8.345) = 8 and truncate(-2.7335) = -2.

# Example 1:
# Input: dividend = 10, divisor = 3
# Output: 3
# Explanation: 10/3 = truncate(3.33333..) = 3.

# Example 2:
# Input: dividend = 7, divisor = -3
# Output: -2
# Explanation: 7/-3 = truncate(-2.33333..) = -2.

# Note:
# - Both dividend and divisor will be 32-bit signed integers.
# - The divisor will never be 0.
# - Assume we are dealing with an environment which could only store integers within 
#   the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, 
#   assume that your function returns 231 − 1 when the division result overflows.


#################### SOLUTION ####################
# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
  if divisor == 1
    if dividend <= 2147483647 && dividend >= -2147483648
      return dividend
    elsif dividend < -2147483648
      return -2147483648
    else
      return 2147483647
    end
  end
  if divisor == -1
    if dividend <= 2147483647 && dividend > -2147483648
      return dividend - dividend - dividend
    elsif dividend <= -2147483648
      return 2147483647
    else
      return -2147483648
    end
  end
  return 0 if dividend == 0

  ans = 0
  if dividend < 0 && divisor > 0
    dividend = dividend - dividend - dividend 
    ans = add_divide(dividend, divisor)
    ans = ans - ans - ans
    if ans <= -2147483648
      return -2147483648
    else
      return ans
    end
  end
  if dividend > 0 && divisor < 0
    divisor = divisor - divisor - divisor
    ans = add_divide(dividend, divisor)
    ans = ans - ans - ans
    if ans <= -2147483648
      return -2147483648
    else
      return ans
    end
  end
  if dividend < 0 && divisor < 0
    divisor = divisor - divisor - divisor
    dividend = dividend - dividend - dividend
    ans = add_divide(dividend, divisor)
    if ans >= 2147483647
      return 2147483647
    else
      return ans
    end
  end
  if dividend > 0 && dividend > 0
    ans = add_divide(dividend, divisor)
    if ans >= 2147483647
      return 2147483647
    else
      return ans
    end
  end
end

def add_divide(dividend, divisor)
  ans = 0
  current = 0
  while true
    current += divisor
    ans += 1
    if current > dividend
      return ans - 1
    elsif current == dividend
      return ans
    end
  end
end

dividend1 = 10
divisor1 = 3
dividend2 = 7
divisor2 = -3
dividend3 = 2347483647
divisor3 = 1973
dividend4 = -2347483647
divisor4 = -21679
dividend5 = 15689
divisor5 = 13274

puts "Expected: 3 -- Actual: #{divide(dividend1, divisor1)}"
puts "Expected: -2 -- Actual: #{divide(dividend2, divisor2)}"
puts "Expected: 1189804 -- Actual: #{divide(dividend3, divisor3)}"
puts "Expected: 108283 -- Actual: #{divide(dividend4, divisor4)}"
puts "Expected: 1 -- Actual: #{divide(dividend5, divisor5)}"