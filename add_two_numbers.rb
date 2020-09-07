#################### ADD TWO NUMBERS ####################

# You are given two non-empty linked lists representing two 
# non-negative integers. The digits are stored in reverse order 
# and each of their nodes contain a single digit. Add the two 
# numbers and return it as a linked list.

# You may assume the two numbers do not contain any leading 
# zero, except the number 0 itself.

# Example:
# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8
# Explanation: 342 + 465 = 807.


#################### SOLUTION ####################
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2, l3 = ListNode.new(0))
    # add the values together and place them into l3
    # if it's over, get the remainder and add a new node
    # into l3 with value 1
    if l1 && l2
        l3.val = l1.val + l2.val + l3.val
        if l3.val >= 10
            l3.val = l3.val%10
            l3.next = ListNode.new(1)
        end
    end
    # we use recursion all the way down to get all the values into l3
    if l1.next && l2.next
        if l3.next
            add_two_numbers(l1.next, l2.next, l3.next)
        else
            add_two_numbers(l1.next, l2.next, l3.next = ListNode.new(0))
        end
    end
    if l1.next && !l2.next
        if l3.next
            add_two_numbers(l1.next, l2.next = ListNode.new(0), l3.next)
        else
            add_two_numbers(l1.next, l2.next = ListNode.new(0), l3.next = ListNode.new(0))
        end
    end
    if !l1.next && l2.next
        if l3.next
            add_two_numbers(l1.next = ListNode.new(0), l2.next, l3.next)
        else
            add_two_numbers(l1.next = ListNode.new(0), l2.next, l3.next = ListNode.new(0))
        end
    end
    l3
end