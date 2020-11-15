// #################### STRING TO INTEGER (ATOI) ####################

// Implement atoi which converts a string to an integer.

// The function first discards as many whitespace characters as necessary until the first non-whitespace character is found. Then, starting from this character takes an optional initial plus or minus sign followed by as many numerical digits as possible, and interprets them as a numerical value.

// The string can contain additional characters after those that form the integral number, which are ignored and have no effect on the behavior of this function.

// If the first sequence of non-whitespace characters in str is not a valid integral number, or if no such sequence exists because either str is empty or it contains only whitespace characters, no conversion is performed.

// If no valid conversion could be performed, a zero value is returned.

// **Note:**
// - Only the space character ' ' is considered a whitespace character.
// - Assume we are dealing with an environment that could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. If the numerical value is out of the range of representable values, 231 − 1 or −231 is returned.

// **Example 1:**
// ```
// Input: str = "42"
// Output: 42
// ```

// **Example 2:**
// ```
// Input: str = "   -42"
// Output: -42
// Explanation: The first non-whitespace character is '-', which is the minus sign. Then take as many numerical digits as possible, which gets 42.
// ```

// **Example 3:**
// ```
// Input: str = "4193 with words"
// Output: 4193
// Explanation: Conversion stops at digit '3' as the next character is not a numerical digit.
// ```

// **Example 4:**
// ```
// Input: str = "words and 987"
// Output: 0
// Explanation: The first non-whitespace character is 'w', which is not a numerical digit or a +/- sign. Therefore no valid conversion could be performed.
// ```

// **Example 5:**
// ```
// Input: str = "-91283472332"
// Output: -2147483648
// Explanation: The number "-91283472332" is out of the range of a 32-bit signed integer. Thefore INT_MIN (−231) is returned.
// ```

// **Constraints:**
// - 0 <= s.length <= 200
// - s consists of English letters (lower-case and upper-case), digits, ' ', '+', '-' and '.'.

// #################### SOLUTION ####################
/*
 * @param {string} s
 * @return {number}
 */
var myAtoi = function(s) {
  ans = parseInt(s)
  if (Number.isNaN(ans)) {
    return 0
  } else if (ans > (2**31 - 1)) {
    return (2**31 - 1)
  } else if (ans < -(2**31)) {
    return -(2**31)
  } else {
    return ans
  }
};

s1 = ""
s2 = "42"
s3 = "4193 with words"
s4 = "words and 987"
s5 = "-91283472332"
s6 = "               -woads32123"
s7 = "          3afjdkj-212323"
s8 = "        3         2 -23123"
s9 = "        ajki            234235"

describe("Parse Int", function() {
  it("returns the first integer it can find in the string, 0 if it starts with a word character", function() {
    expect(myAtoi(s1)).toEqual(0)
  })
  it("returns the first integer it can find in the string, 0 if it starts with a word character", function() {
    expect(myAtoi(s2)).toEqual(42)
  })
  it("returns the first integer it can find in the string, 0 if it starts with a word character", function() {
    expect(myAtoi(s3)).toEqual(4193)
  })
  it("returns the first integer it can find in the string, 0 if it starts with a word character", function() {
    expect(myAtoi(s4)).toEqual(0)
  })
  it("returns the first integer it can find in the string, 0 if it starts with a word character", function() {
    expect(myAtoi(s5)).toEqual(-2147483648)
  })
  it("returns the first integer it can find in the string, 0 if it starts with a word character", function() {
    expect(myAtoi(s6)).toEqual(0)
  })
  it("returns the first integer it can find in the string, 0 if it starts with a word character", function() {
    expect(myAtoi(s7)).toEqual(3)
  })
  it("returns the first integer it can find in the string, 0 if it starts with a word character", function() {
    expect(myAtoi(s8)).toEqual(3)
  })
  it("returns the first integer it can find in the string, 0 if it starts with a word character", function() {
    expect(myAtoi(s9)).toEqual(0)
  })
})