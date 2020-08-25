#################### REMOVE LINKED LIST ELEMENTS ####################

# Remove all elements from a linked list of integers that have value val.

# Example:
# Input:  1->2->6->3->4->5->6, val = 6
# Output: 1->2->3->4->5

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
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
    return [] if head.nil?
    while(head.val == val)
        if head.next != nil
            head = head.next
        else
            return []
        end
    end
    
    current_node = head
    previous_node = head
    while (current_node != nil)
        if current_node.val == val
            previous_node.next = current_node.next
        else
            previous_node = current_node
        end
        current_node = current_node.next
    end
    head
end