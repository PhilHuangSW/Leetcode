#################### IMPLEMENT RAND10() USING RAND7() ####################

# Given the API rand7 which generates a uniform random integer in the 
# range 1 to 7, write a function rand10 which generates a uniform random integer 
# in the range 1 to 10. You can only call the API rand7 and you shouldn't call 
# any other API. Please don't use the system's Math.random().

# Notice that Each test case has one argument n, the number of times that your 
# implemented function rand10 will be called while testing. 

# Follow up:

# 1. What is the expected value for the number of calls to rand7() function?
# 2. Could you minimize the number of calls to rand7()?

# Example 1:
# Input: n = 1
# Output: [2]

# Example 2:
# Input: n = 2
# Output: [2,8]

# Example 3:
# Input: n = 3
# Output: [3,8,10]
 
# Constraints:
# - 1 <= n <= 105


#################### SOLUTION ####################
# The rand7() API is already defined for you.
# def rand7()
# @return {Integer} a random integer in the range 1 to 7
# Make use of the analogy where you implement rand100 using
# rand10. if you do (rand10 - 1) * 10 + (rand10 - 1), 
# you'll have a range of 0-99
def rand10
  r = (rand7 - 1) * 7 + (rand7 - 1)
  # we make use of rejection sampling where our function r
  # has a range of 0-48, and if our function hits a number
  # between 40-48, it will call rand10 again until it hits
  # a number between 0-39
  if r < 40
    return (r % 10) + 1
  else
    rand10
  end
end