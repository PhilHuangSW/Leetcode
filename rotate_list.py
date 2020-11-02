#################### ROTATE LIST ####################

# Given a linked list, rotate the list to the right by k places, where k is non-negative.

# **Example 1:**
# ```
# Input: 1->2->3->4->5->NULL, k = 2
# Output: 4->5->1->2->3->NULL
# Explanation:
# rotate 1 steps to the right: 5->1->2->3->4->NULL
# rotate 2 steps to the right: 4->5->1->2->3->NULL
# ```

# **Example 2:**
# ```
# Input: 0->1->2->NULL, k = 4
# Output: 2->0->1->NULL
# Explanation:
# rotate 1 steps to the right: 2->0->1->NULL
# rotate 2 steps to the right: 1->2->0->NULL
# rotate 3 steps to the right: 0->1->2->NULL
# rotate 4 steps to the right: 2->0->1->NULL
# ```

#################### SOLUTION ####################
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
# TIME: O(n) -- SPACE: O(1)
# Uses two pointers: a current and previous pointer
# First find the size of the linked list and mod (%) it with k (skips doing cycles)
# Modify the linked list in place by setting the previous node's next to be the end (nil)
# then set the current node's next to head, then set head to the current node
# i.e. 1->2->3->4->5->nil becomes 5->1->2->3->4->nil
# continue doing these shifts until k becomes 0
class Solution:
  def rotateRight(self, head: ListNode, k: int) -> ListNode:
    if head == None:
      return head
    size = self.size_ll(head)
    k = k % size
    if k == 0:
      return head
    current = head
    previous = None
    while k > 0:
      while current.next != None:
        previous = current
        current = current.next
      previous.next = None
      current.next = head
      head = current
      k -= 1
    return head
      
  def size_ll(self, node):
    size = 1
    while node.next != None:
      node = node.next
      size += 1
    return size
