#################### PARTITION LABELS ####################

# A string S of lowercase English letters is given. We want to 
# partition this string into as many parts as possible so that 
# each letter appears in at most one part, and return a list of 
# integers representing the size of these parts.

# Example 1:
# Input: S = "ababcbacadefegdehijhklij"
# Output: [9,7,8]
# Explanation:
# The partition is "ababcbaca", "defegde", "hijhklij".
# This is a partition so that each letter appears in at most one part.
# A partition like "ababcbacadefegde", "hijhklij" is incorrect, because it splits S into less parts.
 
# Note:
# - S will have length in range [1, 500].
# - S will consist of lowercase English letters ('a' to 'z') only.


#################### SOLUTION ####################
# @param {String} s
# @return {Integer[]}
def partition_labels(s)
    result = []
    return [1] if (s.length == 1)
    
    char_map = Hash.new{|char_map, char| char_map[char] = 0}
    # Start with the end of the string, if the char is unique
    # add it to the hash with its index
    # This index represents the LAST time the char is seen in the string
    for i in (s.length-1).downto(0)
        if !char_map.has_key?(s[i])
            char_map[s[i]] = i
        end
    end
    

    current_partition = char_map[s[0]]
    partitions = []
    # Iterate over the string until your index == current_partition, then
    # pull the partition length, and then reset partition
    for i in 0...s.length
        partitions << s[i]
        if char_map[s[i]] > current_partition
            current_partition = char_map[s[i]]
        end
        if i == current_partition
            result << partitions.length
            partitions = []
        end
    end
    result
end

s1 = "ababcbacadefegdehijhklij"
s2 = "ababphilip"
s3 = "abcdefg"
s4 = "abcda"
s5 = "philhuang"

puts "Expected: [9, 7, 8] -- Actual: #{partition_labels(s1)}"
puts "Expected: [4, 6] -- Actual: #{partition_labels(s2)}"
puts "Expected: [1, 1, 1, 1, 1, 1, 1] -- Actual: #{partition_labels(s3)}"
puts "Expected: [5] -- Actual: #{partition_labels(s4)}"
puts "Expected: [1, 4, 1, 1, 1, 1] -- Actual: #{partition_labels(s5)}"


# My initial approach to the problem, where you continually replace the 
# hash value with the index (and not putting every index into the hash)

# @param {String} s
# @return {Integer[]}
# def partition_labels(s)
#     result = []
#     return [1] if (s.length == 1)
    
#     char_map = Hash.new{|char_map, char| char_map[char] = 0}
#     for i in 0..s.length
#         if !char_map.has_key?(s[i])
#             char_map[s[i]] = i
#         else
#             char_map[s[i]] = i
#         end
#     end
    
#     current_partition = char_map[s[0]]
#     partition = []
#     for i in 0...s.length
#         partition << s[i]
#         if char_map[s[i]] > current_partition
#             current_partition = char_map[s[i]]
#         end
#         if i == current_partition
#             result << partition.length
#             partition = []
#         end
#     end
#     result
# end