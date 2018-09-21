# Give me Fibonnacci Program to write
#

def fibonaccii(n)

  a = 0
  b = 1

  if n == 0
    return a
  end

  (2..n).each do |i|
    c = a+b
    a = b
    b = c
  end

  return b
end


p fibonaccii(3)