#################### BINARY TREE PREORDER TRAVERSAL ####################

# Given a binary tree, return the preorder traversal of its nodes' values.

# Example:
# Input: [1,null,2,3]
#    1
#     \
#      2
#     /
#    3
# Output: [1,2,3]

# Follow up: Recursive solution is trivial, could you do it iteratively?


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
# @return {Integer[]}

# Recursive solution
def preorder_traversal(root)
    tree_vals = []
    if root == nil
        return tree_vals
    end

    tree_vals << root.val << preorder_traversal(root.left) << preorder_traversal(root.right)
    tree_vals.flatten
end

# Another more elegant (in my opinion) recursive solution
def preorder_traversal(root, tree_vals = [])
    return tree_vals if root.nil?
    tree_vals << root.val
    preorder_traversal(root.left, tree_vals)
    preorder_traversal(root.right, tree_vals)
    tree_vals
end

# Iterative solution
def preorder_traversal(root)
    tree_vals = []
    return tree_vals if root.nil?
    stack = [root]
    while (!stack.empty?)
        node = stack.pop
        tree_vals << node.val

        if node.right.nil?
            stack << node.left
        end
        if node.left.nil?
            stack << node.right
        end
    end
    tree_vals
end