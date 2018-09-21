class Node

  attr_accessor :value, :next

  def initialize(value, next_node = nil)
    @value = value
    @next = next_node
  end

end

def print_ll(head)
  current = head
  while current
    print " #{current.value} ->"
    current = current.next
  end

end

def insert(head, val, position)

  if position == 0
    new_node = Node.new(val, head)
    return new_node
  else
    curr = head
    (position-1).times do
      raise "not enough elements" if curr == nil  # count < position-1, for position 5,6,7... it will raise
      curr = curr.next                            # count starts from 1, 2 and so on till less than one position
    end                                           # counter is still remaining and need to go till position-1 even curr is nil

    raise "not enough elements" if curr == nil   # count < position-1, for position 4 it will raise
    tmp = curr.next                              # count starts from 1, 2, 3 and 3 < 4 and curr = nil so it will raise
    new_node = Node.new(val, curr.next)
    curr.next = new_node
    new_node.next = tmp
    return head
  end
end

# for position 4 (count < position-1) at line no. 33
#  count  position  curr == nil?
#   1       4        2 (no)
#   2       4        3 (no)
#   3       4        yes = raise
#
# # for position 5 (count < position-1) at line no. 29
# #  count  position  curr == nil?
# #   1       5        2 (no)
# #   2       5        3 (no)
# #   3       5        nil (yes)  it goes further because still counter is remaining till go to position-1
# #   4       5        nil (yes)  it raise here at line number 29


def delete(head, val)
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



def search(val, head)
  curr = head
  while curr != nil
    if curr.value == val
      return val
      break
    end
    curr = curr.next
  end
  puts "element is not found in linked list"
end

def searchMiddleElement(head)

  slow = head
  fast = head

  if head == nil
    return false
  end

  while (fast != nil && fast.next != nil && slow != nil)
    slow = slow.next
    fast = fast.next.next
  end

  return slow.value
end

n3 = Node.new(3, nil)
n2 = Node.new(2, n3)
n1 = Node.new(1, n2)



# p print_ll(n1)
# ll = delete(n1,3)
# p print_ll(ll)
# ll = delete(n1,3)
# p print_ll(ll)
# p n1
# ll = insert(n1,4, 0)
# p print_ll(ll)

# ll = insert(n1,8, 1)
# p print_ll(ll)
# ll = insert(n1,5, 4)  # exception after traverse through all positions at 4th line no: 36 after coming out from position loop
# p print_ll(ll)

ll = insert(n1,6, 5)  # line no:30
p ll

# ll = insert(n1, 10,2)
# p print_ll(ll)
# p search(5, n1)

# p searchMiddleElement(n1)

