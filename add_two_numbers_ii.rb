#################### ADD TWO NUMBERS II ####################

# You are given two **non-empty** linked lists representing two non-negative integers. The most significant digit comes first and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

# You may assume the two numbers do not contain any leading zero, except the number 0 itself.

# **Follow up:**
# What if you cannot modify the input lists? In other words, reversing the lists is not allowed.

# **Example:**
# ```
# Input: (7 -> 2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 8 -> 0 -> 7
# ```

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
  l1_value = (l1_arr.join).to_i
  l2_value = (l2_arr.join).to_i
  ans = l1_value + l2_value
  ans = ans.to_s
  ans_arr = []
  for i in 0...ans.length
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