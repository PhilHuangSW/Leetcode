#################### GRUMPY BOOKSTORE OWNER ####################

# Today, the bookstore owner has a store open for customers.length 
# minutes.  Every minute, some number of customers (customers[i]) 
# enter the store, and all those customers leave after the end of that 
# minute.

# On some minutes, the bookstore owner is grumpy.  If the bookstore 
# owner is grumpy on the i-th minute, grumpy[i] = 1, otherwise 
# grumpy[i] = 0.  When the bookstore owner is grumpy, the customers 
# of that minute are not satisfied, otherwise they are satisfied.

# The bookstore owner knows a secret technique to keep themselves not 
# grumpy for X minutes straight, but can only use it once.

# Return the maximum number of customers that can be satisfied throughout 
# the day.

# Example 1:
# Input: customers = [1,0,1,2,1,1,7,5], grumpy = [0,1,0,1,0,1,0,1], X = 3
# Output: 16
# Explanation: The bookstore owner keeps themselves not grumpy for 
# the last 3 minutes. The maximum number of customers that can be 
# satisfied = 1 + 1 + 1 + 1 + 7 + 5 = 16.

# Note:
# - 1 <= X <= customers.length == grumpy.length <= 20000
# - 0 <= customers[i] <= 1000
# - 0 <= grumpy[i] <= 1


#################### SOLUTION ####################
# @param {Integer[]} customers
# @param {Integer[]} grumpy
# @param {Integer} x
# @return {Integer}
def max_satisfied(customers, grumpy, x)
  compare = 0
  most_satisfied = 0
  index = 0
  left = 0
  # create a starting "window" to look through when is best for the 
  # bookkeeper to not be grumpy i.e. 
  # customers = [1,0,1,2,1,1,7,5]
  # grumpy =    [0,1,0,1,0,1,0,1]
  # x = 3
  # the window will be [[1,0,1] ,2,1,1,7,5]
  
  for i in 0...x
    if grumpy[i] == 1
      compare += customers[i]
    end
  end
  most_satisfied = compare

  # this window increment our window to [1, [0,1,2] ,1,1,7,5] and keep 
  # moving along until window is [1,0,1,2,1, [1,7,5]]
  # this calculates which window gives you the most customers had the 
  # bookkeeper lost the customers due to being grumpy
  for i in x...customers.length
    compare -= customers[left] if grumpy[left] == 1
    if grumpy[i] == 1
      compare += customers[i]
      if compare > most_satisfied
        most_satisfied = compare
      end
    end
    left += 1
  end
  # calculates the customers the bookkeeper should have since he isn't grumpy
  for i in 0...customers.length
    if grumpy[i] == 0
      most_satisfied += customers[i]
    end
  end
  most_satisfied
end

customers1 = [1,0,1,2,1,1,7,5]
grumpy1 =    [0,1,0,1,0,1,0,1]
x1 = 3
customers2 = [0,1,2,4,0,0,0,10,2,1]
grumpy2 =    [0,1,0,1,0,1,1,1, 0,1]
x2 = 3
customers3 = [1,0,1,5,10,12,0,1,12]
grumpy3 =    [0,1,1,1,1,1,0,0,1]
x3 = 3
customers4 = [1,0,1,5,10,12,0,1,0,1]
grumpy4 =    [0,1,0,0,1,0,1,0,1,1]
x4 = 2
customers5 = [10]
grumpy5 =    [1]
x5 = 0
customers6 = [10]
grumpy6 =    [1]
x6 = 1

puts "Expected: 16 -- Actual: #{max_satisfied(customers1, grumpy1, x1)}"
puts "Expected: 15 -- Actual: #{max_satisfied(customers2, grumpy2, x2)}"
puts "Expected: 29 -- Actual: #{max_satisfied(customers3, grumpy3, x3)}"
puts "Expected: 30 -- Actual: #{max_satisfied(customers4, grumpy4, x4)}"
puts "Expected: 0 -- Actual: #{max_satisfied(customers5, grumpy5, x5)}"
puts "Expected: 10 -- Actual: #{max_satisfied(customers6, grumpy6, x6)}"