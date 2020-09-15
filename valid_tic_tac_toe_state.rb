#################### VALID TIC-TAC-TOE STATE ####################

# A Tic-Tac-Toe board is given as a string array board. Return True if 
# and only if it is possible to reach this board position during the 
# course of a valid tic-tac-toe game.

# The board is a 3 x 3 array, and consists of characters " ", "X", and 
# "O".  The " " character represents an empty square.

# Here are the rules of Tic-Tac-Toe:
# - Players take turns placing characters into empty squares (" ").
# - The first player always places "X" characters, while the second player always places "O" characters.
# - "X" and "O" characters are always placed into empty squares, never filled ones.
# - The game ends when there are 3 of the same (non-empty) character filling any row, column, or diagonal.
# - The game also ends if all squares are non-empty.
# - No more moves can be played if the game is over.

# Example 1:
# Input: board = ["O  ", "   ", "   "]
# Output: false
# Explanation: The first player always plays "X".

# Example 2:
# Input: board = ["XOX", " X ", "   "]
# Output: false
# Explanation: Players take turns making moves.

# Example 3:
# Input: board = ["XXX", "   ", "OOO"]
# Output: false

# Example 4:
# Input: board = ["XOX", "O O", "XOX"]
# Output: true

# Note:
# - board is a length-3 array of strings, where each string board[i] has length 3.
# - Each board[i][j] is a character in the set {" ", "X", "O"}.


#################### SOLUTION ####################
# @param {String[]} board
# @return {Boolean}
# brute force attempt, checks EVERY state, if anything returns false, 
# answer immediately returns false
def valid_tic_tac_toe(board)
  x_count, o_count = x_o_count(board)
  # "O" can never have more than "X" in any game of tic-tac-toe
  if o_count > x_count
      return false
  end
  # "X" can never have 2 more than "O" since it's a back and forth game
  if x_count - o_count > 1
      return false
  end
  
  # checks ALL win conditions in any given board state
  x_win, o_win = win(board)
  # there can never be 2 winners, so return false if both have true values
  if x_win == true && o_win == true
      return false
  elsif x_win || o_win
    # if "X" has won, "O" cannot possibly have an equal number of "X"s since
    # the game ends immediately
      if x_win == true
          if o_count == x_count
              return false
          end
      end
      # if "O" has won, "X" cannot have more than "O"
      if o_win == true
          if o_count < x_count
              return false
          end
      end
      return true
  end
  
  # if it gets to here, the board MUST be valid
  return true
end

# helper function to count the number of "X"s and "O"s on the board
def x_o_count(board)
  x_count = 0
  o_count = 0
  for i in 0..2
      for j in 0..2
          if board[i][j] == "X"
              x_count += 1
          elsif board[i][j] == "O"
              o_count += 1
          end
      end
  end
  return x_count, o_count
end

def win(board)
  x_win = false
  o_win = false
  for i in 0..2
    # checks all Horizontal Wins
      if board[i] == "XXX"
          x_win = true
      end
      if board[i] == "OOO"
          o_win = true
      end
  end
  # checks Diagonal Win \ for "X"
  if board[0][0] == "X" && board[1][1] == "X" && board[2][2] == "X"
      x_win = true
  end
  # checks Diagonal Win / for "X"
  if board[0][2] == "X" && board[1][1] == "X" && board[2][0] == "X"
      x_win = true
  end
  # checks Diagonal Win \ for "O"
  if board[0][0] == "O" && board[1][1] == "O" && board[2][2] == "O"
      o_win = true
  end
  # checks Diagonal Win / for "O"
  if board[0][2] == "O" && board[1][1] == "O" && board[2][0] == "O"
      o_win = true
  end
  # checks Vertical Wins | for "X"
  if board[0][0] == "X" && board[1][0] == "X" && board[2][0] == "X"
      x_win = true
  end
  if board[0][1] == "X" && board[1][1] == "X" && board[2][1] == "X"
      x_win = true
  end
  if board[0][2] == "X" && board[1][2] == "X" && board[2][2] == "X"
      x_win = true
  end
  # checks Vertical Wins | for "O"
  if board[0][0] == "O" && board[1][0] == "O" && board[2][0] == "O"
      o_win = true
  end
  if board[0][1] == "O" && board[1][1] == "O" && board[2][1] == "O"
      o_win = true
  end
  if board[0][2] == "O" && board[1][2] == "O" && board[2][2] == "O"
      o_win = true
  end
  return x_win, o_win
end

board1 = ["O  ","   ","   "]
board2 = ["XOX", " X ", "   "]
board3 = ["XXX", "   ", "OOO"]
board4 = ["XOX", "O O", "XOX"]
board5 = ["XO ","XO ","XO "]
board6 = ["XOX", "OX ", "XO "]
board7 = ["OXX","XOX","OXO"]

puts "Expected: false -- Actual: #{valid_tic_tac_toe(board1)}"
puts "Expected: false -- Actual: #{valid_tic_tac_toe(board2)}"
puts "Expected: false -- Actual: #{valid_tic_tac_toe(board3)}"
puts "Expected: true -- Actual: #{valid_tic_tac_toe(board4)}"
puts "Expected: false -- Actual: #{valid_tic_tac_toe(board5)}"
puts "Expected: true -- Actual: #{valid_tic_tac_toe(board6)}"
puts "Expected: false -- Actual: #{valid_tic_tac_toe(board7)}"

