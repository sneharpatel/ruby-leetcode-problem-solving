# Implementing stack using two queues:

# Implement the following operations of a stack using queues.

# push(x) -- Push element x onto stack.
#     pop() -- Removes the element on top of the stack.
#     top() -- Get the top element.
#     empty() -- Return whether the stack is empty.
#     Notes:
#     You must use only standard operations of a queue -- which means only push to back, peek/pop from front, size, and is empty operations are valid.
#     Depending on your language, queue may not be supported natively. You may simulate a queue by using a list or deque (double-ended queue), as long as you use only standard operations of a queue.
#     You may assume that all operations are valid (for example, no pop or top operations will be called on an empty stack).



class MyStack

  def initialize
    @queue1 = []
    @queue2 = []
  end

  def push(x)
    if @queue1.empty?
      @queue2.push(x)
    else
      @queue1.push(x)
    end
    # @queue1.push(x)
  end

  def pop
    if @queue1.empty?
      if @queue2.empty?
        p "Stack will not perofrm any operations"
        exit
      else
        while (!@queue2 == 1 )
          @queue1.push(@queue2.pop())
        end
        return @queue2.pop()
      end
    else
      while (@queue1.size != 1)
        @queue2.push(@queue1.pop())
      end
      return @queue1.pop()
    end
  end

  def sEmpty
    return @queue1.empty? && @queue2.empty?
  end

  def top
    if @queue1.empty?
      if @queue2.empty?
        p "Stack will not perform any operations"
        exit
      else
        while (@queue2.size != 1)
          @queue1.push(@queue2.pop())
          return @queue1.last
        end
        return @queue2.pop()
      end
    else
      while (@queue1.size != 1)
        @queue2.push(@queue1.pop())
        return @queue2.last
      end
      return @queue1.pop()
    end
  end

  def sSize
    return @queue1.size + @queue2.size
  end

end

myStack = MyStack.new

p myStack.push('a')
p myStack.push('b')
p myStack.push('c')
p myStack.pop()
p myStack.sSize
p myStack.sEmpty
p myStack.top


# p myStack.push('x')
# p myStack.pop()
# p myStack.sEmpty
# p myStack.top
