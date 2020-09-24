#################### GAS STATION ####################

# There are N gas stations along a circular route, where the amount of 
# gas at station i is gas[i].

# You have a car with an unlimited gas tank and it costs cost[i] of gas to 
# travel from station i to its next station (i+1). You begin the journey with 
# an empty tank at one of the gas stations.

# Return the starting gas station's index if you can travel around the circuit 
# once in the clockwise direction, otherwise return -1.

# Note:
# - If there exists a solution, it is guaranteed to be unique.
# - Both input arrays are non-empty and have the same length.
# - Each element in the input arrays is a non-negative integer.

# Example 1:
# Input: 
# gas  = [1,2,3,4,5]
# cost = [3,4,5,1,2]
# Output: 3
# Explanation:
# Start at station 3 (index 3) and fill up with 4 unit of gas. Your tank = 0 + 4 = 4
# Travel to station 4. Your tank = 4 - 1 + 5 = 8
# Travel to station 0. Your tank = 8 - 2 + 1 = 7
# Travel to station 1. Your tank = 7 - 3 + 2 = 6
# Travel to station 2. Your tank = 6 - 4 + 3 = 5
# Travel to station 3. The cost is 5. Your gas is just enough to travel back to station 3.
# Therefore, return 3 as the starting index.

# Example 2:
# Input: 
# gas  = [2,3,4]
# cost = [3,4,3]
# Output: -1
# Explanation:
# You can't start at station 0 or 1, as there is not enough gas to travel to the next station.
# Let's start at station 2 and fill up with 4 unit of gas. Your tank = 0 + 4 = 4
# Travel to station 0. Your tank = 4 - 3 + 2 = 3
# Travel to station 1. Your tank = 3 - 3 + 3 = 3
# You cannot travel back to station 2, as it requires 4 unit of gas but you only have 3.
# Therefore, you can't travel around the circuit once no matter where you start.


#################### SOLUTION ####################
# @param {Integer[]} gas
# @param {Integer[]} cost
# @return {Integer}
# TIME: O(n) -- SPACE: O(n)
def can_complete_circuit(gas, cost)
  can_start = []
  # create an array of starting points from which to begin our circuit
  # i.e. gas = [1,2,3,4,5] and cost = [3,4,5,1,2]
  # only indices [3,4] can start because [1,2,3] all have costs that 
  # are over the amount of gas we have
  for i in 0...gas.length
    if gas[i] >= cost[i]
      can_start << i
    end
  end

  # test out each capable starting index and see if you can make it through
  # the entire circuit; if it is possible, since the answer is unique
  # return the index which is capable of traversing the entire circuit
  for i in 0...can_start.length
    if start_circuit(gas, cost, can_start[i]) == true
      return can_start[i]
    end
  end
  return -1
end

# helper function that returns true/false depending on if it were able to 
# traverse the entire circuit (array). if it did, return true, if not, return false
def start_circuit(gas, cost, start_index)
  current_gas = 0
  for i in start_index...(gas.length + start_index)
    current_gas += gas[i%gas.length]
    if cost[i%gas.length] > current_gas
      return false
    else
      current_gas -= cost[i%gas.length]
    end
  end
  true
end


gas1 = [1,2,3,4,5]
cost1 = [3,4,5,1,2]
gas2 = [2,3,4]
cost2 = [3,4,3]
gas3 = [4]
cost3 = [5]
gas4 = [4]
cost4 = [4]
gas5 = [1,2,3,4,5,6]
cost5 = [3,7,5,1,2,4]
gas6 = [1,2,3,4,5]
cost6 = [3,4,5,1,5]

puts "Expected: 3 -- Actual: #{can_complete_circuit(gas1, cost1)}"
puts "Expected: -1 -- Actual: #{can_complete_circuit(gas2, cost2)}"
puts "Expected: -1 -- Actual: #{can_complete_circuit(gas3, cost3)}"
puts "Expected: 0 -- Actual: #{can_complete_circuit(gas4, cost4)}"
puts "Expected: -1 -- Actual: #{can_complete_circuit(gas5, cost5)}"
puts "Expected: -1 -- Actual: #{can_complete_circuit(gas6, cost6)}"