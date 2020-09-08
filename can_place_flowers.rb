#################### CAN PLACE FLOWERS ####################

# Suppose you have a long flowerbed in which some of the plots are planted 
# and some are not. However, flowers cannot be planted in adjacent plots - 
# they would compete for water and both would die.

# Given a flowerbed (represented as an array containing 0 and 1, where 0 means 
# empty and 1 means not empty), and a number n, return if n new flowers can be 
# planted in it without violating the no-adjacent-flowers rule.

# Example 1:
# Input: flowerbed = [1,0,0,0,1], n = 1
# Output: True

# Example 2:
# Input: flowerbed = [1,0,0,0,1], n = 2
# Output: False

# Note:
# - The input array won't violate no-adjacent-flowers rule.
# - The input array size is in the range of [1, 20000].
# - n is a non-negative integer which won't exceed the input array size.


#################### SOLUTION ####################
# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
    plots = 0
    # checks the case where [0,0,..] allows for 1 flower to be placed in flowerbed[0]
    if flowerbed[0] == 0 && flowerbed[1] == 0
        flowerbed[0] = 1
        plots += 1
    end

    # if a flower can be placed in a plot, change the value and place a flower in that plot, 
    # then increment plot to denote we were able to place a flower
    # Note: we check edge cases [0,0,..] above and [..,0,0] below
    for i in 1...flowerbed.length-1
        if flowerbed[i-1] == 0 && flowerbed[i+1] == 0
            if flowerbed[i] == 0
                flowerbed[i] = 1
                plots += 1
            end
        end
    end

    # checks the case where [..,0,0] allows for 1 flower to be placed in flowerbed[flowerbed.length-1]
    if flowerbed[flowerbed.length-1] == 0 && flowerbed[flowerbed.length-2] == 0
        flowerbed[flowerbed.length-1] = 1
        plots += 1
    end    
    
    # if we placed equal or more flowers into plots that n, return true
    plots >= n ? true : false
end

flowerbed1 = [1,0,0,0,1]
n1 = 1
flowerbed2 = [1,0,0,0,1]
n2 = 2
flowerbed3 = [0,0,0,1,0,1,0,0]
n3 = 3
flowerbed4 = [0,0,0]
n4 = 2

puts "Expected: true -- Actual: #{can_place_flowers(flowerbed1, n1)}"
puts "Expected: false -- Actual: #{can_place_flowers(flowerbed2, n2)}"
puts "Expected: false -- Actual: #{can_place_flowers(flowerbed3, n3)}"
puts "Expected: true -- Actual: #{can_place_flowers(flowerbed4, n4)}"

