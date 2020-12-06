// #################### CAN PLACE FLOWERS ####################

// You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in **adjacent** plots.

// Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule.

// **Example 1:**
// ```
// Input: flowerbed = [1,0,0,0,1], n = 1
// Output: true
// ```

// **Example 2:**
// ```
// Input: flowerbed = [1,0,0,0,1], n = 2
// Output: false
// ```

// **Constraints:**
// - 1 <= flowerbed.length <= 2 * 104
// - flowerbed[i] is 0 or 1.
// - There are no two adjacent flowers in flowerbed.
// - 0 <= n <= flowerbed.length

// #################### SOLUTION ####################
/*
 * @param {number[]} flowerbed
 * @param {number} n
 * @return {boolean}
 */
var canPlaceFlowers = function(flowerbed, n) {
  if (n === 0) {
    return true;
  }
  if (flowerbed.length === 1) {
    if (flowerbed[0] === 0) {
      return true;
    } else {
      return false;
    }
  }

  if (flowerbed.length === n) {
    return false;
  }

  if (flowerbed.length === 2) {
    if (flowerbed[0] === 0 && flowerbed[1] === 0) {
      flowerbed[0] = 1;
      n -= 1;
      if (n === 0) {
        return true;
      }
    }
  }

  if (flowerbed[0] === 0 && flowerbed[1] === 0) {
    flowerbed[0] = 1;
    n -= 1;
    if (n === 0) {
      return true;
    }
  }
  if (flowerbed[flowerbed.length-1] === 0 && flowerbed[flowerbed.length-2] === 0) {
    flowerbed[flowerbed.length-1] = 1;
    n -= 1;
    if (n === 0) {
      return true;
    }
  }
  // console.log(`${flowerbed}`)
  for (let i = 1; i < flowerbed.length-2; i++) {
    // console.log(`flowerbed[${i}]: ${flowerbed[i]}`)
    if (flowerbed[i] === 1) {
      continue;
    } else {
      if (flowerbed[i-1] === 0 && flowerbed[i+1] === 0) {
        flowerbed[i] = 1; 
        n -= 1;
        if (n === 0) {
          return true;
        }
      }
    }
  }
  // console.log(`${flowerbed}`)
  return false;
};

const flowerbed1 = [1,0,0,0,1]
const n1 = 1
const flowerbed2 = [1,0,0,0,1]
const n2 = 2
const flowerbed3 = [1,0,0,0,1,0,0,0,0,0,1,0]
const n3 = 4
const flowerbed4 = [1,1,1,0,0,1,0,0,0,0]
const n4 = 2
const flowerbed5 = [1,1,1,0]
const n5 = 1

console.log(canPlaceFlowers(flowerbed1, n1))
describe("can place flowers?", function() {
  it("returns true if you can place n flowers, false otherwise", function() {
    expect(canPlaceFlowers(flowerbed1, n1)).toEqual(true);
  })
  it("returns true if you can place n flowers, false otherwise", function() {
    expect(canPlaceFlowers(flowerbed2, n2)).toEqual(false);
  })
  it("returns true if you can place n flowers, false otherwise", function() {
    expect(canPlaceFlowers(flowerbed3, n3)).toEqual(false);
  })
  it("returns true if you can place n flowers, false otherwise", function() {
    expect(canPlaceFlowers(flowerbed4, n4)).toEqual(true);
  })
  it("returns true if you can place n flowers, false otherwise", function() {
    expect(canPlaceFlowers(flowerbed5, n5)).toEqual(false);
  })
})