# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# Encodes a tree to a single string.
#
# @param {TreeNode} root
# @return {string}
def serialize(root)
  rserialize(root, "")
end

def rserialize(node, string)
  if node.nil?
      return string
  end
  string += "#{node.val},"
  string = rserialize(node.left, string)
  string = rserialize(node.right, string)
end

# Decodes your encoded data to tree.
#
# @param {string} data
# @return {TreeNode}
def deserialize(data)
  list = data.split(",")
  rdeserialize(list, -Float::INFINITY, Float::INFINITY)
end

def rdeserialize(l, lower, upper)
  if l[0].nil?
      return nil
  end
  val = l[0].to_i
  if val < lower || val > upper
      return nil
  end
  l.shift
  root = TreeNode.new(val)
  root.left = rdeserialize(l, lower, val)
  root.right = rdeserialize(l, val, upper)
  
  return root
end


# Your functions will be called as such:
# deserialize(serialize(data))