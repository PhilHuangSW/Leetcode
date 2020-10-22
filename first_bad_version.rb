#################### FIRST BAD VERSION ####################

# You are a product manager and currently leading a team to develop a new product. Unfortunately, the latest version of your product fails the quality check. Since each version is developed based on the previous version, all the versions after a bad version are also bad.

# Suppose you have n versions [1, 2, ..., n] and you want to find out the first bad one, which causes all the following ones to be bad.

# You are given an API bool isBadVersion(version) which returns whether version is bad. Implement a function to find the first bad version. You should minimize the number of calls to the API.

# **Example 1:**
# ```
# Input: n = 5, bad = 4
# Output: 4
# Explanation:
# call isBadVersion(3) -> false
# call isBadVersion(5) -> true
# call isBadVersion(4) -> true
# Then 4 is the first bad version.
# ```

# **Example 2:**
# ```
# Input: n = 1, bad = 1
# Output: 1
# ```

# **Constraints:**
# - 1 <= bad <= n <= 231 - 1

#################### SOLUTION ####################
require 'rspec/autorun'

# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  
end

def is_bad_version(version)
  if version 
end

n1 = 5
bad1 = 4
n2 = 23
bad2 = 2
n3 = 1
bad3 = 1
n4 = 63847
bad4 = 3483
n5 = 111111
bad5 = 9
n6 = 32589792837598237
bad6 = 1235

describe "first bad version" do
  it "should return the first bad version, i.e. whatever bad equals to" do
    expect(first_bad_version(n1)).to eq(4)
  end
end