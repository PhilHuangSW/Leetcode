// ################### VALID PALINDROME ####################

// Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

// **Note:** For the purpose of this problem, we define empty string as valid palindrome.

// **Example 1:**
// ```
// Input: "A man, a plan, a canal: Panama"
// Output: true
// ```

// **Example 2:**
// ```
// Input: "race a car"
// Output: false
// ```

// **Constraints:**
// - s consists only of printable ASCII characters.


// ################### SOLUTION ####################
/*
 * @param {string} s
 * @return {boolean}
 */
var isPalindrome = function(s) {
  if (s.length == 1) {
    return true
  } else {
    let char_array = []
    for (let i = 0; i < s.length; i++) {
      if (s[i].match(/[a-zA-Z0-9]/)) {
        char_array.push(s[i].toLowerCase())
      }
    }
    let length = char_array.length - 1
    // console.log(char_array)
    for (let i = 0; i < (char_array.length/2); i++) {
      // console.log(`c[i]: ${char_array[i]} -- c[length]: ${char_array[length]}`)
      if (char_array[i] != char_array[length]) {
        return false
      }
      length--
    }
    return true
  }
};

s1 = "A man, a plan, a canal: Panama"
s2 = "0P"

describe("Valid Palindrome", function() {
  it("returns true if the string is a valid alphanumeric palindrome, false otherwise", function() {
    expect(isPalindrome(s1)).toEqual(true)
  })
  it("returns true if the string is a valid alphanumeric palindrome, false otherwise", function() {
    expect(isPalindrome(s2)).toEqual(false)
  })
})