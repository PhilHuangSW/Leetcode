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

# Iterative solution
def merge_two_lists(l1, l2)
    return [] if (l1.nil? && l2.nil?)
    return l1 if (l2.nil?)
    return l2 if (l1.nil?)
    
    l3 = ListNode.new
    node = l3
    
    while (!l1.nil? && !l2.nil?)
        if (l1.val <= l2.val)
            node.val = l1.val
            l1 = l1.next
        else
            node.val = l2.val
            l2 = l2.next
        end
        node.next = ListNode.new            
        node = node.next
    end
    
    while(l1.nil? && !l2.nil?) 
        node.val = l2.val
        l2 = l2.next
        if (!l2.nil?)
            node.next = ListNode.new
            node = node.next
        end
    end
    
    while(!l1.nil? && l2.nil?)
        node.val = l1.val
        l1 = l1.next
        if(!l1.nil?)
            node.next = ListNode.new
            node = node.next
        end
    end
    l3
end

# Recursive solution
def merge_two_lists(l1, l2)
    return l1 if l2.nil?
    return l2 if l1.nil?
    
    if l1.val <= l2.val
        l1.next = merge_two_lists(l1.next, l2)
        return l1
    else
        l2.next = merge_two_lists(l1, l2.next)
        return l2
    end
end