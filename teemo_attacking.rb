#################### TEEMO ATTACKING ####################

# In LOL world, there is a hero called Teemo and his attacking can 
# make his enemy Ashe be in poisoned condition. Now, given the Teemo's 
# attacking ascending time series towards Ashe and the poisoning time 
# duration per Teemo's attacking, you need to output the total time that 
# Ashe is in poisoned condition.

# You may assume that Teemo attacks at the very beginning of a specific 
# time point, and makes Ashe be in poisoned condition immediately.

# Example 1:
# Input: [1,4], 2
# Output: 4
# Explanation: At time point 1, Teemo starts attacking Ashe and makes Ashe be 
# poisoned immediately. This poisoned status will last 2 seconds until the end 
# of time point 2. And at time point 4, Teemo attacks Ashe again, and causes 
# Ashe to be in poisoned status for another 2 seconds. So you finally need to output 4.

# Example 2:
# Input: [1,2], 2
# Output: 3
# Explanation: At time point 1, Teemo starts attacking Ashe and makes Ashe be poisoned. 
# This poisoned status will last 2 seconds until the end of time point 2. However, at 
# the beginning of time point 2, Teemo attacks Ashe again who is already in poisoned status. 
# Since the poisoned status won't add up together, though the second poisoning attack 
# will still work at time point 2, it will stop at the end of time point 3. So you finally
# need to output 3.

# Note:
# 1. You may assume the length of given time series array won't exceed 10000.
# 2. You may assume the numbers in the Teemo's attacking time series and his poisoning 
#     time duration per attacking are non-negative integers, which won't exceed 10,000,000.


#################### SOLUTION ####################
# @param {Integer[]} time_series
# @param {Integer} duration
# @return {Integer}
def find_poisoned_duration(time_series, duration)
  return 0 if time_series.empty?
  return duration if time_series.length == 1
  poison_duration = duration
  poison = 0
  previous = time_series[0]
  for i in 1...time_series.length
    if (previous + duration) >= time_series[i]
      poison += time_series[i] - previous
    else
      poison += duration
    end
    previous = time_series[i]
  end
  poison += duration
  poison
end

time_series1 = [1,4]
duration1 = 2
time_series2 = [1,2]
duration2 = 2
time_series3 = [1,3,4,8,10,23,32,33,34,37]
duration3 = 5
time_series4 = []
duration4 = 2
time_series5 = [1,4,5,6,7,8,10,12,16,20,102]
duration5 = 1
time_series6 = [1,12,13,20,22]
duration6 = 10

puts "Expected: 4 -- Actual: #{find_poisoned_duration(time_series1, duration1)}"
puts "Expected: 3 -- Actual: #{find_poisoned_duration(time_series2, duration2)}"
puts "Expected: 29 -- Actual: #{find_poisoned_duration(time_series3, duration3)}"
puts "Expected: 0 -- Actual: #{find_poisoned_duration(time_series4, duration4)}"
puts "Expected: 11 -- Actual: #{find_poisoned_duration(time_series5, duration5)}"
puts "Expected: 30 -- Actual: #{find_poisoned_duration(time_series6, duration6)}"

