# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  first_node = ListNode.new
  temp_node = first_node

  while true
    if list1.nil?
      temp_node.next = list2
      break
    elsif list2.nil?
      temp_node.next = list1
      break
    else
      if list1.val < list2.val
        temp_node.next = list1
        list1 = list1.next
      else
        temp_node.next = list2
        list2 = list2.next
      end
      temp_node = temp_node.next
    end

  end

  first_node.next
end
