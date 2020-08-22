#################### CONVERT BINARY NUMBER LINKED LIST TO INTEGER ####################

# Given head which is a reference node to a singly-linked list. 
# The value of each node in the linked list is either 0 or 1. 
# The linked list holds the binary representation of a number.

# Return the decimal value of the number in the linked list.


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
# @return {Integer}


def get_decimal_value(head)
    ll_to_array = []
    not_empty = true
    while (not_empty)
        ll_to_array.push (head.val)
        if head.next == nil
            not_empty = false;
        else
            head = head.next
        end
    end

    binary_to_decimal_array = []
    count = 0
    placement = ll_to_array.length - 1

    for i in 0...ll_to_array.length
        if ll_to_array[i] == 1
            binary_to_decimal_array.push (2**placement)
            placement -= 1
        else
            placement -= 1
        end
    end
    binary_to_decimal_array.sum
end