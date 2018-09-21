# http://rubyalgorithms.com/singly_linked_list.html
#
# Write a function to delete a node (except the tail) in a singly linked list, given only access to that node.

# Supposed the linked list is 1 -> 2 -> 3 -> 4 and you are given the third node with value 3, the linked list should become 1 -> 2 -> 4 after calling your function.
#


class Node

  attr_accessor :value, :next_node

  def initialize(value, next_node)
    @value = value
    @next_node = next_node

    puts "Initialized a Node with value:  " + value.to_s
  end

end


class LinkedList
  def initialize(val)
    # Initialize a new node at the head
    @head = Node.new(val,nil)
  end


  def add(value)
    # Traverse to the end of the list
    # And insert a new node over there with the specified value
    current = @head
    while current.next_node != nil
      current = current.next_node
    end
    current.next_node = Node.new(value,nil)
    self
  end

  def delete_node(val)
    current = @head
    if current.value == val
      # If the head is the element to be delete, the head needs to be updated
      @head = @head.next_node
    else
      # ... x -> y -> z
      # Suppose y is the value to be deleted, you need to reshape the above list to :
      #   ... x->z
      # ( and z is basically y.next_node )
      current = @head
      while (current != nil) && (current.next_node != nil) && ((current.next_node).value != val)
        current = current.next_node
      end

      if (current != nil) && (current.next_node != nil)
        current.next_node = (current.next_node).next_node
      end
    end
  end
end








ll = LinkedList.new(1)

# ll2 = LinkedList.new(2)
#
# ll3 = LinkedList.new(3)
#
# ll4 = LinkedList.new(4)





ll.add(2)
ll.add(3)
ll.add(4)

# p ll4

ll.delete_node(3)

p ll





