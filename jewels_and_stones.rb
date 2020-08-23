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

    for i in 0...j_arr.length
        for j in 0...s_arr.length
            if j_arr[i] == s_arr[j]
                count += 1
            end 
        end
    end
    count    
end

num_jewels_in_stones("aA", "aAAbbbb")
num_jewels_in_stones("z", "ZZ")
num_jewels_in_stones("aAb", "aAAbbbb")