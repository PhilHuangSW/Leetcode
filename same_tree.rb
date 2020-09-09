#################### SAME TREE ####################

# Given two binary trees, write a function to check if 
# they are the same or not.

# Two binary trees are considered the same if they are 
# structurally identical and the nodes have the same value.

# Example 1:
# Input:     1         1
#           / \       / \
#          2   3     2   3

#         [1,2,3],   [1,2,3]
# Output: true

# Example 2:
# Input:     1         1
#           /           \
#          2             2

#         [1,2],     [1,null,2]
# Output: false

# Example 3:
# Input:     1         1
#           / \       / \
#          2   1     1   2

#         [1,2,1],   [1,1,2]
# Output: false


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
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  p_arr = [] 
  dfs(p, p_arr)
  q_arr = []
  dfs(q, q_arr)
  
  if p_arr == q_arr
    return true
  else
    return false
  end
end

def dfs(node, arr = [])
  return if node.nil?
  arr << node.val
  if node.left
    dfs(node.left, arr)
  else
      arr << "null"
  end
  if node.right
    dfs(node.right, arr)
  else
    arr << "null"
  end
end