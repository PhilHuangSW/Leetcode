#################### BINARY TREE INORDER TRAVERSAL ####################

# Given a binary tree, return the inorder traversal of its nodes' values.

# Example:
# Input: [1,null,2,3]
#    1
#     \
#      2
#     /
#    3
# Output: [1,3,2]

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
def inorder_traversal(root, ans = [])
    return ans if root.nil?
    
    if root.left != nil
        inorder_traversal(root.left, ans)
    end
    ans << root.val
    if root.right != nil
        inorder_traversal(root.right, ans)   
    end

    ans   
end

# Iterative solution
def inorder_traversal(root)
    ans = []
    return ans if root.nil?
    stack = [root]
    while (!stack.empty?)
        node = stack.pop
        if node.left.nil?
            ans << node.val
            stack.push(node.right)
        end
        if node.right.nil?
            stack.push(node.left)
        end
    end
    ans
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
            stack.push(node.left)
        end
        if node.left.nil?
            stack.push(node.right)
        end
    end
    tree_vals
end