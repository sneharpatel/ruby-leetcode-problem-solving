# require 'pry'

class Node

  attr_accessor :value, :next_node

  def initialize(value, next_node)
    @value = value    # head node value
    @next_node = next_node  # next node address
  end

end




class LinkedList
  def initialize

  end

  def empty?
    @head == nil  # (!@head.nil? alternate of head == nil)

  end

  def shift
    node_to_return = @head
    @head = @head.next_node
    node_to_return.value
  end

  def append(value)

    if empty?
      #  list is empty, head and tail both are empty
      @head = @tail = Node.new(value, nil)
    else
      # list is not empty
      new_node = Node.new(value, nil)
      @tail.next_node = new_node
      @tail = new_node
    end
    self
  end

  def prepend(value)

    if empty?
    #  list is empty, head and tail both are empty
    @head = @tail = Node.new(value, nil)
    else
      # list is not empty
      new_node = Node.new(value, @head)
      @head = new_node

    end
    self
  end

  def to_s
    cursor = @head
    while cursor != nil
      print "#{cursor.vlaue} ->"
      cursor = cursor.next_node
    end
    "List: #{@head.value}"
  end


end




my_linkedlist = LinkedList.new
p my_linkedlist.prepend(2)



# binding.pry


#https://www.youtube.com/watch?v=UxEuOVeiUAk  - linkedlist from scratch

# https://stackoverflow.com/questions/37487916/implementing-a-linkedlist-in-ruby?rq=1

# https://www.theodinproject.com/courses/ruby-programming/lessons/linked-lists

# http://wlowry88.github.io/blog/2014/08/20/linked-lists-in-ruby/

# https://gist.github.com/ggilder/3224402