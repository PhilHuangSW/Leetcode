// #################### VALIDATE BINARY SEARCH TREE ####################

// Given a binary tree, determine if it is a valid binary search tree (BST).

// Assume a BST is defined as follows:
// - The left subtree of a node contains only nodes with keys **less than** the node's key.
// - The right subtree of a node contains only nodes with keys **greater than** the node's key.
// - Both the left and right subtrees must also be binary search trees.
 

// **Example 1:**
// ```
//     2
//    / \
//   1   3

// Input: [2,1,3]
// Output: true
// ```

// **Example 2:**
// ```

//     5
//    / \
//   1   4
//      / \
//     3   6
// Input: [5,1,4,null,null,3,6]
// Output: false
// Explanation: The root node's value is 5 but its right child's value is 4.
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
 * @return {boolean}
 */
// TIME: O(n^2) -- SPACE: O(n)
var isValidBST = function(root) {
  if (root == null) {
    return true
  }
  var arr = []
  inorder(root, arr)
  // console.log(arr)
  for (let i = 0; i < arr.length-1; i++) {
    if (arr[i] >= arr[i+1]) {
      return false
    }
  }
  return true
};

function inorder(node, arr) {
  if (node.left) {
    inorder(node.left, arr)
  }
  arr.push(node.val)
  if (node.right) {
    inorder(node.right, arr)
  }
}

