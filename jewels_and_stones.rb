#################### JEWELS AND STONES ####################

# You're given strings J representing the types of stones that are jewels, 
# and S representing the stones you have.  Each character in S is a type of stone you have.  
# You want to know how many of the stones you have are also jewels.

# The letters in J are guaranteed distinct, and all characters in J and S are letters. 
# Letters are case sensitive, so "a" is considered a different type of stone from "A".

# Example 1:
# Input: J = "aA", S = "aAAbbbb"
# Output: 3

# Example 2:
# Input: J = "z", S = "ZZ"
# Output: 0

# Note:
# - S and J will consist of letters and have length at most 50.
# - The characters in J are distinct.


#################### SOLUTION ####################
# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
    if j == "" || s == ""
        return 0
    end

    j_arr = j.split(//)
    s_arr = s.split(//)
    count = 0

    # compares each J value with each S value, if any match, increment the counter
    for i in 0...j_arr.length
        for j in 0...s_arr.length
            if j_arr[i] == s_arr[j]
                count += 1
            end 
        end
    end
    count    
end

j1 = "aA"
s1 = "aAAbbbb"
j2 = "z"
s2 = "ZZ"
j3 = "aAb"
s3 = "aAAbbbb"
j4 = "pH"
s4 = "plrtlplhH"
j5 = "RMph"
s5 = "RmMpPhHHhHhPRmM"

puts "Expected: 3 -- Actual: #{num_jewels_in_stones(j1, s1)}"
puts "Expected: 0 -- Actual: #{num_jewels_in_stones(j2, s2)}"
puts "Expected: 7 -- Actual: #{num_jewels_in_stones(j3, s3)}"
puts "Expected: 3 -- Actual: #{num_jewels_in_stones(j4, s4)}"
puts "Expected: 8 -- Actual: #{num_jewels_in_stones(j5, s5)}"
