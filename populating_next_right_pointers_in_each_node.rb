#################### POPULATING NEXT RIGHT POINTERS IN EACH NODE ####################

# You are given a **perfect binary tree** where all leaves are on the same level, and every parent has two children. The binary tree has the following definition:

# ```
# struct Node {
#   int val;
#   Node *left;
#   Node *right;
#   Node *next;
# }
# ```

# Populate each next pointer to point to its next right node. If there is no next right node, the next pointer should be set to NULL.

# Initially, all next pointers are set to NULL.

# **Follow up:**
# - You may only use constant extra space.
# - Recursive approach is fine, you may assume implicit stack space does not count as extra space for this problem.

# **Example 1:**
# ```
# Input: root = [1,2,3,4,5,6,7]
# Output: [1,#,2,3,#,4,5,6,7,#]
# Explanation: Given the above perfect binary tree (Figure A), your function should populate each next pointer to point to its next right node, just like in Figure B. The serialized output is in level order as connected by the next pointers, with '#' signifying the end of each level.
# ```

# **Constraints:**
# - The number of nodes in the given tree is less than 4096.
# - -1000 <= node.val <= 1000

#################### SOLUTION ####################
require 'rspec/autorun'

# Definition for Node.
# class Node
#     attr_accessor :val, :left, :right, :next
#     def initialize(val)
#         @val = val
#         @left, @right, @next = nil, nil, nil
#     end
# end

# @param {Node} root
# @return {Node}
# TIME: O(n) -- SPACE: O(1)
# The (&.) is called the Safe Navigation Operator
# Instead of writing code like this:
# if account && account.owner && account.owner.address
#   ...
# end
# we can turn it into this:
# account&.owner&.address
# It allows you to call methods on objects without worrying that the object may be nil
def connect(root)
  return root if root.nil?
  root.left.next = root.right if root.left
  connect(root.left)
  root.right.next = root&.next&.left if root.right
  connect(root.right)
  root
end