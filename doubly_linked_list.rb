class DLLNode
  attr_accessor :value, :prev, :next

  def initialize(pre, val, next_node)
    @prev = pre
    @value = val
    @next = next_node
  end
end

def printLinkedList(head)
  curr = head
  while curr
    print "#{curr.value} <-->"
    curr = curr.next
  end

end

def insert_node_at_beginning(head, val)
    new_node = DLLNode.new(nil,val,head)
    new_node.next = head
    head.prev = new_node
    new_node.prev = nil
    return new_node

end

def insert_node_at_end(head,val)
  curr = head
  while curr.next != nil
    curr = curr.next
  end

  temp = curr
  new_node = DLLNode.new(curr,val,nil)
  curr.next = new_node
  new_node.prev = temp
  new_node.next = nil
  return head

end


def insert_at_middle(head, val, position)
  curr = head

  # if position == 0
  #   new_node = DLLNode.new(nil,val,head)
  #   return new_node
  # end

  (position-1).times do
    raise "Not enough elements in linked list" if curr == nil
    curr = curr.next
  end

  raise "Not enough elements in linked list" if curr == nil
  temp = curr.next
  new_node = DLLNode.new(curr,val,curr.next)
  curr.next = new_node
  new_node.prev = curr
  new_node.next = temp
  return head

end


def insert_node(head,val,position)
  curr = head

  if position == 0
    new_node = DLLNode.new(nil,val,head)
    return new_node
  end

  (position-1).times do
    raise "Not enough elements in linked list" if curr == nil
    curr = curr.next
  end

  raise "Not enough elements in linked list" if curr == nil
  temp = curr.next
  new_node = DLLNode.new(curr,val,curr.next)
  curr.next = new_node
  new_node.prev = curr
  new_node.next = temp
  return head
  #
  #
  # if position == 0
  #   new_node = DLLNode.new(nil,val,head)
  #   return new_node
  # else
  #   (position-1).times do
  #     raise "Not enough elements in linked list" if curr == nil
  #     curr = curr.next
  #   end
  #
  #   raise "Not enough elements in linked list" if curr == nil
  #   temp = curr.next
  #   new_node = DLLNode.new(curr,val,curr.next)
  #   curr.next = new_node
  #   new_node.prev = curr
  #   new_node.next = temp
  #   return head
  # end

end

def insert_node_in_sorted_doubly_linked_list(head,val)
  curr = head
  prev = nil

  if head == nil
    new_node = DLLNode.new(nil,val,nil)
    return new_node
  elsif val < head.value
    new_node = DLLNode.new(nil,val,head)
    return new_node
  else
    while (curr != nil && curr.value < val)
      prev = curr
      curr = curr.next
    end
    if curr == nil
      new_node = DLLNode.new(nil,val,nil)
      prev.next =  new_node
      new_node.prev = prev
    else
      new_node = DLLNode.new(nil,val,nil)
      prev.next = new_node
      curr.prev = new_node
      new_node.prev = prev
      new_node.next = curr
    end
    return head
  end

end


def reverse_doubly_linked_list(head)
  curr = head
  prev = nil

  if curr == nil
    return nil
  end
  while curr != nil
    temp = curr.next
    curr.next = prev
    prev = curr
    curr = temp
  end

  head = prev
  return head

end

#  test case for insert at begin
n3 = DLLNode.new(3,4,nil)
n2 = DLLNode.new(2,3,n3)
n1 = DLLNode.new(nil,2, n2)
#
# ll = insert_node_at_beginning(n1,1)
# p printLinkedList(ll)

# test case for insert at end
# n3 = DLLNode.new(3,4,nil)
# n2 = DLLNode.new(2,3,n3)
# n1 = DLLNode.new(nil,2, n2)
#
# ll = insert_node_at_end(n1,5)
# p printLinkedList(ll)
#
# test case for insert at middle
# n3 = DLLNode.new(4,5,nil)
# n2 = DLLNode.new(2,4,n3)
# n1 = DLLNode.new(nil,2, n2)

# ll = insert_at_middle(n1,3,5)  # for position 4 - raise error on 58 line because curr is not nil so move forward to next element
                                            # and for position 5 - raise error on 54 because curr is nil
ll = insert_node(n1,5,1)
p printLinkedList(ll)


# test case for insert in sorted doubly link list
# n4 = DLLNode.new(4,10,nil)
# n3 = DLLNode.new(3,4,n4)
# n2 = DLLNode.new(1,3,n3)
# n1 = DLLNode.new(nil,1, n2)
#
# ll = insert_node_in_sorted_doubly_linked_list(n1,5)
# p printLinkedList(ll)
#
# n3 = DLLNode.new(3,4,nil)
# n2 = DLLNode.new(2,3,n3)
# n1 = DLLNode.new(nil,2, n2)
# n0 = DLLNode.new(nil,1,n1)
#
#
# ll = insert_node_in_sorted_doubly_linked_list(n1,1)
# p printLinkedList(ll)


n4 = DLLNode.new(3,4,nil)
n3 = DLLNode.new(2,3,n4)
n2 = DLLNode.new(1,2,n3)
n1 = DLLNode.new(nil,1, n2)

ll = reverse_doubly_linked_list(n1)
p printLinkedList(ll)


# https://study.com/academy/lesson/doubly-linked-lists-in-java-creation-nodes.html