# Given a linked list and a value k, give the kth element from the last
#
#



class Node
  attr_accessor :value, :next

  def initialize(val, next_node=nil)
    @value = val
    @next = next_node
  end
end

def print_ll(head)
  curr = head
  while curr
    print "#{curr.value} ->"
    curr = curr.next
  end
end


def get_kth_ele_from_the_last(head, k)

  curr = head
  follower = head


  (0..k-1).each do |i|
    return nil if curr.next == nil
    curr = curr.next
  end


  while curr.next != nil
    curr = curr.next
    follower = follower.next
  end


  return follower.value
end


# length of ll - n => 5-n
# n = 1, output = 9
# n = 2, o/p = 7
# n = 3, o/p = 4
n5 = Node.new(11,nil)
n4 = Node.new(9,n5)
n3 = Node.new(7,n4)
n2 = Node.new(4,n3)
n1 = Node.new(2,n2)
p get_kth_ele_from_the_last(n1,5)

# p print_ll(get_ll)