// #################### MINIMUM COST TO MOVE CHIPS TO THE SAME POSITION ####################

// # We have n chips, where the position of the ith chip is position[i].

// # We need to move all the chips to **the same position**. In one step, we can change the position of the ith chip from position[i] to:

// # - position[i] + 2 or position[i] - 2 with cost = 0.
// # - position[i] + 1 or position[i] - 1 with cost = 1.

// # Return *the minimum cost* needed to move all the chips to the same position.

// # **Example 1:**
// # ```
// # Input: position = [1,2,3]
// # Output: 1
// # Explanation: First step: Move the chip at position 3 to position 1 with cost = 0.
// # Second step: Move the chip at position 2 to position 1 with cost = 1.
// # Total cost is 1.
// # ```

// # **Example 2:**
// # ```
// # Input: position = [2,2,2,3,3]
// # Output: 2
// # Explanation: We can move the two chips at poistion 3 to position 2. Each move has cost = 1. The total cost = 2.
// # ```

// # **Example 3:**
// # ```
// # Input: position = [1,1000000000]
// # Output: 1
// # ```

// # **Constraints:**
// # - 1 <= position.length <= 100
// # - 1 <= position[i] <= 10^9

// #################### SOLUTION ####################
/*
 * @param {number[]} position
 * @return {number}
 */
var minCostToMoveChips = function(position) {
  if (position.length === 1) {
    return 0
  }
  let odd_count = 0
  let even_count = 0
  for (let i = 0; i < position.length; i++) {
    if (position[i]%2 === 1) {
      odd_count += 1
    } else {
      even_count += 1
    }
  }
  return Math.min(odd_count, even_count)
};

const position1 = [1,2,3]
const position2 = [2,2,2,3,3]
const position3 = [1,1000000000]
const position4 = [1,1,1,1,1,2,2,2]
const position5 = [1]
const position6 = [1,2]
const position7 = [2,2,2,2,2,2,2]

describe ("Min Cost to Move Chips", function(){
  it ("should return the min cost to move chips to same spot", function(){
    expect(minCostToMoveChips(position1)).toEqual(1)
  }),
  it ("should return the min cost to move chips to same spot", function(){
    expect(minCostToMoveChips(position2)).toEqual(2)
  }),
  it ("should return the min cost to move chips to same spot", function(){
    expect(minCostToMoveChips(position3)).toEqual(1)
  }),
  it ("should return the min cost to move chips to same spot", function(){
    expect(minCostToMoveChips(position4)).toEqual(3)
  }),
  it ("should return the min cost to move chips to same spot", function(){
    expect(minCostToMoveChips(position5)).toEqual(0)
  }),
  it ("should return the min cost to move chips to same spot", function(){
    expect(minCostToMoveChips(position6)).toEqual(1)
  }),
  it ("should return the min cost to move chips to same spot", function(){
    expect(minCostToMoveChips(position7)).toEqual(0)
  })
})