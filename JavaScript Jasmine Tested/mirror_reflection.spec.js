// #################### MIRROR REFLECTION ####################

// There is a special square room with mirrors on each of the four walls.  Except for the southwest corner, there are receptors on each of the remaining corners, numbered 0, 1, and 2.

// The square room has walls of length p, and a laser ray from the southwest corner first meets the east wall at a distance q from the 0th receptor.

// Return the number of the receptor that the ray meets first.  (It is guaranteed that the ray will meet a receptor eventually.)

// **Example 1:**
// ```
// Input: p = 2, q = 1
// Output: 2
// Explanation: The ray meets receptor 2 the first time it gets reflected back to the left wall.
// ```

// **Note:**
// - 1 <= p <= 1000
// - 0 <= q <= p

// #################### SOLUTION ####################
/*
 * @param {number} p
 * @param {number} q
 * @return {number}
 */
var mirrorReflection = function(p, q) {
  let g = gcd(p, q)
  p /= g
  p %= 2
  q /= g
  q %= 2
  
  if (p == 1 && q == 1) {
    return 1
  }
  if (p == 1) {
    return 0
  } else {
    return 2
  }
};

function gcd(a, b) {
  if (a == 0) {
    return b
  }
  return gcd(b % a, a)
}

const p1 = 2
const q1 = 1
const p2 = 9
const q2 = 3
const p3 = 8
const q3 = 4
const p4 = 12
const q4 = 5
const p5 = 18
const q5 = 4

describe("Mirror Reflection", function() {
  it("returns the receptor that laser first hits", function() {
    expect(mirrorReflection(p1, q1)).toEqual(2)
  })
  it("returns the receptor that laser first hits", function() {
    expect(mirrorReflection(p2, q2)).toEqual(1)
  })
  it("returns the receptor that laser first hits", function() {
    expect(mirrorReflection(p3, q3)).toEqual(2)
  })
  it("returns the receptor that laser first hits", function() {
    expect(mirrorReflection(p4, q4)).toEqual(2)
  })
  it("returns the receptor that laser first hits", function() {
    expect(mirrorReflection(p5, q5)).toEqual(0)
  })
})