# Given a stream of integers and a window size, calculate the moving average of all integers in the sliding window.
#
#     For example,
#          m = new MovingAverage.new(3);
# m.next(1) = 1
# m.next(10) = (1 + 10) / 2
# m.next(3) = (1 + 10 + 3) / 3
# m.next(5) = (10 + 3 + 5) / 3
# 1, 10, 3, 5, 6
# 10, 3, 6 = 19

class MovingAverage
  def initialize(size)
    @queue = []
    @size = size
    @sum = 0.0

  end

  def next(value)

    if @queue.size == @size
      @sum = @sum - @queue.shift()
    end

    @sum = @sum + value
    @queue.push(value)

    average = @sum / @queue.size

    return average
  end

end



m = MovingAverage.new(3)
av = m.next(1)
p av, av == 1
av = m.next(11)
p av, av == 6
av = m.next(3)
p av, av == 5
av = m.next(7)
p av, av == 7