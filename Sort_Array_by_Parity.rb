#################### SORT ARRAY BY PARITY ####################

# Given an array A of non-negative integers, return an array 
# consisting of all the even elements of A, followed by all the 
# odd elements of A.

# You may return any answer array that satisfies this condition.

# Example 1: 
# Input: [3,1,2,4]
# Output: [2,4,3,1]
# The outputs [4,2,3,1], [2,4,1,3], and [4,2,1,3] would also be accepted.

# Note: 
# 1. 1 <= A.length <= 5000
# 2. 0 <= A[i] <= 5000


#################### SOLUTION ####################
# @param {Integer[]} a
# @return {Integer[]}
def sort_array_by_parity(a)
    even_arr = []
    odd_arr = []
    # separate the even and odd values into their own array
    for i in 0...a.length
        if (a[i]%2) == 0
            even_arr.push a[i]
        else
            odd_arr.push a[i]
        end
    end
    
    # append all odd values onto the end of even values 
    for i in 0...odd_arr.length
        even_arr.push odd_arr[i]
    end
    even_arr
end

a = [3,1,2,4]
b = [7,2,9,3,1]
c = [2,1]
d = [1,4]
e = [6,2,9,8,3,1,7]


puts "Expected: [2, 4, 3, 1] -- Actual: #{sort_array_by_parity(a)}"
puts "Expected: [2, 7, 9, 3, 1] -- Actual: #{sort_array_by_parity(b)}"
puts "Expected: [2, 1] -- Actual: #{sort_array_by_parity(c)}"
puts "Expected: [4, 1] -- Actual: #{sort_array_by_parity(d)}"
puts "Expected: [6, 2, 8, 9, 3, 1, 7] -- Actual: #{sort_array_by_parity(e)}"