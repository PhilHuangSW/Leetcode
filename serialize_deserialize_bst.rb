#################### SERIALIZE AND DESERIALIZE BST ####################

# Serialization is converting a data structure or object into a sequence of bits so that it can be stored in a file or memory buffer, or transmitted across a network connection link to be reconstructed later in the same or another computer environment.

# Design an algorithm to serialize and deserialize a **binary search tree**. There is no restriction on how your serialization/deserialization algorithm should work. You need to ensure that a binary search tree can be serialized to a string, and this string can be deserialized to the original tree structure.

# **The encoded string should be as compact as possible.**

# **Example 1:**
# ```
# Input: root = [2,1,3]
# Output: [2,1,3]
# ```

# **Example 2:**
# ```
# Input: root = []
# Output: []
# ```

# **Constraints:**
# - The number of nodes in the tree is in the range [0, 104].
# - 0 <= Node.val <= 104
# - The input tree is **guaranteed** to be a binary search tree.

#################### SOLUTION ####################
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# Encodes a tree to a single string.
#
# @param {TreeNode} root
# @return {string}
def serialize(root)
  return "" if root.nil?
  dfs(root, "")
end

def dfs(node, ans)
  return ans if node.nil?
  ans += "#{node.val},"
  ans = dfs(node.left, ans)
  ans = dfs(node.right, ans)
end

# Decodes your encoded data to tree.
#
# @param {string} data
# @return {TreeNode}
def deserialize(data)
  return [] if data == ""
  list = data.split(",")
  ddfs(list, -Float::INFINITY, Float::INFINITY)
end

def ddfs(list, lower, upper)
  return nil if list[0].nil?
  val = list[0].to_i
  return nil if (val < lower || val > upper)
  list.shift
  root = TreeNode.new(val)
  root.left = ddfs(list, lower, val)
  root.right = ddfs(list, val, upper)
  return root
end


# Your functions will be called as such:
# deserialize(serialize(data))