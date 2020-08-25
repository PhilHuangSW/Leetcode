#################### BINARY TREE POSTORDER TRAVERSAL ####################

# Given a binary tree, return the postorder traversal of its nodes' values.

# Example:
# Input: [1,null,2,3]
#    1
#     \
#      2
#     /
#    3
# Output: [3,2,1]

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
def postorder_traversal(root, ans = [])
    return ans if root.nil?
    
    if root.left != nil
        postorder_traversal(root.left, ans)
    end
    
    if root.right != nil
        postorder_traversal(root.right, ans)   
    end
    
    ans << root.val
    ans   
end

# Iterative solution
def postorder_traversal(root)
    ans = []
    return ans if root.nil?
    stack = []
    node = root
    stack << node
    while (!stack.empty?)
        while (node != nil)
            if node.right != nil
                node = node.right
                stack << node
            end
        end

    end
    ans
end


def postorder_traversal(root)
    return [] if !root #"If no root return an empty array"
    postorder = [] 
    stack = [root] # "Our stack of nodes"
      while stack.length > 0 #"While nodes are still in the stack"
          node = stack.pop #"Our current node and also how we escape the while loop"
          postorder.unshift(node.val) #"We unshift our values into our postorder array so they are in the proper order"
          stack.push(node.left) if node.left != nil #"The order is important here, we need to check the left side first"
          stack.push(node.right) if node.right != nil #"If there is a right side we push it into our stack, the loop pops off the last element which guarantees us going down the right side of the tree"
      end
      return postorder #"We return the postorder array, with special attention to how we unshift the nodes.values to get the order we want"
  end