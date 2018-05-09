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