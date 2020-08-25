#################### BINARY TREE LEVEL ORDER TRAVERSAL ####################

# Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).

# For example:
# Given binary tree [3,9,20,null,null,15,7],
#     3
#    / \
#   9  20
#     /  \
#    15   7
# return its level order traversal as:
# [
#   [3],
#   [9,20],
#   [15,7]
# ]


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
# @return {Integer[][]}
def level_order(root)
    ans = {}
    return [] if root.nil?
    level(root, 0, ans)
    return ans.values 
end

def level(root, level, ans)
    if ans.has_key?(level)
        ans[level] = (ans[level] << root.val)
    else
        ans[level] = [root.val]
    end

    level(root.left, level+1, ans) if root.left
    level(root.right, level+1, ans) if root.right
end
