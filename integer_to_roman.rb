#################### INTEGER TO ROMAN ####################

# Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
# ```
# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000
# ```

# For example, 2 is written as II in Roman numeral, just two one's added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

# Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

# - I can be placed before V (5) and X (10) to make 4 and 9. 
# - X can be placed before L (50) and C (100) to make 40 and 90. 
# - C can be placed before D (500) and M (1000) to make 400 and 900.

# Given an integer, convert it to a roman numeral.

# **Example 1:**
# ```
# Input: num = 3
# Output: "III"
# ```

# **Example 2:**
# ```
# Input: num = 4
# Output: "IV"
# ```

# **Example 3:**
# ```
# Input: num = 9
# Output: "IX"
# ```

# **Example 4:**
# ```
# Input: num = 58
# Output: "LVIII"
# Explanation: L = 50, V = 5, III = 3.
# ```

# **Example 5:**
# ```
# Input: num = 1994
# Output: "MCMXCIV"
# Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
# ```

# **Constraints:**
# - 1 <= num <= 3999

#################### SOLUTION ####################
# @param {Integer} num
# @return {String}
# TIME: O(1) -- SPACE: O(1)
def int_to_roman(num)
  roman = ""
  if num >= 1000
    m = num/1000
    num = num%1000
    roman += "M" * m
  end
  if num >= 900
    cm = num/900
    num = num%900
    roman += "CM" * cm
  end
  if num >= 500
    d = num/500
    num = num%500
    roman += "D" * d
  end
  if num >= 400
    cd = num/400
    num = num%400
    roman += "CD" * cd
  end
  if num >= 100
    c = num/100
    num = num%100
    roman += "C" * c
  end
  if num >= 90
    xc = num/90
    num = num%90
    roman += "XC" * xc
  end
  if num >= 50
    l = num/50
    num = num%50
    roman += "L" * l
  end
  if num >= 40
    xl = num/40
    num = num%40
    roman += "XL" * xl
  end
  if num >= 10
    x = num/10
    num = num%10
    roman += "X" * x
  end
  if num >= 9
    ix = num/9
    num = num%9
    roman += "IX" * ix
  end
  if num >= 5
    v = num/5
    num = num%5
    roman += "V" * v
  end
  if num >= 4
    iv = num/4
    num = num%4
    roman += "IV" * iv
  end
  if num >= 1
    i = num/1
    num = num%1
    roman += "I" * i
  end
  roman   
end

num1 = 3
num2 = 4
num3 = 9
num4 = 58
num5 = 1994
num6 = 3999

puts "Expected: III -- Actual: #{int_to_roman(num1)}"
puts "Expected: IV -- Actual: #{int_to_roman(num2)}"
puts "Expected: IX -- Actual: #{int_to_roman(num3)}"
puts "Expected: LVIII -- Actual: #{int_to_roman(num4)}"
puts "Expected: MCMXCIV -- Actual: #{int_to_roman(num5)}"
puts "Expected: MMMCMXCIX -- Actual: #{int_to_roman(num6)}"