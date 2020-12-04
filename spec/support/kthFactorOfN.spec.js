// #################### THE KTH FACTOR OF N ####################

// Given two positive integers n and k.

// A factor of an integer n is defined as an integer i where n % i == 0.

// Consider a list of all factors of n sorted in **ascending order**, return the kth *factor* in this list or return -1 if n has less than k factors.

// **Example 1:**
// ```
// Input: n = 12, k = 3
// Output: 3
// Explanation: Factors list is [1, 2, 3, 4, 6, 12], the 3rd factor is 3.
// ```

// **Example 2:**
// ```
// Input: n = 7, k = 2
// Output: 7
// Explanation: Factors list is [1, 7], the 2nd factor is 7.
// ```

// **Example 3:**
// ```
// Input: n = 4, k = 4
// Output: -1
// Explanation: Factors list is [1, 2, 4], there is only 3 factors. We should return -1.
// ```

// **Example 4:**
// ```
// Input: n = 1, k = 1
// Output: 1
// Explanation: Factors list is [1], the 1st factor is 1.
// ```

// **Example 5:**
// ```
// Input: n = 1000, k = 3
// Output: 4
// Explanation: Factors list is [1, 2, 4, 5, 8, 10, 20, 25, 40, 50, 100, 125, 200, 250, 500, 1000].
// ```

// **Constraints:**
// - 1 <= k <= n <= 1000

// #################### SOLUTION ####################
/*
 * @param {number} n
 * @param {number} k
 * @return {number}
 */

// TIME: O(n) -- SPACE: O(1)
var kthFactor = function(n, k) {
  // base case, if k is 1, return 1 since 1 is a factor for every integer
  if (k === 1) {
    return 1
  }
  k -= 1

  // go through the integers up to n, for every factor you find, subtract from k
  // once k == 0, we know that we've found the kth factor in n
  for (let i = 2; i <= n; i++) {
    if (n % i === 0) {
      k -= 1
      if (k === 0) {
        return i
      }
    }
  }

  // if we're out of the for loop, we haven't found the kth factor in n, so return -1
  return -1
};

const n1 = 12
const k1 = 3
const n2 = 1000
const k2 = 3
const n3 = 1
const k3 = 1
const n4 = 4
const k4 = 4
const n5 = 7
const k5 = 2
const n6 = 4
const k6 = 1
const n7 = 10
const k7 = 4

describe("kth Factor", function() {
  it("returns the kth factor in n", function(){
    expect(kthFactor(n1, k1)).toEqual(3)
  })
  it("returns the kth factor in n", function(){
    expect(kthFactor(n2, k2)).toEqual(4)
  })
  it("returns the kth factor in n", function(){
    expect(kthFactor(n3, k3)).toEqual(1)
  })
  it("returns the kth factor in n", function(){
    expect(kthFactor(n4, k4)).toEqual(-1)
  })
  it("returns the kth factor in n", function(){
    expect(kthFactor(n5, k5)).toEqual(7)
  })
  it("returns the kth factor in n", function(){
    expect(kthFactor(n6, k6)).toEqual(1)
  })
  it("returns the kth factor in n", function(){
    expect(kthFactor(n7, k7)).toEqual(10)
  })
})
