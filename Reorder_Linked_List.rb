#################### REORDER (LINKED) LIST ####################

# Given a singly linked list L: L0→L1→…→Ln-1→Ln,
# reorder it to: L0→Ln→L1→Ln-1→L2→Ln-2→…

# You may not modify the values in the list's nodes, only nodes itself may be changed.

# Example 1:
# Given 1->2->3->4, reorder it to 1->4->2->3.

# Example 2:
# Given 1->2->3->4->5, reorder it to 1->5->2->4->3.


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
# @return {Void} Do not return anything, modify head in-place instead.
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Void} Do not return anything, modify head in-place instead.
def reorder_list(head)
    if head == nil
        return nil
    end
    
    current = head
    temp = head.next
    temp_two = temp
    last = head
    count = 0
    # this while loop grabs the last element in the linked list, and 
    # counts the number of elements in the linked list
    while current.next != nil
        last = current
        current = current.next
        count += 1
    end
    count = count/2

    for i in 0...count
        # first pass, current is already last node
        # every other pass, this while loop gets the last node
        while current.next != nil
            last = current
            current = current.next
        end
        # first pass, head.next -> last node
        if i == 0
            head.next = current
            last.next = nil
            current.next = temp
        else
            temp_two = temp_two.next
            temp.next = current
            temp = temp_two
            current.next = temp_two
            last.next = nil
        end
    end
end