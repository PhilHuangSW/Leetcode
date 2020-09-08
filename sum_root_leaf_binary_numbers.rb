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
    path = []
    collection = []
    ans = 0
    root_leaf(root, path, collection)
    for i in 0...collection.length
        ans += convert_binary(collection[i])
    end
    ans            
end

# get an array of all paths from root to leaf
# note that Ruby has mutable objects, hence making a duplicate -
# - object when pushing a path into collection
# standard DFS traversal, start at root and go all the way down to leaf node
def root_leaf(node, path = [], collection)
    return if node.nil?
    path << node.val
    if (node.left.nil? && node.right.nil?)
        temp = path.dup
        temp = temp.join
        collection << temp
    end
    if node.left
        root_leaf(node.left, path, collection)
        path.pop
    end
    if node.right
        root_leaf(node.right, path, collection)
        path.pop
    end
end

# regular binary-to-decimal converter
# depending on the binary's length, if a value is 1, 2^(placement)
# i.e. 101 == 2^2 + 2^0 == 4 + 1 == 5
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