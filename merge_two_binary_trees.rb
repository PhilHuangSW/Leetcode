#################### MERGE TWO BINARY TREES ####################

# Given two binary trees and imagine that when you put one of them 
# to cover the other, some nodes of the two trees are overlapped while 
# the others are not.

# You need to merge them into a new binary tree. The merge rule is that 
# if two nodes overlap, then sum node values up as the new value of the 
# merged node. Otherwise, the NOT null node will be used as the node 
# of new tree.

# Example 1:
# Input: 
# 	Tree 1                     Tree 2                  
#           1                         2                             
#          / \                       / \                            
#         3   2                     1   3                        
#        /                           \   \                      
#       5                             4   7                  
# Output: 
# Merged tree:
# 	     3
# 	    / \
# 	   4   5
# 	  / \   \ 
# 	 5   4   7

# Note: The merging process must start from the root nodes of both trees.


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
# @param {TreeNode} t1
# @param {TreeNode} t2
# @return {TreeNode}
def merge_trees(t1, t2)
    return t1 if t2.nil?
    return t2 if t1.nil?
    # we are ultimately transforming t1 to become the merged trees
    # while we're in the same position, and both have values, add the value
    # of t2 to t1
    if !t1.nil? && !t2.nil?
        t1.val += t2.val
    end
    # we continue forth using pre_order traversal (left tree)
    if !t1.left.nil? && !t2.left.nil?
        merge_trees(t1.left, t2.left)
    end
    # we care only if t2 has values and t1 doesn't, since we already have
    # t1's values in their rightful place. Add t2's values to t1's
    if t1.left.nil? && !t2.left.nil?
        t1.left = t2.left
    end
    # we continue forth using pre_order traversal (right tree)
    if !t1.right.nil? && !t2.right.nil?
        merge_trees(t1.right, t2.right)
    end
    # same situation above but with right nodes
    if t1.right.nil? && !t2.right.nil?
        t1.right = t2.right
    end
    t1
end