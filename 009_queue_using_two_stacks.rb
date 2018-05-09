# Implementing queue using stack
#
# Implement the following operations of a queue using stacks.
#
#     push(x) -- Push element x to the back of queue.
#     pop() -- Removes the element from in front of queue.
#     peek() -- Get the front element.
#     empty() -- Return whether the queue is empty.
#     Notes:
#     You must use only standard operations of a stack -- which means only push to top, peek/pop from top, size, and is empty operations are valid.
#     Depending on your language, stack may not be supported natively. You may simulate a stack by using a list or deque (double-ended queue), as long as you use only standard operations of a stack.
#     You may assume that all operations are valid (for example, no pop or peek operations will be called on an empty queue).



class MyQueue

  def initialize
    @stack1 = []
    @stack2 = []
  end

  def push(x)
    @stack1.push(x)
  end

  def pop
    if @stack2.empty?
      while (!@stack1.empty?) do
        @stack2.push(@stack1.pop)
      end
    end

    return @stack2.pop()
  end

  def peek
    if @stack2.empty?
      while (!@stack1.empty?) do
        @stack2.push(@stack1.pop)
      end
    end

    return @stack2.last
  end

  def qEmpty
    return @stack1.empty? && @stack2.empty?
  end

  def qSize
    return ( @stack1.size + @stack2.size)
  end

end


myQue = MyQueue.new

p myQue.push('a')
p myQue.push('b')
p myQue.qSize

p myQue.pop()

p myQue.peek

p myQue.qEmpty
