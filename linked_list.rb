
class Node
  attr_accessor :value, :next
  def initialize(value, next_node=nil)
    @value = value
    @next = next_node
  end
end


def printLinkedList(head)
  current = head
  while current
      print "#{current.value} ->"
      current = current.next
  end
end


def insertNodeAtEnd(head,val)

  current = head

  while current.next != nil
    current = current.next
  end
  temp = Node.new(val, nil)
  current.next = temp
  temp.next = nil
  return head
end

def insertNodeAtBegin(head,val)
  new_node = Node.new(val,head)
  return new_node
end

def insertAtMiddle(head, val, position)
  current = head
  # if position == 0
  #   new_node = Node.new(val,head)
  #   return new_node
  # end

  (position - 1).times do
    raise "List not long enough" if current == nil
    current = current.next
  end
  raise "not enough elements" if current == nil
  temp = current.next
  new_node= Node.new(val,current.next)
  current.next = new_node
  new_node.next = temp
  return head

end

def insert_node(head,val, position)

  current = head

  if position == 0
    new_node = Node.new(val,head)
    return new_node
  else
    (position-1).times do
      raise "List not long enough" if current == nil
      current = current.next
    end

    raise "List not long enough" if current == nil
    temp = current.next
    new_node = Node.new(val,current.next)
    current.next = new_node
    new_node.next = temp
    return head

  end

end

#delete node located at nth position
def delete(head,position)
  current = head
  # prev = nil
while current != nil
  if position == 0
    head = head.next
    return head
  else
    (position-1).times do
      raise "List not long enough" if current.next == nil
      # prev = current
      current = current.next
    end
    raise "List not long enough" if current.next == nil
    temp = current.next.next
    current.next = temp
  end
  return head
end

end

# delete value of linked list

def delete_val(head, val)
  current = head
  prev = nil
  while (current != nil)
    if current.value == val
      # if it's a first element
      if prev == nil
        return head.next
        # else any element which is not first but 2nd, 3rd and so forth
      else
        prev.next = prev.next.next
        break
      end
    else
      prev = current
      current = current.next
    end
  end
  return head
end

def reverseLinkedList(head)
  current = head
  prev = nil

  while current != nil
    temp = current.next
    current.next = prev
    prev = current
    current = temp
  end

  head = prev

  return head

end

def getNodefromEndOfLinkedlist(head, n)

  curr = head
  follower = head


  (0..n-1).each do |i|
    return nil if curr.next == nil
    curr = curr.next
  end

  while curr.next != nil
    curr = curr.next
    follower = follower.next
  end

  return follower.value


end



n3 = Node.new(11,nil)
n2 = Node.new(13,n3)
n1 = Node.new(16,n2)



# p printLinkedList(n1)

# insertNodeAtEnd(n1,11)
# p printLinkedList(n1)
#
# ll = insertNodeAtBegin(n1,18)
#
# p printLinkedList(ll)

# ll1 = insertAtMiddle(n1,15,1)  # this test case only will take care of middle positions not at head or tail
#
# ll1 = insert_node(n1, 10, 3)
#
# p printLinkedList(ll1)

# lld = delete(n1,5)
#
# p printLinkedList(lld)

# ll2 = reverseLinkedList(ll1)
#
# printLinkedList(ll2)
#
#
n3 = Node.new(1,nil)
n2 = Node.new(2,n3)
n1 = Node.new(3,n2)
# p printLinkedList(n1)
p getNodefromEndOfLinkedlist(n1, 2)
 # p printLinkedList(ll)

# https://www.youtube.com/watch?v=i7v1UWlaYrI - ref for get node


