#!/bin/ruby

require 'json'
require 'stringio'

class SinglyLinkedListNode
  attr_accessor :data, :next

  def initialize node_data
    @data = node_data
    @next = nil
  end
end

class SinglyLinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def insert_node node_data
    node = SinglyLinkedListNode.new node_data

    if not self.head
      self.head = node
    else
      self.tail.next = node
    end

    self.tail = node
  end
end

def print_singly_linked_list node, sep
  while node != nil
    print node.data

    node = node.next

    print sep if node != nil
  end
end

def reversePrint(llist)
  current = llist
  prev = nil
  while current != nil
    temp = current.next
    current.next = prev
    prev = current
    current = temp
  end
  llist = prev
  # puts "\n"
  print_singly_linked_list llist, "\n"
  puts "\n"

end

tests = [[16,12,4,2,5],[7,3,9],[5,1,18,3,13]]
# tests = [\n[16,12,4,2,5],\n[7,3,9],\n[5,1,18,3,13]] if \n before print_singly_linked_list
# tests = [[16,12,4,2,5],\n[7,3,9],\n[5,1,18,3,13]\n] if \n after print_singly_linked_list
tests.each do |tests_itr|
  llist = SinglyLinkedList.new

  tests_itr.each do |i|
    llist_item = i
    llist.insert_node llist_item
  end

  reversePrint llist.head
end







