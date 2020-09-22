#################### CAR POOLING ####################

# You are driving a vehicle that has capacity empty seats initially 
# available for passengers.  The vehicle only drives east (ie. it cannot 
# turn around and drive west.)

# Given a list of trips, 
# trip[i] = [num_passengers, start_location, end_location] contains 
# information about the i-th trip: the number of passengers that must be 
# picked up, and the locations to pick them up and drop them off.  The 
# locations are given as the number of kilometers due east from your 
# vehicle's initial location.

# Return true if and only if it is possible to pick up and drop off all 
# passengers for all the given trips. 

# Example 1:
# Input: trips = [[2,1,5],[3,3,7]], capacity = 4
# Output: false

# Example 2:
# Input: trips = [[2,1,5],[3,3,7]], capacity = 5
# Output: true

# Example 3:
# Input: trips = [[2,1,5],[3,5,7]], capacity = 3
# Output: true

# Example 4:
# Input: trips = [[3,2,7],[3,7,9],[8,3,9]], capacity = 11
# Output: true

# Constraints:
# 1. trips.length <= 1000
# 2. trips[i].length == 3
# 3. 1 <= trips[i][0] <= 100
# 4. 0 <= trips[i][1] < trips[i][2] <= 1000
# 5. 1 <= capacity <= 100000


#################### SOLUTION ####################
# @param {Integer[][]} trips
# @param {Integer} capacity
# @return {Boolean}
def car_pooling(trips, capacity)
  # we make this problem easier by sorting the trips using the start location
  # this way we can just iterate through the trips array
  if trips.length != 1
    trips = trips.sort_by{|num_passengers,start_location,end_location| start_location}
  end
  # set all variables to the first entry in the trips array
  lowest_destination = trips[0][2]
  max_destination = trips[0][2]
  current_capacity = trips[0][0]
  start = trips[0][1]
  # this hash is used to note how many passengers get off at a certain destination
  h = Hash.new{|h,destination| h[destination] = 0}
  h[trips[0][2]] = trips[0][0]
  return false if current_capacity > capacity
  if trips.length > 1
    for i in 1..(trips.length-1)
      if trips[i][2] < lowest_destination
        lowest_destination = trips[i][2]
      end
      if trips[i][2] > max_destination
        max_destination = trips[i][2]
      end
      # if our starting trip has surpassed a lowest destination, we know that 
      # we need to drop off some passengers along the way, we need to start by 
      # iterating through beginning with our earliest start location, and ending
      # at the current start location. Then we set our new start location to the
      # current start location
      if trips[i][1] >= lowest_destination
        for j in start..trips[i][1]
          if h.has_key?(j)
            current_capacity -= h[j]
            h[j] = 0
          end
        end
        start = trips[i][1]
      end
      current_capacity += trips[i][0]
      return false if current_capacity > capacity
      # if separate trips end up at the same destination, we need to note a TOTAL
      # of how many passengers are dropped off at that destination
      h[trips[i][2]] += trips[i][0]
    end
  end
  true
end

trips1 = [[2,1,5],[3,3,7]]
capacity1 = 4
trips2 = [[2,1,5],[3,3,7]]
capacity2 = 5
trips3 = [[2,1,5],[3,5,7]]
capacity3 = 3
trips4 = [[3,2,7],[3,7,9],[8,3,9]]
capacity4 = 11
trips5 = [[1,2,5],[3,7,11],[1,1,3],[3,3,7],[1,7,10]]
# sorted trips5 = [[1,1,3],[1,2,5],[3,3,7],[1,7,10],[3,7,11]]
capacity5 = 4
trips6 = [[1,2,5],[4,7,11],[1,1,3],[3,3,7],[1,7,10]]
# sorted trips6 = [[1,1,3],[1,2,5],[3,3,7],[1,7,10],[4,7,11]]
capacity6 = 4
trips7 = [[5,2,5]]
capacity7 = 4
trips8 = [[1,2,5]]
capacity8 = 2
trips9 = [[9,3,4],[9,1,7],[4,2,4],[7,4,5]]
# sorted trips9 = [[9,1,7],[4,2,4],[9,3,4],[7,4,5]]
capacity9 = 23
trips10 = [[3,2,8],[4,4,6],[10,8,9]]
capacity10 = 11
trips11 = [[10,5,7],[10,3,4],[7,1,8],[6,3,4]]
# sorted trips11 = [[7,1,8],[10,3,4],[6,3,4],[10,5,7]]
capacity11 = 24

puts "Expected: false -- Actual: #{car_pooling(trips1, capacity1)}"
puts "Expected: true -- Actual: #{car_pooling(trips2, capacity2)}"
puts "Expected: true -- Actual: #{car_pooling(trips3, capacity3)}"
puts "Expected: true -- Actual: #{car_pooling(trips4, capacity4)}"
puts "Expected: true -- Actual: #{car_pooling(trips5, capacity5)}"
puts "Expected: false -- Actual: #{car_pooling(trips6, capacity6)}"
puts "Expected: false -- Actual: #{car_pooling(trips7, capacity7)}"
puts "Expected: true -- Actual: #{car_pooling(trips8, capacity8)}"
puts "Expected: true -- Actual: #{car_pooling(trips9, capacity9)}"
puts "Expected: true -- Actual: #{car_pooling(trips10, capacity10)}"
puts "Expected: true -- Actual: #{car_pooling(trips11, capacity11)}"