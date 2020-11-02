#################### INSERTION SORT LIST ####################

# Sort a linked list using insertion sort.

# A graphical example of insertion sort. The partial sorted list (black) initially contains only the first element in the list.
# With each iteration one element (red) is removed from the input data and inserted in-place into the sorted list

# **Algorithm of Insertion Sort:**
# 1. Insertion sort iterates, consuming one input element each repetition, and growing a sorted output list.
# 2. At each iteration, insertion sort removes one element from the input data, finds the location it belongs within the sorted list, and inserts it there.
# 3. It repeats until no input elements remain.

# **Example 1:**
# ```
# Input: 4->2->1->3
# Output: 1->2->3->4
# ```

# **Example 2:**
# ```
# Input: -1->5->3->4->0
# Output: -1->0->3->4->5
# ```

#################### SOLUTION ####################
require 'rspec/autorun'

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def insertion_sort_list(head)
  return head if head.nil?
  return head if head.next.nil?
  new_head = ListNode.new(head.val)
  current = head.next
  while current != nil
    new_node = new_head
    prev_node = new_head
    while current.val > new_node.val
      if new_node.next.nil?
        temp = ListNode.new(current.val)
        new_node.next = temp
        break
      else
        prev_node = new_node
        new_node = new_node.next
      end
    end
    if current.val <= new_node.val
      temp = ListNode.new(current.val)
      if new_node == new_head
        new_head = temp
        temp.next = new_node
      else
        prev_node.next = temp
        temp.next = new_node
      end
    end
    current = current.next
  end
  new_head
end