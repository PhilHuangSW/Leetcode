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
    for i in 0...a.length
        if (a[i]%2) == 0
            even_arr.push a[i]
        else
            odd_arr.push a[i]
        end
    end
    
    for i in 0...odd_arr.length
        even_arr.push odd_arr[i]
    end
    even_arr
end