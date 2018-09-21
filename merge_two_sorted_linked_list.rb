# You’re given the pointer to the head nodes of two sorted linked lists. The data in both lists will be sorted in ascending order. Change the next pointers to obtain a single, merged linked list which also has data in ascending order. Either head pointer given may be null meaning that the corresponding list is empty.
#
#     Input Format
#
# You have to complete the SinglyLinkedListNode MergeLists(SinglyLinkedListNode headA, SinglyLinkedListNode headB) method which takes two arguments - the heads of the two sorted linked lists to merge. You should NOT read any input from stdin/console.
#
#     The input is handled by the code in the editor and the format is as follows:
#
#                                                                             The first line contains an integer , denoting the number of test cases.
#     The format for each test case is as follows:
#
#                                             The first line contains an integer , denoting the length of the first linked list.
#         The next  lines contain an integer each, denoting the elements of the linked list.
#         The next line contains an integer , denoting the length of the second linked list.
#         The next  lines contain an integer each, denoting the elements of the second linked list.
#
# Output Format
#
# Change the next pointer of individual nodes so that nodes from both lists are merged into a single list. Then return the head of this merged list. Do NOT print anything to stdout/console.
#
# The output is handled by the editor and the format is as follows:
#
# For each test case, print in a new line, the linked list after merging them separated by spaces.
#
# Explanation
#
# The first linked list is: 1 -> 2 -> 3 -> NULL
#
# The second linked list is: 3 -> 4 -> NULL
#
# Hence, the merged linked list is: 1 -> 2 -> 3 -> 3 -> 4 -> NULL
#
#
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
    #
    # p current.value
    # current = current.next
  end
end

def merge_sorted_linked_list(nodeA,nodeB)

  nodeC = Node.new(0,0)
  result = nodeC

  while (nodeA != nil) && (nodeB != nil)
    if nodeA.value <= nodeB.value
      nodeC.next = nodeA
      nodeA = nodeA.next
    else
      nodeC.next = nodeB
      nodeB = nodeB.next
    end

    nodeC = nodeC.next
    p nodeC
  end

  if nodeA == nil
    nodeC.next = nodeB
  end

  if nodeB == nil
    nodeC.next = nodeA
  end

  return result.next

end


def removeDuplicate(head)
  curr = head
  while (curr != nil && curr.next != nil)
    if curr.value == curr.next.value
      temp = curr.next.next
      if temp == nil
        curr.next = nil
        break
      end
      curr.next = temp
    end

    if curr.value != curr.next.value
      curr = curr.next
    end
  end

  return head
end



def has_cycle(head)
  slow = head
  fast = head

  if slow == nil || fast == nil
    return false
  end

  while slow != nil && fast != nil && fast.next != nil
    slow = slow.next
    fast = fast.next.next

    if slow == fast && fast != nil
      p "found loop"
      return true
    end
  end
  return false
end


def find_merge_node(head1, head2)

  nodeA = head1
  nodeB = head2

 while nodeA != nodeB
   nodeA = nodeA.next
   nodeB = nodeB.next
   if nodeA == nil
     nodeA = head2
   end
   if nodeB == nil
     nodeB = head1
   end
 end

  return nodeA.value

end

def find_length(head)
  curr = head
  length = 0
  while curr != nil
    curr = curr.next
    length = length + 1
  end

  return length
end


# merge sorted test case
# n3 = Node.new(5,nil)
# n2 = Node.new(4,n3)
# n1 = Node.new(1, n2)
#
# # p printLinkedList(n1)
#
#
# m2 = Node.new(4,nil)
# m1 = Node.new(2,m2)
# # p printLinkedList(m1)
#
# ll1 = merge_sorted_linked_list(n1,m1)
# p printLinkedList(ll1)


# remove duplicates test cases

# n4 = Node.new(3,nil)
# n3 = Node.new(2,n4)
# n2 = Node.new(2,n3)
# n1 = Node.new(1,n2)
#
# ll = removeDuplicate(n1)
# p printLinkedList(ll)



# # has cycle test case
# n3 = Node.new(3,nil)
# n2 = Node.new(2,n3)
# n1 = Node.new(1,n2)
#
# # n3.next = n2
#
# p has_cycle(n1)


# find merge node from two linked list
#
# n4 = Node.new(3,nil)
# n3 = Node.new(2,n4)
# n2 = Node.new(1,n3)
# n1 = Node.new(1,n3)
#
# p find_merge_node(n1,n2)
# #
#
# n3 = Node.new(3,nil)
# n2 = Node.new(1,n3)
# n1 = Node.new(2,n3)
# no = Node.new(1,n1)
# p find_merge_node(no,n2)


# find length of linked list
n4 = Node.new(3,nil)
n3 = Node.new(2,n4)
n2 = Node.new(1,n3)
n1 = Node.new(1,n2)

p find_length(n1)


# https://www.youtube.com/watch?v=iUyEyCvo0gI
#
# https://www.youtube.com/watch?v=1SDVa-p_CZs