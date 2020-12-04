// #################### INCREASING ORDER SEARCH TREE ####################

// Given the root of a binary search tree, rearrange the tree in **in-order** so that the leftmost node in the tree is now the root of the tree, and every node has no left child and only one right child.

// **Example 1:**
// ```
// Input: root = [5,3,6,2,4,null,8,1,null,null,null,7,9]
// Output: [1,null,2,null,3,null,4,null,5,null,6,null,7,null,8,null,9]
// ```

// **Example 2:**
// ```
// Input: root = [5,1,7]
// Output: [1,null,5,null,7]
// ```

// **Constraints:**
// - The number of nodes in the given tree will be in the range [1, 100].
// - 0 <= Node.val <= 1000

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
 * @return {TreeNode}
 */

// Creates a new tree following the description (in-order and only ever has right nodes (no left nodes))
var increasingBST = function(root) {
  if (root.left === null && root.right === null) {
    return root
  }

  // Create a new array to represent the in-order binary tree
  var array = []
  inOrder(root, array)

  // Create a new binary tree using the in-order values from array
  var newTree = new TreeNode(array[0])
  var node = newTree
  for (let i = 1; i < array.length; i++) {
    var newNode = new TreeNode(array[i])
    node.right = newNode
    node = node.right
  }
  
  return newTree
};

// Place the binary tree into an in-order array format
function inOrder(node, array) {
  if (node.left) {
    inOrder(node.left, array)
  }
  array.push(node.val)
  if (node.right) {
    inOrder(node.right, array)
  }
}


