#################### THREE CONSECUTIVE ODDS ####################

# Given an integer array arr, return true if there are three consecutive 
# odd numbers in the array. Otherwise, return false.

# Example 1:
# Input: arr = [2,6,4,1]
# Output: false
# Explanation: There are no three consecutive odds.

# Example 2:
# Input: arr = [1,2,34,3,4,5,7,23,12]
# Output: true
# Explanation: [5,7,23] are three consecutive odds.

# Constraints:
# - 1 <= arr.length <= 1000
# - 1 <= arr[i] <= 1000


#################### SOLUTION ####################
# @param {Integer[]} arr
# @return {Boolean}
def three_consecutive_odds(arr)
    if arr.length < 3
        return false
    end
    
    count = 0 # value to keep track of seen odds, resets if it sees even
    for i in 0...arr.length
        # odd checker
        if (arr[i]%2) == 1
            count += 1
            if count == 3
                return true
            end
        else
            count = 0
        end
    end
    false
end

arr1 = [2,6,4,1]
arr2 = [1,2,34,3,4,5,7,23,12]
arr3 = [1,7,23,19,4,9]
arr4 = [12,10,1,2,3,5]
arr5 = [2,6,5,7,4,10,3]
arr6 = []
arr7 = [1,3,5]
arr8 = [2,4,6]

puts "Expected: false -- Actual: #{three_consecutive_odds(arr1)}"
puts "Expected: true -- Actual: #{three_consecutive_odds(arr2)}"
puts "Expected: true -- Actual: #{three_consecutive_odds(arr3)}"
puts "Expected: false -- Actual: #{three_consecutive_odds(arr4)}"
puts "Expected: false -- Actual: #{three_consecutive_odds(arr5)}"
puts "Expected: false -- Actual: #{three_consecutive_odds(arr6)}"
puts "Expected: true -- Actual: #{three_consecutive_odds(arr7)}"
puts "Expected: false -- Actual: #{three_consecutive_odds(arr8)}"
