#################### SUM OF ROOT TO LEAF BINARY NUMBERS ####################

# Given a binary tree, each node has value 0 or 1.  Each root-to-leaf path 
# represents a binary number starting with the most significant bit.  For 
# example, if the path is 0 -> 1 -> 1 -> 0 -> 1, then this could represent 
# 01101 in binary, which is 13.

# For all leaves in the tree, consider the numbers represented by the path 
# from the root to that leaf.

# Return the sum of these numbers.

# Example 1:
# Input: [1,0,1,0,1,0,1]
# Output: 22
# Explanation: (100) + (101) + (110) + (111) = 4 + 5 + 6 + 7 = 22

# Note:
# 1. The number of nodes in the tree is between 1 and 1000.
# 2. node.val is 0 or 1.
# 3. The answer will not exceed 2^31 - 1.


#################### SOLUTION ####################
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def sum_root_to_leaf(root)
    
end

def convert_binary(num)
    num_array = num.to_s.split(//).map{|char| char.to_i}
    decimal = 0
    placement = num_array.length - 1
    binary_array = []
    for i in 0...num_array.length
        if num_array[i] == 1
            binary_array << 2**(placement - i)
        end
    end
    decimal = binary_array.sum
end

n = "100"
p convert_binary(n)