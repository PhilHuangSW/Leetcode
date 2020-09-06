#################### ALL ELEMENTS IN TWO BINARY SEARCH TREES ####################

# Given two binary search trees root1 and root2.

# Return a list containing all the integers from 
# both trees sorted in ascending order.
 

# Example 1:
# Input: root1 = [2,1,4], root2 = [1,0,3]
# Output: [0,1,1,2,3,4]

# Example 2:
# Input: root1 = [0,-10,10], root2 = [5,1,7,0,2]
# Output: [-10,0,0,1,2,5,7,10]

# Example 3:
# Input: root1 = [], root2 = [5,1,7,0,2]
# Output: [0,1,2,5,7]

# Example 4:
# Input: root1 = [0,-10,10], root2 = []
# Output: [-10,0,10]

# Example 5:
# Input: root1 = [1,null,8], root2 = [8,1]
# Output: [1,1,8,8]

# Constraints:
# - Each tree has at most 5000 nodes.
# - Each node's value is between [-10^5, 10^5].


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
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Integer[]}
def get_all_elements(root1, root2)
    ans = []
    # place all values of root1 in_order into ans array
    if !root1.nil?
        in_traverse(root1, ans)
    end
    # place all values of root2 in_order into ans array
    if !root2.nil?
        in_traverse(root2, ans)
    end
    # sort the combined array
    ans = ans.sort
    ans
end

# traverses in_order --> left tree, root, right tree
def in_traverse(node, ans = [])
    if !node.left.nil?
        in_traverse(node.left, ans)
    end
    ans << node.val
    if !node.right.nil?
        in_traverse(node.right, ans)
    end
end




# Using Merge Sort on Two Lists
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Integer[]}
def get_all_elements(root1, root2)
    ans = []
    list1 = []
    list2 = []
    if !root1.nil?
        in_traverse(root1, list1)
    end
    if !root2.nil?
        in_traverse(root2, list2)
    end
    merge_sorted(list1, list2, ans)
    ans
end

def in_traverse(node, ans = [])
    if !node.left.nil?
        in_traverse(node.left, ans)
    end
    ans << node.val
    if !node.right.nil?
        in_traverse(node.right, ans)
    end
end

def merge_sorted(list1, list2, ans)
    if list1.nil?
        return list2
    elsif list2.nil?   
        return list1
    end
    list1_count = 0
    list2_count = 0
    while (!list1.empty? && !list2.empty?)
        if (list1[list1_count]) <= (list2[list2_count])
            ans << list1.shift
        else
            ans << list2.shift
        end
    end
    while (list1.empty? && !list2.empty?)
        ans << list2.shift
    end
    while (!list1.empty? && list2.empty?)
        ans << list1.shift
    end
    ans
end