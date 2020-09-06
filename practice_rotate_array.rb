# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
    rows = matrix.length
    columns = matrix[0].length
    ans = Array.new(rows){Array.new(columns)}
    
    for i in 0...matrix.length
        for j in 0...matrix[i].length
            rotated_i = (matrix.length-1) - j
            rotated_j = i
            ans[i][j] = matrix[rotated_i][rotated_j]
        end
    end
    p ans
end