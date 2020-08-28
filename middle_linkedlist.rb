#################### MIDDLE OF THE LINKED LIST ####################

# Given a non-empty, singly linked list with head node head, return a middle node of linked list.

# If there are two middle nodes, return the second middle node.

# Example 1:
# Input: [1,2,3,4,5]
# Output: Node 3 from this list (Serialization: [3,4,5])
# The returned node has value 3.  (The judge's serialization of this node is [3,4,5]).
# Note that we returned a ListNode object ans, such that:
# ans.val = 3, ans.next.val = 4, ans.next.next.val = 5, and ans.next.next.next = NULL.

# Example 2:
# Input: [1,2,3,4,5,6]
# Output: Node 4 from this list (Serialization: [4,5,6])
# Since the list has two middle nodes with values 3 and 4, we return the second one.
 
# Note:
# - The number of nodes in the given list will be between 1 and 100.


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
def middle_node(head)
    if head.next.nil?
        return head
    end
    count = 0
    node = head
    # get a count of how long the linked list is
    while node.next != nil
        node = node.next
        count += 1
    end
    # if it's odd, get the middle node
    # if it's even, get the 2nd middle node
    if (count%2 == 1)
        count = count/2 + 1
    else
        count = count/2
    end
    
    # iterate through until your head points to the middle node
    for i in 0...count
        head = head.next
    end
    return head    
end

def middle_node(head)
    return head if head.next.nil?
    return head.next if head.next.next.nil?
    # we have 2 pointers: slow moves 1 space at a time while fast moves 2 spaces
    slow = head.next
    fast = head.next.next
    while(!fast.next.nil?)
        slow = slow.next
        return slow if (fast.next.next == nil)
        fast = fast.next.next
    end
    slow
end
