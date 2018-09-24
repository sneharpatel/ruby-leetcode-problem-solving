def str_to_int_conv(s)

  result = 0
  is_neg = false
  i = 0

  if s[0] == '-'
    is_neg = true
    i = 1
  end

  (i..s.length-1).each do |i|
    result = result * 10
    result = result + (s[i].ord - "0".ord)
  end


  if is_neg
    result = -result
  end

  return result

end

p str_to_int_conv("3")
p str_to_int_conv("-3")