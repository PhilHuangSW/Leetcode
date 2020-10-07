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
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
# TIME: O(n) -- SPACE: O(n)
# Creates an array of the linked list, shifts it by k, then replaces each value in
# linked list with values from the shifted array
# def rotate_right(head, k)
#   return head if head.nil?
#   llist_array = []
#   node = head
#   while node != nil
#     llist_array << node.val
#     node = node.next
#   end
#   llist_array = rotate_arr(llist_array, k)
#   node = head
#   for i in 0...llist_array.length
#     node.val = llist_array[i]
#     node = node.next
#   end
#   head
# end

# def rotate_arr(arr, k)
#   length = arr.length
#   k = k%length 
#   for i in 0...k
#     last = arr.pop
#     arr.unshift(last)
#   end
#   arr
# end


# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
# TIME: O(n) -- SPACE: O(1)
# Uses two pointers: a current and previous pointer
# First find the size of the linked list and mod (%) it with k (skips doing cycles)
# Modify the linked list in place by setting the previous node's next to be the end (nil)
# then set the current node's next to head, then set head to the current node
# i.e. 1->2->3->4->5->nil becomes 5->1->2->3->4->nil
# continue doing these shifts until k becomes 0
def rotate_right(head, k)
  return head if head.nil?
  size = size_ll(head)
  k = k % size
  return head if k == 0
  current = head
  previous = nil
  while k > 0
    while current.next != nil
      previous = current
      current = current.next
    end
      previous.next = nil
      current.next = head
      head = current
      k -= 1
  end
  head
end

def size_ll(node)
  size = 1
  while node.next != nil
    node = node.next
    size += 1
  end
  size
end