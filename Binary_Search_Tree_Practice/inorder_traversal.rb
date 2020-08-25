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
    stack = []
    node = root
    while (!stack.empty? || node != nil)
        while (node != nil)
            stack << node
            node = node.left
        end
        node = stack.pop
        ans << node.val
        node = node.right
    end
    ans
end