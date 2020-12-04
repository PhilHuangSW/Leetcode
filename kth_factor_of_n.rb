# #################### THE KTH FACTOR OF N ####################

# Given two positive integers n and k.

# A factor of an integer n is defined as an integer i where n % i == 0.

# Consider a list of all factors of n sorted in **ascending order**, return the kth *factor* in this list or return -1 if n has less than k factors.

# **Example 1:**
# ```
# Input: n = 12, k = 3
# Output: 3
# Explanation: Factors list is [1, 2, 3, 4, 6, 12], the 3rd factor is 3.
# ```

# **Example 2:**
# ```
# Input: n = 7, k = 2
# Output: 7
# Explanation: Factors list is [1, 7], the 2nd factor is 7.
# ```

# **Example 3:**
# ```
# Input: n = 4, k = 4
# Output: -1
# Explanation: Factors list is [1, 2, 4], there is only 3 factors. We should return -1.
# ```

# **Example 4:**
# ```
# Input: n = 1, k = 1
# Output: 1
# Explanation: Factors list is [1], the 1st factor is 1.
# ```

# **Example 5:**
# ```
# Input: n = 1000, k = 3
# Output: 4
# Explanation: Factors list is [1, 2, 4, 5, 8, 10, 20, 25, 40, 50, 100, 125, 200, 250, 500, 1000].
# ```

# **Constraints:**
# - 1 <= k <= n <= 1000

# #################### SOLUTION ####################
require 'rspec/autorun'

# @param {Integer} n
# @param {Integer} k
# @return {Integer}
# TIME: O(n) -- SPACE: O(1)
def kth_factor(n, k)
  return 1 if k == 1

  k -= 1
  for i in 2..n
    if (n % i == 0)
      k -= 1
      return i if k == 0
    end
  end

  return -1
end

n1 = 12
k1 = 3
n2 = 7
k2 = 2
n3 = 4
k3 = 4
n4 = 1
k4 = 1
n5 = 10
k5 = 4
n6 = 1000
k6 = 3
n7 = 123
k7 = 3

describe "kth Factor" do
  it "returns the kth factor in n" do
    expect(kth_factor(n1, k1)).to eq(3)
  end
  it "returns the kth factor in n" do
    expect(kth_factor(n2, k2)).to eq(7)
  end
  it "returns the kth factor in n" do
    expect(kth_factor(n3, k3)).to eq(-1)
  end
  it "returns the kth factor in n" do
    expect(kth_factor(n4, k4)).to eq(1)
  end
  it "returns the kth factor in n" do
    expect(kth_factor(n5, k5)).to eq(10)
  end
  it "returns the kth factor in n" do
    expect(kth_factor(n6, k6)).to eq(4)
  end
  it "returns the kth factor in n" do
    expect(kth_factor(n7, k7)).to eq(41)
  end
end