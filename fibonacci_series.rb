# Fibonacci Sequence
#
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
# The next number is found by adding the two numbers before it together:
#
# The 2 is found by adding the two numbers before it (1+1)
# The 21 is found by adding the two numbers before it (8+13)
# etc...
# Rule is xn = xn-1 + xn-2
#
#
# The Fibonacci Sequence is numbered from 0 onwards like this:
#
# n =	  0	1	2	3	4	5	6	7	8	9	10	11	12	13	14	...
# xn =	0	1	1	2	3	5	8	13	21	34	55	89	144	233	377

# only print output for i/p number n

def fibonacci_series(n)
  a = 0
  b = 1
  c = 0

  if n<=1
    return n
  end

  (2..n).each do |i|
    c = a+b
    a = b
    b = c
  end

  return c

end

p fibonacci_series(4)

# print whole series upto n

def fibonacci_series1(n)
  a = 0
  b = 1
  c = 0

  if n <= 1
    print n
  else
    print "#{a} #{b}"
    (2..n).each do |i|
      c = a+b
      a = b
      b = c
      print " #{c}"
    end
  end

end

fibonacci_series1(2)