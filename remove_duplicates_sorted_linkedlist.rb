#################### REMOVE DUPLICATES FROM SORTED LIST ####################

# Given a sorted linked list, delete all duplicates such that each element appear only once.

# Example 1:
# Input: 1->1->2
# Output: 1->2

# Example 2:
# Input: 1->1->2->3->3
# Output: 1->2->3

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
def delete_duplicates(head)
    return [] if head.nil?
    return head if head.next.nil?
    
    h = Hash.new{|h,k| h[k] = 0}
    current_node = head
    previous_node = head
    while(!current_node.nil?)
        if h.has_key?(current_node.val)
            previous_node.next = current_node.next
        else
            h[current_node.val] += 1
            previous_node = current_node
        end
        current_node = current_node.next
    end
    head
end

