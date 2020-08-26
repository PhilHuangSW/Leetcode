#################### MERGE TWO SORTED LISTS ####################

# Merge two sorted linked lists and return it as a new sorted list. The new list should be made by splicing together the nodes of the first two lists.

# Example:
# Input: 1->2->4, 1->3->4
# Output: 1->1->2->3->4->4


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
def merge_two_lists(l1, l2)
    return [] if (l1.nil? && l2.nil?)
    return l1 if (l2.nil?)
    return l2 if (l1.nil?)
    
    l3 = ListNode.new
    node = l3
    
    while (!l1.nil? && !l2.nil?)
        if (l1.val <= l2.val)
            node.val = l1.val
            node.next = ListNode.new
            l1 = l1.next
        else
            node.val = l2.val
            node.next = ListNode.new()
            l2 = l2.next
        end
        if (!l1.nil? && !l2.nil?)
            node.next = ListNode.new
        end            
        node = node.next
    end
    
    while(l1.nil? && !l2.nil?) 
        node.val = l2.val
        if l2.next != nil
            node.next = ListNode.new(l2.next)
            node.next.val = l2.next.val
        end
        l2 = l2.next
        if (!l2.nil?)
            node.next = ListNode.new
        end
        node = node.next
    end
    while(!l1.nil? && l2.nil?)
        node.val = l1.val
        if l1.next != nil
            node.next = ListNode.new(l1.next)
        end
        l1 = l1.next
        if (!l1.nil?)
            node.next = ListNode.new
        end
        node = node.next
    end
    l3
end