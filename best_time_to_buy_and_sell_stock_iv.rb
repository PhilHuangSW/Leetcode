#################### BEST TIME TO BUY AND SELL STOCK IV ####################

# You are given an integer array prices where prices[i] is the price of a given stock on the ith day.

# Design an algorithm to find the maximum profit. You may complete at most k transactions.

# **Notice** that you may not engage in multiple transactions simultaneously (i.e., you must sell the stock before you buy again).

# **Example 1:**
# ```
# Input: k = 2, prices = [2,4,1]
# Output: 2
# Explanation: Buy on day 1 (price = 2) and sell on day 2 (price = 4), profit = 4-2 = 2.
# ```

# **Example 2:**
# ```
# Input: k = 2, prices = [3,2,6,5,0,3]
# Output: 7
# Explanation: Buy on day 2 (price = 2) and sell on day 3 (price = 6), profit = 6-2 = 4. Then buy on day 5 (price = 0) and sell on day 6 (price = 3), profit = 3-0 = 3.
# ```

# **Constraints:**
# - 0 <= k <= 109
# - 0 <= prices.length <= 104
# - 0 <= prices[i] <= 1000

#################### SOLUTION ####################
# @param {Integer} k
# @param {Integer[]} prices
# @return {Integer}
def max_profit(k, prices)
  n = prices.length
  # edge cases
  if prices.empty? || k == 0
    return 0
  end

  # in the case where you may have more transactions than is possible
  if 2*k > n
    res = 0
    for i, j in (prices[1...prices.length].zip(prices[0...prices.length-1]))
      res += [0, i-j].max
    end
    return res
  end

  # dp[i][used_k][is_hold] = balance
  # is_hold: 0 not_hold, 1 hold
  dp = Array.new(n) { Array.new(k+1) { Array.new(2){-1.0/0}}}
  dp[0][0][0] = 0
  dp[0][1][1] = -prices[0]

  for i in 1...n
    for j in 0...k+1
      dp[i][j][0] = [dp[i-1][j][0], dp[i-1][j][1]+prices[i]].max
      if j > 0
        dp[i][j][1] = [dp[i-1][j][1], dp[i-1][j-1][0]-prices[i]].max
      end
    end
  end

  res = []
  for j in 0...k+1
    res << dp[n-1][j][0]
  end
  res.max
end

k1 = 2
prices1 = [2,4,1]
k2 = 2
prices2 = [3,2,6,5,0,3]
k3 = 0
prices3 = [3,2,6,5,0,3]
k4 = 2
prices4 = []
k5 = 2
prices5 = [1,2,3,4,5,6,7]

# puts "Expected: 2 -- Actual: #{max_profit(k1, prices1)}"
# puts "Expected: 7 -- Actual: #{max_profit(k2, prices2)}"
# puts "Expected: 0 -- Actual: #{max_profit(k3, prices3)}"
# puts "Expected: 0 -- Actual: #{max_profit(k4, prices4)}"
puts "Expected: 6 -- Actual: #{max_profit(k5, prices5)}"