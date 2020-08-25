#################### SUM OF LEFT LEAVES ####################

# Find the sum of all left leaves in a given binary tree.

# Example:
#     3
#    / \
#   9  20
#     /  \
#    15   7
# There are two left leaves in the binary tree, with values 9 and 15 respectively. Return 24.


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
# @return {Integer}
def sum_of_left_leaves(root)
    ans = {}
    sum = 0
    return 0 if root.nil?
    level(root, 0, ans, sum)

end

def level(root, level, ans, sum)
    if ans.has_key?(level)
        ans[level] = (ans[level] << root.val)
    else
        ans[level] = [root.val]
    end

    if root.left != nil
        level(root.left, level+1, ans)
        sum += root.left.val
    end
    level(root.right, level+1, ans) if root.right
end



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