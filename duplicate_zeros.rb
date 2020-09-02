#################### DUPLICATE ZEROS ####################

# Given a fixed length array arr of integers, 
# duplicate each occurrence of zero, shifting the 
# remaining elements to the right.

# Note that elements beyond the length of the original 
# array are not written.

# Do the above modifications to the input array in place, 
# do not return anything from your function.

# Example 1:
# Input: [1,0,2,3,0,4,5,0]
# Output: null
# Explanation: After calling your function, the input array is modified to: [1,0,0,2,3,0,0,4]

# Example 2:
# Input: [1,2,3]
# Output: null
# Explanation: After calling your function, the input array is modified to: [1,2,3]

# Note:
# - 1 <= arr.length <= 10000
# - 0 <= arr[i] <= 9


#################### SOLUTION ####################
# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
  count = 0
  count_end = arr.length
  while (count < count_end)
    # this will modify and add 0's to all occurrences EXCEPT for the 
    # last 0 in the array (since the size of the array cannot change)
    if arr[count] == 0 && (count != count_end-1)
      # we start from the end and shift everything forward one to 
      # make room for the 0
      for i in (arr.length-1).downto(count+2)
        arr[i] = arr[i-1]
      end
      arr[count+1] = 0
      count += 1
    end
    count += 1
  end
end