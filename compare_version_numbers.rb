#################### COMPARE VERSION NUMBERS ####################

# Compare two version numbers version1 and version2.
# If version1 > version2 return 1; if version1 < version2 return -1;otherwise return 0.

# You may assume that the version strings are non-empty and contain 
# only digits and the . character.

# The . character does not represent a decimal point and is used to 
# separate number sequences.

# For instance, 2.5 is not "two and a half" or "half way to version three", 
# it is the fifth second-level revision of the second first-level revision.

# You may assume the default revision number for each level of a version 
# number to be 0. For example, version number 3.4 has a revision number of 
# 3 and 4 for its first and second level revision number. Its third and 
# fourth level revision number are both 0.

# Example 1:
# Input: version1 = "0.1", version2 = "1.1"
# Output: -1

# Example 2:
# Input: version1 = "1.0.1", version2 = "1"
# Output: 1

# Example 3:
# Input: version1 = "7.5.2.4", version2 = "7.5.3"
# Output: -1

# Example 4:
# Input: version1 = "1.01", version2 = "1.001"
# Output: 0
# Explanation: Ignoring leading zeroes, both “01” and “001" represent the same number “1”

# Example 5:
# Input: version1 = "1.0", version2 = "1.0.0"
# Output: 0
# Explanation: The first version number does not have a third level revision number, 
# which means its third level revision number is default to "0"

# Note:
# - Version strings are composed of numeric strings separated by dots . and this numeric strings may have leading zeroes.
# - Version strings do not start or end with dots, and they will not be two consecutive dots.


#################### SOLUTION ####################
# @param {String} version1
# @param {String} version2
# @return {Integer}
# place each version number into an array where each value is separated (split)
# then loop through the array and build an array of arrays where each - 
# - array is separated with a "." -- i.e. "1.0.1" is separated into [[1], [0], [1]]
# do this for both version1 and version2, then compare each value and output the -
# - appropriate value (-1, 0, 1) 
def compare_version(version1, version2)
  v1_arr = version1.split(//)
  v2_arr = version2.split(//)
  arr1 = []
  collection1 = []
  for i in 0...v1_arr.length
      if v1_arr[i] == "."
          temp = arr1.dup
          arr1.clear
          temp = temp.join.to_i
          collection1 << temp
      else
          arr1 << v1_arr[i]
      end
  end
  temp = arr1.dup
  arr1.clear
  temp = temp.join.to_i
  collection1 << temp
  
  
  arr2 = []
  collection2 = []
  for i in 0...v2_arr.length
      if v2_arr[i] == "."
          temp = arr2.dup
          arr2.clear
          temp = temp.join.to_i
          collection2 << temp
      else
          arr2 << v2_arr[i]
      end
  end
  temp = arr2.dup
  arr2.clear
  temp = temp.join.to_i
  collection2 << temp
  
  length1 = collection1.length
  length2 = collection2.length
  
  if length1 > length2
      for i in 0...length2
          if collection1[i] > collection2[i]
              return 1
          elsif collection1[i] < collection2[i]
              return -1
          end
      end
      for j in length2...length1
          if collection1[j] > 0
              return 1
          end
      end
      return 0
  elsif length1 < length2
      for i in 0...length1
          if collection1[i] > collection2[i]
              return 1
          elsif collection1[i] < collection2[i]
              return -1
          end
      end
      for j in length1...length2
          if collection2[j] > 0
              return -1
          end
      end
      return 0
  else
      for i in 0...length1
          if collection1[i] > collection2[i]
              return 1
          elsif collection1[i] < collection2[i]
              return -1
          end
      end
      return 0
  end    
end
      
v1_1 = "0.1"
v2_1 = "1.1"
v1_2 = "1.0.1"
v2_2 = "1"
v1_3 = "7.5.2.4"
v2_3 = "7.5.3"
v1_4 = "1.01"
v2_4 = "1.001"
v1_5 = "1.0"
v2_5 = "1.0.0"

puts "Expected: -1 -- Actual: #{compare_version(v1_1, v2_1)}"
puts "Expected: 1 -- Actual: #{compare_version(v1_2, v2_2)}"
puts "Expected: -1 -- Actual: #{compare_version(v1_3, v2_3)}"
puts "Expected: 0 -- Actual: #{compare_version(v1_4, v2_4)}"
puts "Expected: 0 -- Actual: #{compare_version(v1_5, v2_5)}"  
      
      