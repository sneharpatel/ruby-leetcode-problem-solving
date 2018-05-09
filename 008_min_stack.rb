# # https://www.youtube.com/watch?v=T0GA5jaNOjY

# Min stack: O(1) - constant time

# Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.
#
#     push(x) -- Push element x onto stack.
#     pop() -- Removes the element on top of the stack.
#     top() -- Get the top element.
#     getMin() -- Retrieve the minimum element in the stack.

# Example:
#     MinStack minStack = new MinStack();
# minStack.push(-2);
# minStack.push(0);
# minStack.push(-3);
# minStack.getMin();   --> Returns -3.
#     minStack.pop();
# minStack.top();      --> Returns 0.
#     minStack.getMin();   --> Returns -2.


class MinStack

  def initialize
    @stack1 = []
    @stack2 = []
  end

  def push(x)
    @stack1.push(x)
    if @stack2.empty?
      @stack2.push(x)
    else
      if x < @stack2.last
        @stack2.push(x)
      end
    end
  end

  def pop
    if top == @stack2.last
      @stack1.pop
      @stack2.pop
    end
  end

  def top
    return @stack1.last
  end

  def getMin
    return @stack2.last
  end

end


minStack = MinStack.new
p minStack.push(-2)
p minStack.push(0)
p minStack.push(-3)
p minStack.getMin()
p minStack.pop()
p minStack.top()
p minStack.getMin()

top = minStack.top()

p "#{top}"  # return 0

min = minStack.getMin()  # return -2

p "#{min}"