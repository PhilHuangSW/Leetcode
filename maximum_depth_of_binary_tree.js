// #################### MAXIMUM DEPTH OF BINARY TREE ####################

// Given a binary tree, find its maximum depth.

// The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

// **Note:** A leaf is a node with no children.

// **Example:**
// ```
// Given binary tree [3,9,20,null,null,15,7],

//     3
//    / \
//   9  20
//     /  \
//    15   7
// return its depth = 3.
// ```

// #################### SOLUTION ####################
/*
 * Definition for a binary tree node.
 * function TreeNode(val, left, right) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.left = (left===undefined ? null : left)
 *     this.right = (right===undefined ? null : right)
 * }
 */
/*
 * @param {TreeNode} root
 * @return {number}
 */
var maxDepth = function(root) {
  if (root == null) {
    return 0
  }
  var depth_array = []
  dfs(root, 1, depth_array)
  return Math.max(...depth_array)
};

function dfs(node, depth, array) {
  if (node.left == null && node.right == null) {
    array.push(depth)
  } 
  if (node.left != null) {
    dfs(node.left, depth + 1, array)
  }
  if (node.right != null) {
    dfs(node.right, depth + 1, array)
  }
}

