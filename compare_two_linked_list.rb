# You’re given the pointer to the head nodes of two linked lists. Compare the data in the nodes of the linked lists to check if they are equal. The lists are equal only if they have the same number of nodes and corresponding nodes contain the same data. Either head pointer given may be null meaning that the corresponding list is empty.
#
#     Input Format
#
# You have to complete the int CompareLists(Node* headA, Node* headB) method which takes two arguments - the heads of the two linked lists to compare. You should NOT read any input from stdin/console.
#
#     The input is handled by the code in the editor and the format is as follows: The first line contains , the number of test cases. The format for each test case is as follows:
#
#                                                                                                                                                                              The first line contains an integer , denoting the number of elements in the first linked list.
#     The next  lines contain an integer each, denoting the elements of the first linked list.
#     The next line contains an integer , denoting the number of elements in the second linked list.
#     The next  lines contain an integer each, denoting the elements of the second linked list.
#
#Output Format

# Compare the two linked lists and return 1 if the lists are equal. Otherwise, return 0. Do NOT print anything to stdout/console.
#
#     The output is handled by the code in the editor and it is as follows:
#
#     For each test case, in a new line, print  if the two lists are equal, else print .
# #



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



def compare_two_linked_list(headA,headB)

  while headA != nil && headB != nil && headA.value == headB.value
    headA = headA.next
    headB = headB.next
  end

  return (headA == headB)? 1 : 0

end



n2 = Node.new(3,nil)
n1 = Node.new(1, n2)

# p printLinkedList(n1)


m2 = Node.new(2,nil)
m1 = Node.new(1,m2)
# p printLinkedList(m1)


p compare_two_linked_list(n1,m1)

