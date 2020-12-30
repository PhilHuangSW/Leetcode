// According to Wikipedia's article: "The **Game of Life**, also known simply as **Life**, is a cellular automaton devised by the British mathematician John Horton Conway in 1970."

// The board is made up of an m x n grid of cells, where each cell has an initial state: **live** (represented by a 1) or **dead** (represented by a 0). Each cell interacts with its eight neighbors (horizontal, vertical, diagonal) using the following four rules (taken from the above Wikipedia article):

// 1. Any live cell with fewer than two live neighbors dies as if caused by under-population.
// 2. Any live cell with two or three live neighbors lives on to the next generation.
// 3. Any live cell with more than three live neighbors dies, as if by over-population.
// 4. Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.

// The next state is created by applying the above rules simultaneously to every cell in the current state, where births and deaths occur simultaneously. Given the current state of the m x n grid board, return the *next state*.

// **Example 1:**
// ```
// Input: board = [[0,1,0],[0,0,1],[1,1,1],[0,0,0]]
// Output: [[0,0,0],[1,0,1],[0,1,1],[0,1,0]]
// ```

// **Example 2:**
// ```
// Input: board = [[1,1],[1,0]]
// Output: [[1,1],[1,1]]
// ```

// **Constraints:**
// - m == board.length
// - n == board[i].length
// - 1 <= m, n <= 25
// - board[i][j] is 0 or 1.
 

// **Follow up:**
// - Could you solve it in-place? Remember that the board needs to be updated simultaneously: You cannot update some cells first and then use their updated values to update other cells.
// - In this question, we represent the board using a 2D array. In principle, the board is infinite, which would cause problems when the active area encroaches upon the border of the array (i.e., live cells reach the border). How would you address these problems?

/*
 * @param {number[][]} board
 * @return {void} Do not return anything, modify board in-place instead.
 */
var gameOfLife = function(board) {
  let nextState = []
  for (let i = 0; i < board.length; i++) {
    let temp = []
    for (let j = 0; j < board[i].length; j++) {
      let neighbors = findNeighbors(i, j, board)
      if (board[i][j] === 1) {
        if (neighbors < 2) {
          temp.push(0)
        } else if (neighbors === 2 || neighbors === 3) {
          temp.push(1)
        } else {
          temp.push(0)
        }
      } else {
        if (neighbors === 3) {
          temp.push(1)
        } else {
          temp.push(0)
        }
      }
    }
    nextState.push(temp)
  }
  return nextState
};

var findNeighbors = function(x, y, board) {
  let oneTally = 0
  if (y != 0) {
    if (x != 0) {
      if (board[x-1][y-1] === 1) {
        oneTally += 1
      }
    }
    if (board[x][y-1] === 1) {
      oneTally += 1
    }
    if (x != board[0].length) {
      if (board[x+1][y-1] === 1) {
        oneTally += 1
      }
    }
  }

  if (x != 0) {
    if (board[x-1][y] === 1) {
      oneTally += 1
    }
  }
  if (x != board[0].length) {
    if (board[x+1][y] === 1) {
      oneTally += 1
    }
  }

  if (y != board.length) {
    if (x != 0) {
      if (board[x-1][y+1] === 1) {
        oneTally += 1
      }
    }
    if (board[x][y+1] === 1) {
      oneTally += 1
    }
    if (x != board[0].length) {
      if (board[x+1][y+1] === 1) {
        oneTally += 1
      }
    }
  }
  return oneTally
}

var board = [[0,1,0],[0,0,1],[1,1,1],[0,0,0]]
console.log(gameOfLife(board))