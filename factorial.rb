# def factorial(n)
#   result = 1  # product
#   (0..n-1).each do |i|
#     result = result * (i+1)
#   end
#   yield(result)
# end
# n = 5
# factorial(n) do |result|
#   puts result
# end

#OR

#  n! = n*(n-1)*(n-2)*(n-3)...2*1

def factorial1(n)
  result = 1
  (2..n).each do |i|
    result = result * i
  end
  return result

end

p factorial1(1)


# A prime number is a whole number greater than 1 whose only factors are 1 and itself
def prime?(n)
  (2..n-1).each do |i|
    if (n % i) == 0
      return false
    end
  end
  return true
end

p prime?(173)  # true



def square_of_sum (my_array, proc_square, proc_sum)
  sum = proc_sum.call(my_array)
  proc_square.call(sum)
end


proc_square_number = proc {|n| n ** 2}
proc_sum_array     = proc { |my_array|
                            sum = 0
                            my_array.each do |i|
                              sum = sum + i
                            end
                            sum}
my_array = [1,2,3]

puts square_of_sum(my_array, proc_square_number, proc_sum_array)


