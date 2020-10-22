#################### MINIMUM DEPTH OF BINARY TREE ####################

Given a binary tree, find its minimum depth.

The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.

**Note:** A leaf is a node with no children.

**Example 1:**
```
Input: root = [3,9,20,null,null,15,7]
Output: 2
```

**Example 2:**
```
Input: root = [2,null,3,null,4,null,5,null,6]
Output: 5
```

**Constraints:**
- The number of nodes in the tree is in the range [0, 105].
- -1000 <= Node.val <= 1000

#################### SOLUTION ####################
require 'rspec/autorun'

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
def min_depth(root)
  return 0 if root.nil?
  return 1 if root.left.nil? && root.right.nil?
  ans = []
  level = 1
  ans = dfs(root, ans, level)
  ans.min
end

def dfs(node, ans, level)
  if node.left.nil? && node.right.nil?
    ans << level
    return ans
  end
  if !node.left.nil?
    dfs(node.left, ans, level+1)
  end
  if !node.right.nil?
    dfs(node.right, ans, level+1)
  end
  ans
end