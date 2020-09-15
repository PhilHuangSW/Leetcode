#################### DELETE NODE IN A BST ####################

# Given a root node reference of a BST and a key, delete the node 
# with the given key in the BST. Return the root node reference 
# (possibly updated) of the BST.

# Basically, the deletion can be divided into two stages:
# 1. Search for a node to remove.
# 2. If the node is found, delete the node.

# Note: Time complexity should be O(height of tree).

# Example:
# root = [5,3,6,2,4,null,7]
# key = 3

#     5
#    / \
#   3   6
#  / \   \
# 2   4   7

# Given key to delete is 3. So we find the node with value 3 and delete it.

# One valid answer is [5,4,6,2,null,null,7], shown in the following BST.

#     5
#    / \
#   4   6
#  /     \
# 2       7

# Another valid answer is [5,2,6,null,4,null,7].

#     5
#    / \
#   2   6
#    \   \
#     4   7


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
# @param {Integer} key
# @return {TreeNode}
def delete_node(root, key)
  p "hello"
  return [] if root.nil?
  dfs(root, key)
  root
end

def dfs(node, key)
  if node.val == key
      p "hi"
      rebalance(node)
      return
  end
  
  if node.left
      p "left"
      dfs(node.left, key)
  end
  
  if node.right
      p "right"
      dfs(node.right, key)
  end
end

def rebalance(node)
  if node.right.nil? && node.left.nil?
      p "we did it"
      node.val = "null"
      return
  end
  if node.right
      p "1"
      if node.right.left.nil? && node.right.right.nil?
          node.val = node.right.val
          node.right = nil
          return
      end
  end
  if node.left
      p "2"
      if node.left.left.nil? && node.left.right.nil?
          node.val = node.left.val
          node.left = nil
          return
      end
  end
  if node.right
      p node.right.val
      node.val = min_value_node(node.right)
      node.right = delete_node(node.right, node.val)
  end
end

def min_value_node(node)
  p "world"
  current = node.dup
  while (!current.left.nil?)
      current = current.left
  end
  return current.val
end
  
  
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} key
# @return {TreeNode}
def delete_node(root, key)
  if root.nil?
      return nil
  
  elsif root.val == key
      case
          when root.right.nil?
          then return root.left
              
          when !root.right.nil?
          then
              pointer = root.right
              
              while !pointer.left.nil?
                  pointer = pointer.left
              end
              
              root.val = pointer.val
              
              root.right = delete_node(root.right,pointer.val)
              
              return root
              
          end
          
  else
      root.left = delete_node(root.left, key)
      root.right = delete_node(root.right, key)
      return root
  end
end