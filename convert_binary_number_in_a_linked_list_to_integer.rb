#################### CONVERT BINARY NUMBER IN A LINKED LIST TO INTEGER ####################

# Given head which is a reference node to a singly-linked list. The value of each node in the linked list is either 0 or 1. The linked list holds the binary representation of a number.

# Return the *decimal value* of the number in the linked list.

# **Example 1:**
# ```
# Input: head = [1,0,1]
# Output: 5
# Explanation: (101) in base 2 = (5) in base 10
# ```

# **Example 2:**
# ```
# Input: head = [0]
# Output: 0
# ```

# **Example 3:**
# ```
# Input: head = [1]
# Output: 1
# ```

# **Example 4:**
# ```
# Input: head = [1,0,0,1,0,0,1,1,1,0,0,0,0,0,0]
# Output: 18880
# ```

# **Example 5:**
# ```
# Input: head = [0,0]
# Output: 0
# ```

# **Constraints:**
# - The Linked List is not empty.
# - Number of nodes will not exceed 30.
# - Each node's value is either 0 or 1.

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
# @param {ListNode} head
# @return {Integer}
def get_decimal_value(head)
  binary = []
  while head != nil
    binary << head.val
    head = head.next
  end
  binary_to_decimal(binary)
end

def binary_to_decimal(binary)
  idx = 0
  decimal = 0
  for i in (binary.length-1).downto(0)
    if binary[i] == 1
      if idx == 0
        decimal += 1
      else
        decimal += (2 ** idx)
      end
    end
    idx += 1
  end
  decimal
end