#################### FLIPPING AN IMAGE ####################

# Given a binary matrix A, we want to flip the image horizontally, 
# then invert it, and return the resulting image.

# To flip an image horizontally means that each row of the image is 
# reversed.  For example, flipping [1, 1, 0] horizontally results in [0, 1, 1].

# To invert an image means that each 0 is replaced by 1, and each 1 
# is replaced by 0. For example, inverting [0, 1, 1] results in [1, 0, 0].

# Example 1:
# Input: [[1,1,0],[1,0,1],[0,0,0]]
# Output: [[1,0,0],[0,1,0],[1,1,1]]
# Explanation: First reverse each row: [[0,1,1],[1,0,1],[0,0,0]].
# Then, invert the image: [[1,0,0],[0,1,0],[1,1,1]]

# Example 2:
# Input: [[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]]
# Output: [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]]
# Explanation: First reverse each row: [[0,0,1,1],[1,0,0,1],[1,1,1,0],[0,1,0,1]].
# Then invert the image: [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]]

# Notes:
# - 1 <= A.length = A[0].length <= 20
# - 0 <= A[i][j] <= 1


#################### SOLUTION ####################
# @param {Integer[][]} a
# @return {Integer[][]}
def flip_and_invert_image(a)
    return a if a.nil?
    rows = a.length
    columns = a[0].length
    b = Array.new(rows){Array.new(columns)}
    # create the reversed and inverted image all into
    # a new array
    # first reverse each value, then we invert the new value
    for i in 0...a.length
        for j in 0...a[i].length
            opposite_row = (a[i].length-1) - j            
            b[i][j] = a[i][opposite_row]
            if b[i][j] == 1
                b[i][j] = 0
            else
                b[i][j] = 1
            end
        end
    end
    b
end

a1 = [[1,1,0],[1,0,1],[0,0,0]]
a2 = [[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]]

puts "Expected: [[1, 0, 0], [0, 1, 0], [1, 1, 1]] -- Actual: #{flip_and_invert_image(a1)}"
puts "Expected: [[1, 1, 0, 0], [0, 1, 1, 0], [0, 0, 0, 1], [1, 0, 1, 0]] -- Actual: #{flip_and_invert_image(a2)}"