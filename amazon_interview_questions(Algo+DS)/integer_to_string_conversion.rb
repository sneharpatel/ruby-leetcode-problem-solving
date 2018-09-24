def int_to_string_conv(n)
  is_neg = false
  temp = ""
  result = ""

  if n == 0
    return "0"
  end

  if n < 0
    n = -n
    is_neg = true
  end

  while (n != 0)
    temp << (n%10).ord + "0".ord
    n = n/10
  end

  if is_neg
    result << '-'
  end

  (temp.length-1).downto(0).each do |i|
    result << temp[i].to_s
  end

  return result
end


p int_to_string_conv(-732)