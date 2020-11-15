// #################### REVERSE STRING ####################

// Write a function that reverses a string. The input string is given as an array of characters char[].

// Do not allocate extra space for another array, you must do this by **modifying the input array in-place** with O(1) extra memory.

// You may assume all the characters consist of printable ascii characters.

// **Example 1:**
// ```
// Input: ["h","e","l","l","o"]
// Output: ["o","l","l","e","h"]
// ```

// **Example 2:**
// ```
// Input: ["H","a","n","n","a","h"]
// Output: ["h","a","n","n","a","H"]
// ```

// #################### SOLUTION ####################
/*
 * @param {character[]} s
 * @return {void} Do not return anything, modify s in-place instead.
 */
var reverseString = function(s) {
  if (s.length <= 1) {
    return s
  } else {
    var length = s.length-1
    for (let i = 0; i < s.length/2; i++) {
      let temp = s[i]
      s[i] = s[length]
      s[length] = temp
      length--
    }
  }
  return s
};

const s1 = ["h","e","l","l","o"]
const s2 = ["h"]
const s3 = []
const s4 = ["c","a","t","d","o","g"]

describe("Reverse String", function() {
  it("returns the reversed string", function() {
    expect(reverseString(s1)).toEqual(["o","l","l","e","h"])
  })
  it("returns the reversed string", function() {
    expect(reverseString(s2)).toEqual(["h"])
  })
  it("returns the reversed string", function() {
    expect(reverseString(s3)).toEqual([])
  })
  it("returns the reversed string", function() {
    expect(reverseString(s4)).toEqual(["g","o","d","t","a","c"])
  })
})