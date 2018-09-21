# Given a linked list, determine if it has a cycle in it.
#
#     Follow up:
#                Can you solve it without using extra space?

class LinkedListNode

    attr_accessor :value, :next_node

    def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
    end
end


# def print_values(list_node)
#   if list_node
#     print "#{list_node.value} --> "
#     print_values(list_node.next_node)
#   else
#     print "nil\n"
#     return
#   end
# end

  def hasCycle(head)

    slow = head
    fast = head

    if slow == nil || fast == nil
      return false
    end

    while(slow != nil && fast != nil && fast.next_node != nil)
      slow = slow.next_node
      fast = fast.next_node.next_node
      if slow == fast && fast != nil
        p "found loop"
        return true
      end
    end

    return false
  end



node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(45, node3)
node5 = LinkedListNode.new(21, node4)

node1.next_node = node2
p hasCycle(node5)
# node1.next_node = node5 # creates an infinite loop
# p hasCycle(node5)

