// #################### CONSECUTIVE CHARACTERS ####################

// # Given a string s, the power of the string is the maximum length of a non-empty substring that contains only one unique character.

// # Return *the power* of the string.

// # **Example 1:**
// # ```
// # Input: s = "leetcode"
// # Output: 2
// # Explanation: The substring "ee" is of length 2 with the character 'e' only.
// # ```

// # **Example 2:**
// # ```
// # Input: s = "abbcccddddeeeeedcba"
// # Output: 5
// # Explanation: The substring "eeeee" is of length 5 with the character 'e' only.
// # ```

// # **Example 3:**
// # ```
// # Input: s = "triplepillooooow"
// # Output: 5
// # ```

// # **Example 4:**
// # ```
// # Input: s = "hooraaaaaaaaaaay"
// # Output: 11
// # ```

// # **Example 5:**
// # ```
// # Input: s = "tourist"
// # Output: 1
// # ```

// # **Constraints:**
// # - 1 <= s.length <= 500
// # - s contains only lowercase English letters.

// #################### SOLUTION ####################
// /**
//  * @param {string} s
//  * @return {number}
// */
var maxPower = function(s) {
  if (s.length === 1) {
    return 1
  }
  let longest = 1
  let streak = 1
  let current_char = s[0]
  for(let i = 1; i < s.length; i++) {
    if (s[i] === current_char) {
      streak += 1
    } else {
      if (longest < streak) {
        longest = streak
      }
      streak = 1
      current_char = s[i]
    }
  }
  if (longest < streak) {
    longest = streak
  }
  return longest
};

const s1 = "leetcode"
const s2 = "abbcccddddeeeeedcba"
const s3 = "triplepillooooow"
const s4 = "hooraaaaaaaaaaay"
const s5 = "tourist"
const s6 = "q"
const s7 = "cc"
const s8 = "ppqlqllelqppppp"

describe('Consecutive Character', function (){
  it('returns the power of the most consecutive character in a string', function (){
    expect(maxPower(s1)).toEqual(2)
  })
  it('returns the power of the most consecutive character in a string', function (){
    expect(maxPower(s2)).toEqual(5)
  })
  it('returns the power of the most consecutive character in a string', function (){
    expect(maxPower(s3)).toEqual(5)
  })
  it('returns the power of the most consecutive character in a string', function (){
    expect(maxPower(s4)).toEqual(11)
  })
  it('returns the power of the most consecutive character in a string', function (){
    expect(maxPower(s5)).toEqual(1)
  })
  it('returns the power of the most consecutive character in a string', function (){
    expect(maxPower(s6)).toEqual(1)
  })
  it('returns the power of the most consecutive character in a string', function (){
    expect(maxPower(s7)).toEqual(2)
  })
  it('returns the power of the most consecutive character in a string', function (){
    expect(maxPower(s8)).toEqual(5)
  })
})