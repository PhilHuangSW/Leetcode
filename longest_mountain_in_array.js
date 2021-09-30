// #################### LONGEST MOUNTAIN IN ARRAY ####################

// Let's call any (contiguous) subarray B (of A) a *mountain* if the following properties hold:

// - B.length >= 3
// - There exists some 0 < i < B.length - 1 such that B[0] < B[1] < ... B[i-1] < B[i] > B[i+1] > ... > B[B.length - 1]

// (Note that B could be any subarray of A, including the entire array A.)

// Given an array A of integers, return the length of the longest mountain. 

// Return 0 if there is no mountain.

// **Example 1:**
// ```
// Input: [2,1,4,7,3,2,5]
// Output: 5
// Explanation: The largest mountain is [1,4,7,3,2] which has length 5.
// ```

// **Example 2:**
// ```
// Input: [2,2,2]
// Output: 0
// Explanation: There is no mountain.
// ```

// **Note:**
// - 0 <= A.length <= 10000
// - 0 <= A[i] <= 10000

// **Follow up:**
// - Can you solve it using only one pass?
// - Can you solve it in O(1) space?

// #################### SOLUTION ####################
/*
 * @param {number[]} A
 * @return {number}
 */
// TIME: O(n) -- SPACE: O(1)
var longestMountain = function (A) {
  if (A.length < 3) {
    return 0
  } else {
    var current = A[0]
    var count = 1
    var up = true
    var longest = 0
    for (let i = 1; i < A.length; i++) {
      if (A[i] == current && up == false) {
        if (count >= 3 && count > longest && up == false) {
          longest = count
        }
        count = 1
        up = true
      } else if (A[i] > current && up == true) {
        current = A[i]
        count += 1
      } else if (A[i] > current && up == false) {
        if (count >= 3 && count > longest && up == false) {
          longest = count
        }
        current = A[i]
        count = 2
        up = true
      } else if (A[i] < current && up == true && count >= 2) {
        current = A[i]
        count += 1
        up = false
      } else if (A[i] < current && up == false && count >= 2) {
        current = A[i]
        count += 1
      } else {
        if (count >= 3 && count > longest && up == false) {
          longest = count
        }
        current = A[i]
        count = 1
        up = true
      }
      // console.log(`count: ${count} -- longest: ${longest}`)
    }
  }
  if (count >= 3 && count > longest && up == false) {
    longest = count
  }
  return longest
};

const A1 = []
const A2 = [1]
const A3 = [1, 2]
const A4 = [1, 2, 3]
const A5 = [1, 3, 2]
const A6 = [7, 6, 5, 4, 3, 2, 5, 8, 5, 1]
const A7 = [4, 5, 7, 7, 6, 5, 4, 3, 5, 8, 9, 9, 8, 6, 5, 4]
const A8 = [1, 7, 2, 3, 6, 6, 5, 4, 3, 1]

describe("Longest Mountain", function () {
  it("returns the longest viable mountain in array", function () {
    expect(longestMountain(A1)).toEqual(0)
  })
  it("returns the longest viable mountain in array", function () {
    expect(longestMountain(A2)).toEqual(0)
  })
  it("returns the longest viable mountain in array", function () {
    expect(longestMountain(A3)).toEqual(0)
  })
  it("returns the longest viable mountain in array", function () {
    expect(longestMountain(A4)).toEqual(0)
  })
  it("returns the longest viable mountain in array", function () {
    expect(longestMountain(A5)).toEqual(3)
  })
  it("returns the longest viable mountain in array", function () {
    expect(longestMountain(A6)).toEqual(5)
  })
  it("returns the longest viable mountain in array", function () {
    expect(longestMountain(A7)).toEqual(0)
  })
  it("returns the longest viable mountain in array", function () {
    expect(longestMountain(A8)).toEqual(3)
  })
})