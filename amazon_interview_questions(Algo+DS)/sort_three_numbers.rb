# Sort three numbers
#
#
def sort_three_numbers(a,b,c)

  # puts "Enter three numbers separated by space:"
  #
  # a = gets.chomp.to_i
  # b = gets.chomp.to_i
  # c = gets.chomp.to_i


  if a > b
   temp = a
    a = b
    b = temp
  end
  if b > c
    temp = b
    b = c
    c = temp
  end

  if a > b
   temp = a
    a = b
    b = temp
  end

  print "#{a}, #{b} ,#{c}"

end



a = 5
b = 5
c = 5

sort_three_numbers(a,b,c)