# http://www.informit.com/articles/article.aspx?p=26943&seqNum=4


class Stack

  def initialize
    @stack = []
  end

  def push(x)
    @stack.push x
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end

  def empty?
    @stack.empty?
  end

end


# A prime number is a whole number greater than 1 whose only factors are 1 and itself

def prime?(n)
  (2..n-1).each do |i|
    if (n % i) == 0
      return false
    end
  end
  return true
end

# p prime?(173)  # true



# Variable Length Argument List, Asterisk Operator
#
# The last parameter of a method may be preceded by an asterisk(*),
# which is sometimes called the 'splat' operator. This indicates that more parameters may be
# passed to the function. Those parameters are collected up and an array is created.
#
#     The asterisk operator may also precede an Array argument in a method call.
# In this case the Array will be expanded and the values passed in as if they were separated by commas.

def full_name(*name)
  name.join(" ")
end

# p full_name('Harsha', 'Bhogle')
# p full_name('Pradeep', 'Suresh', 'Satyanarayana')
#
#
#
#
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



