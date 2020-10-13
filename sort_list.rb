#################### SORT LIST ####################

# Given the head of a linked list, return the list after sorting it in **ascending order**.

# **Follow up:** Can you sort the linked list in O(n logn) time and O(1) memory (i.e. constant space)?

# **Example 1:**
# ```
# Input: head = [4,2,1,3]
# Output: [1,2,3,4]
# ```

# **Example 2:**
# ```
# Input: head = [-1,5,3,4,0]
# Output: [-1,0,3,4,5]
# ```

# **Example 3:**
# ```
# Input: head = []
# Output: []
# ```

# **Constraints:**
# - The number of nodes in the list is in the range [0, 5 * 104].
# - -105 <= Node.val <= 105

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
# @return {ListNode}

require_relative 'ListNode'
# ListNode class definitions: 
# initialize
# convert_arr_to_ll(arr) -- returns the head of ll
# convert_ll_to_arr(node) -- returns the arr representations of ll
def sort_list(head)
  return head if head.nil?
  ll_arr = []
  node = head
  while node != nil
    ll_arr << node.val
    node = node.next
  end
  ll_arr.sort!
  sorted = head
  for i in 0...ll_arr.length
    sorted.val = ll_arr[i]
    sorted = sorted.next
  end
  head
end

head1 = [4,2,1,3]
head2 = [-1,5,3,4,0]
head3 = []
head4 = [1]
head = ListNode.new(0)

puts "Expected: [1,2,3,4] -- Actual: #{head.convert_ll_to_arr(sort_list(head.convert_arr_to_ll(head1)))}"
puts "Expected: [-1,0,3,4,5] -- Actual: #{head.convert_ll_to_arr(sort_list(head.convert_arr_to_ll(head2)))}"
puts "Expected: [] -- Actual: #{head.convert_ll_to_arr(sort_list(head.convert_arr_to_ll(head3)))}"
puts "Expected: [1] -- Actual: #{head.convert_ll_to_arr(sort_list(head.convert_arr_to_ll(head4)))}"