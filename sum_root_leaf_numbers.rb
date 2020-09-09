#################### SUM ROOT TO LEAF NUMBERS ####################

# Given a binary tree containing digits from 0-9 only, each root-to-leaf 
# path could represent a number.

# An example is the root-to-leaf path 1->2->3 which represents the number 123.

# Find the total sum of all root-to-leaf numbers.

# Note: A leaf is a node with no children.

# Example:
# Input: [1,2,3]
#     1
#    / \
#   2   3
# Output: 25
# Explanation:
# The root-to-leaf path 1->2 represents the number 12.
# The root-to-leaf path 1->3 represents the number 13.
# Therefore, sum = 12 + 13 = 25.

# Example 2:
# Input: [4,9,0,5,1]
#     4
#    / \
#   9   0
#  / \
# 5   1
# Output: 1026
# Explanation:
# The root-to-leaf path 4->9->5 represents the number 495.
# The root-to-leaf path 4->9->1 represents the number 491.
# The root-to-leaf path 4->0 represents the number 40.
# Therefore, sum = 495 + 491 + 40 = 1026.


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
def sum_numbers(root)
  path = []
  collection = []
  ans = 0
  root_leaf(root, path, collection)
  for i in 0...collection.length
    ans += collection[i].to_i
  end
  ans
end

# standard DFS traversal, start from root down to left tree, then right tree
def root_leaf(node, path, collection)
  return if node.nil?
  path << node.val
  if node.left.nil? && node.right.nil?
    # note that Ruby objects are mutable, hence making a duplicate - 
    # - object, then conveniently joining to make a single value, then - 
    # - pushing it into the collection array
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