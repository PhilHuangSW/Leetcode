#################### BEST TIME TO BUY AND SELL STOCK ####################

# Say you have an array for which the ith element is the price of a given stock on day i.

# If you were only permitted to complete at most one transaction (i.e., buy one and sell 
# one share of the stock), design an algorithm to find the maximum profit.

# Note that you cannot sell a stock before you buy one.

# Example 1:
# Input: [7,1,5,3,6,4]
# Output: 5
# Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
#              Not 7-1 = 6, as selling price needs to be larger than buying price.

# Example 2:
# Input: [7,6,4,3,1]
# Output: 0
# Explanation: In this case, no transaction is done, i.e. max profit = 0.


#################### SOLUTION ####################
# @param {Integer[]} prices
# @return {Integer}
# def max_profit(prices)
#     profit = 0
#     all_prices = []
#     # if prices only has 0 or 1 element, return 0 since you can't get any profit
#     return profit if prices.length < 2

#     # we return 0 profit because all following elements are larger, thus there's no
#     # possibility to get profit
#     if (prices.reverse) == prices
#         return profit
#     end
    
#     # we return the difference between the last element and the first element since
#     # all following elements are larger
#     if (prices.sort) == prices
#         profit = prices[prices.length-1] - prices[0]
#         return profit
#     end
    
#     # place all profits into an array of profits
#     for i in 0...(prices.length-1)
#         for j in (i+1)...prices.length
#             all_prices << prices[j] - prices[i]
#         end
#     end

#     # get the max profit
#     # for i in 0...all_prices.length
#     #     if all_prices[i] >= profit
#     #         profit = all_prices[i]
#     #     end
#     # end
#     profit = all_prices.max
#     return 0 if profit < 0
#     profit
# end

def max_profit(prices)
	return 0 if prices.length < 2
	profit = 0
	lowest = 999999999999
	for i in 0...prices.length
		if prices[i] < lowest
			lowest = prices[i]
		elsif (prices[i] - lowest > profit)
			profit = prices[i] - lowest
		end
	end
	profit
end

prices1 = [10,7,5,8,11,9]
prices2 = [7,6,4,3,1]
prices3 = [7,1,5,3,6,4]
prices4 = [2,1,2,1,0,1,2]
prices5 = [3,3,5,0,0,3,1,4]
prices6 = [1,2]

puts "Expected: 6 -- Actual: #{max_profit(prices1)}" 
puts "Expected: 0 -- Actual: #{max_profit(prices2)}" 
puts "Expected: 5 -- Actual: #{max_profit(prices3)}" 
puts "Expected: 2 -- Actual: #{max_profit(prices4)}" 
puts "Expected: 4 -- Actual: #{max_profit(prices5)}" 
puts "Expected: 1 -- Actual: #{max_profit(prices6)}" 
