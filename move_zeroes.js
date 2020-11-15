// #################### MOVE ZEROES ####################

// Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

// **Example:**
// ```
// Input: [0,1,0,3,12]
// Output: [1,3,12,0,0]
// ```

// **Note:**
// - You must do this in-place without making a copy of the array.
// - Minimize the total number of operations.

// #################### SOLUTION ####################
/*
 * @param {number[]} nums
 * @return {void} Do not return anything, modify nums in-place instead.
 */
var moveZeroes = function(nums) {
  if (nums.length <= 1) {
    return nums
  } else {
    let idx = 0
    let threshold = nums.length
    while (idx != threshold) {
      if (nums[idx] == 0) {
        nums.splice(idx, 1)
        nums.push(0)
        threshold--
      } else {
        idx++
      }
    }
  }
  return nums
};

const nums1 = [0,1,0,3,12]
const nums2 = [0,1,0,3,10,0,4,7,9,3,6,0,2,0]
const nums3 = [1,0]
const nums4 = [0,1]

describe("Move Zeroes", function() {
  it("returns the array with all the zeroes at the end of the array", function() {
    expect(moveZeroes(nums1)).toEqual([1,3,12,0,0])
  })
  it("returns the array with all the zeroes at the end of the array", function() {
    expect(moveZeroes(nums2)).toEqual([1,3,10,4,7,9,3,6,2,0,0,0,0,0])
  })
  it("returns the array with all the zeroes at the end of the array", function() {
    expect(moveZeroes(nums3)).toEqual([1,0])
  })
  it("returns the array with all the zeroes at the end of the array", function() {
    expect(moveZeroes(nums4)).toEqual([1,0])
  })
})