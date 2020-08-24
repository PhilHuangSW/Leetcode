#################### BINARY TREE POSTORDER TRAVERSAL ####################



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
def postorder_traversal(root, ans = [])
    return ans if root.nil?
    
    if root.left != nil
        inorder_traversal(root.left, ans)
    end
    
    if root.right != nil
        inorder_traversal(root.right, ans)   
    end
    
    ans << root.val
    ans   
end