#################### FLIPPING AN IMAGE ####################

# Given a binary matrix A, we want to flip the image horizontally, then invert it, and return the resulting image.

# To flip an image horizontally means that each row of the image is reversed.  For example, flipping [1, 1, 0] horizontally results in [0, 1, 1].

# To invert an image means that each 0 is replaced by 1, and each 1 is replaced by 0. For example, inverting [0, 1, 1] results in [1, 0, 0].

# **Example 1:**
# ```
# Input: [[1,1,0],[1,0,1],[0,0,0]]
# Output: [[1,0,0],[0,1,0],[1,1,1]]
# Explanation: First reverse each row: [[0,1,1],[1,0,1],[0,0,0]].
# Then, invert the image: [[1,0,0],[0,1,0],[1,1,1]]
# ```

# **Example 2:**
# ```
# Input: [[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]]
# Output: [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]]
# Explanation: First reverse each row: [[0,0,1,1],[1,0,0,1],[1,1,1,0],[0,1,0,1]].
# Then invert the image: [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]]
# ```

# **Notes:**
# - 1 <= A.length = A[0].length <= 20
# - 0 <= A[i][j] <= 1

#################### SOLUTION ####################
require 'rspec/autorun'

# @param {Integer[][]} a
# @return {Integer[][]}
# TIME: O(n) -- SPACE O(1)
def flip_and_invert_image(a)
  return a if a.empty?
  last_idx_helper = 1
  for i in 0...a.length
    if a[i].empty?
      next
    elsif a[i].length == 1
      if a[i][0] == 1
        a[i][0] = 0
      else
        a[i][0] = 1
      end
    else
      for j in 0...(a[i].length/2)
        if a[i][j] == 1
          temp = 0
          if a[i][a[i].length-last_idx_helper] == 1
            a[i][j] = 0
          else
            a[i][j] = 1
          end
          a[i][a[i].length-last_idx_helper] = temp
        else
          temp = 1
          if a[i][a[i].length-last_idx_helper] == 1
            a[i][j] = 0
          else
            a[i][j] = 1
          end
          a[i][a[i].length-last_idx_helper] = temp
        end
        last_idx_helper += 1
      end
      if a[i].length%2 == 1
        if a[i][a[i].length/2] == 1
          a[i][a[i].length/2] = 0
        else
          a[i][a[i].length/2] = 1
        end
      end
      last_idx_helper = 1
    end
  end
  a
end

a1 = [[1,1,0],[1,0,1],[0,0,0]]
a2 = [[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]]
a3 = []
a4 = [[]]
a5 = [[1],[0],[1,0,0,1,1,0],[1,0,1]]
a6 = [[1,0,1],[0,1,1],[1,0,0,1,1,0],[1,0,1]]

describe "Flipping an Image" do
  it "returns the flipped and reversed image of the matrix" do
    expect(flip_and_invert_image(a1)).to eq([[1,0,0],[0,1,0],[1,1,1]])
  end
  it "returns the flipped and reversed image of the matrix" do
    expect(flip_and_invert_image(a2)).to eq([[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]])
  end
  it "returns the flipped and reversed image of the matrix" do
    expect(flip_and_invert_image(a3)).to eq([])
  end
  it "returns the flipped and reversed image of the matrix" do
    expect(flip_and_invert_image(a4)).to eq([[]])
  end
  it "returns the flipped and reversed image of the matrix" do
    expect(flip_and_invert_image(a5)).to eq([[0],[1],[1,0,0,1,1,0],[0,1,0]])
  end
  it "returns the flipped and reversed image of the matrix" do
    expect(flip_and_invert_image(a6)).to eq([[0,1,0],[0,0,1],[1,0,0,1,1,0],[0,1,0]])
  end
end