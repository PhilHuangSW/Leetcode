// #################### FIRST UNIQUE CHARACTER IN A STRING ####################

// # Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.

// # **Examples:**
// # ```
// # s = "leetcode"
// # return 0.

// # s = "loveleetcode"
// # return 2.
// # ```

// # **Note:** You may assume the string contains only lowercase English letters.

// #################### SOLUTION ####################
/*
 * @param {string} s
 * @return {number}
*/
var firstUniqChar = function(s) {
  if (s === "") return -1
  if (s.length === 1) return 0
  let h = {}
  for (let i = 0; i < s.length; i++){
    h[s[i]] = h[s[i]] + 1 || 1
  }
  let uniq_char = ""
  for (key in h){
    if (h[key] === 1){
      for (let i = 0; i < s.length; i++){
        if (s[i] === key){
          return i
        }
      }
    }
  }
  return -1
};

const s1 = "loveleetcode"
const s2 = "leetcode"
const s3 = ""
const s4 = "a"
const s5 = "aa"

describe('First Unique Character', function (){
  it('Returns the index of the first unique character', function (){
    expect(firstUniqChar(s1)).toEqual(2)
  })
  it('Returns the index of the first unique character', function (){
    expect(firstUniqChar(s2)).toEqual(0)
  })
  it('Returns the index of the first unique character', function (){
    expect(firstUniqChar(s3)).toEqual(-1)
  })
  it('Returns the index of the first unique character', function (){
    expect(firstUniqChar(s4)).toEqual(0)
  })
  it('Returns the index of the first unique character', function (){
    expect(firstUniqChar(s5)).toEqual(-1)
  })
})