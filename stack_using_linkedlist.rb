class Node
  attr_accessor :value, :next_node

  def initialize(val,next_node=nil)
    @value = val
    @next_node = next_node
  end

end

class MyStack
  def initialize
    @head = nil
  end

  def push(x)
    return if x == nil
    new_node = Node.new(x,nil)
    new_node.next_node = @head
    @head = new_node
  end

  def pop
    if @head == nil
      return nil
    else
      temp = @head.value
      @head = @head.next_node
      return temp
    end
  end
end

mystack = MyStack.new()
mystack.push(nil)
p mystack.pop()
p mystack.pop()


# Test Cases:
# 1. check if i push a value through push function then following with POP it should return same value
# 2. check if push function pushes multiple elements in sequence and it returns in reverse order after POP
# 3. Check if i push nil value then following with POP it should return nil
# 4. Check if POP function returns nil if i call pop function multiple times on empty stack

