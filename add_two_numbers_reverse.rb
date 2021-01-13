#################### ADD TWO NUMBERS - REVERSED ####################

# You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

# You may assume the two numbers do not contain any leading zero, except the number 0 itself.

# **Example 1:**
# ```
# Input: l1 = [2,4,3], l2 = [5,6,4]
# Output: [7,0,8]
# Explanation: 342 + 465 = 807.
# ```

# **Example 2:**
# ```
# Input: l1 = [0], l2 = [0]
# Output: [0]
# ```

# **Example 3:**
# ```
# Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
# Output: [8,9,9,9,0,0,0,1]
# ```

# **Constraints:**
# - The number of nodes in each linked list is in the range [1, 100].
# - 0 <= Node.val <= 9
# - It is guaranteed that the list represents a number that does not have leading zeros.

#################### SOLUTION ####################
require 'rspec/autorun'

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
def add_two_numbers(l1, l2)
  l1_arr = []
  l2_arr = []
  while !l1.nil?
    l1_arr << l1.val
    l1 = l1.next
  end
  while !l2.nil?
    l2_arr << l2.val
    l2 = l2.next
  end
  l1_value = (l1_arr.reverse.join).to_i
  l2_value = (l2_arr.reverse.join).to_i
  ans = l1_value + l2_value
  ans = ans.to_s
  ans_arr = []
  for i in (ans.length-1).downto(0)
    ans_arr << ans[i]
  end
  ans_arr
  ans_ll = ListNode.new(ans_arr[0])
  head = ans_ll
  return ans_ll if ans_arr.length == 1
  for i in 1...ans_arr.length
    ans_ll.next = ListNode.new(ans_arr[i])
    ans_ll = ans_ll.next
  end
  return head
end