#################### PALINDROME LINKED LIST ####################

# Given a singly linked list, determine if it is a palindrome.

# Example 1:
# Input: 1->2
# Output: false

# Example 2:
# Input: 1->2->2->1
# Output: true

# Follow up:
# Could you do it in O(n) time and O(1) space?


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
# @return {Boolean}
def is_palindrome(head)
    return true if head.nil?
    return true if head.next.nil?
    
    arr = []
    while (head != nil)
        arr << head.val
        head = head.next
    end
    first_half_arr = []
    for i in 0...(arr.length/2)
        first_half_arr << arr[i]
    end
    
    second_half_arr = []
    if (arr.length%2 == 0)
        for i in (arr.length - 1).downto(arr.length/2)
            second_half_arr << arr[i]
        end
    else
        for i in (arr.length - 1).downto(arr.length/2 + 1)
            second_half_arr << arr[i]
        end
    end

    if first_half_arr == second_half_arr
        true
    else
        false
    end
end

## Second attempt (faster?)
def is_palindrome(head)
    return true if head.nil? 
    return true if head.next.nil?

    arr = []
    while (head != nil)
        arr << head.val
        head = head.next
    end

    (arr == arr.reverse) ? true : false
end
