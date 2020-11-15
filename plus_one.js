// #################### PLUS ONE ####################

// Given a **non-empty** array of digits representing a non-negative integer, increment one to the integer.

// The digits are stored such that the most significant digit is at the head of the list, and each element in the array contains a single digit.

// You may assume the integer does not contain any leading zero, except the number 0 itself.

// **Example 1:**
// ```
// Input: digits = [1,2,3]
// Output: [1,2,4]
// Explanation: The array represents the integer 123.
// ```

// **Example 2:**
// ```
// Input: digits = [4,3,2,1]
// Output: [4,3,2,2]
// Explanation: The array represents the integer 4321.
// ```

// **Example 3:**
// ```
// Input: digits = [0]
// Output: [1]
// ```

// **Constraints:**
// - 1 <= digits.length <= 100
// - 0 <= digits[i] <= 9

// #################### SOLUTION ####################
/*
 * @param {number[]} digits
 * @return {number[]}
 */
var plusOne = function(digits) {
  if (digits.length == 1 && digits[0] == 9) {
    return [1,0]
  } else if (digits.length == 1) {
    digits[0] += 1
    return digits
  } else {
    let carry_over = true
    for (let i = digits.length-1; i >= 0; i--) {
      if (carry_over == true && digits[i] == 9) {
        digits[i] = 0
        carry_over = true
        if (i == 0) {
          digits.unshift(1)
        }
      } else if (carry_over == true) {
        digits[i] += 1
        return digits
      }
    }
  }
  return digits
};

digits1 = [0]
digits2 = [1]
digits3 = [9]
digits4 = [4,3,2,1]
digits5 = [1,2,3]
digits6 = [9,9,9,9,9,9,9,9]
digits7 = [1,2,3,4,5,6,7,8,9]

describe("Plus One", function() {
  it("adds plus one to the number that is represented by the array", function() {
    expect(plusOne(digits1)).toEqual([1])
  })
  it("adds plus one to the number that is represented by the array", function() {
    expect(plusOne(digits2)).toEqual([2])
  })
  it("adds plus one to the number that is represented by the array", function() {
    expect(plusOne(digits3)).toEqual([1,0])
  })
  it("adds plus one to the number that is represented by the array", function() {
    expect(plusOne(digits4)).toEqual([4,3,2,2])
  })
  it("adds plus one to the number that is represented by the array", function() {
    expect(plusOne(digits5)).toEqual([1,2,4])
  })
  it("adds plus one to the number that is represented by the array", function() {
    expect(plusOne(digits6)).toEqual([1,0,0,0,0,0,0,0,0])
  })
  it("adds plus one to the number that is represented by the array", function() {
    expect(plusOne(digits7)).toEqual([1,2,3,4,5,6,7,9,0])
  })
})
