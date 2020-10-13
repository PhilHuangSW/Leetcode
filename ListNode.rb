#################### LISTNODE CLASS ####################
class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end

  def convert_arr_to_ll(arr)
    return nil if arr.empty?
    return ListNode.new(arr[0]) if arr.length == 1
    head = ListNode.new(arr[0])
    node = head
    for i in 1...arr.length
      node.next = ListNode.new(arr[i])
      node = node.next
    end
    return head
  end

  def convert_ll_to_arr(node)
    return [] if node.nil?
    arr = []
    while node != nil
      arr << node.val
      node = node.next
    end
    arr
  end
end
