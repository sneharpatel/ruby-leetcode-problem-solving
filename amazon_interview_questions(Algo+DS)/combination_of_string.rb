def combinations_of_string(str,i=0)
  n = str.length-1
  op_str = ""
  combine(str,n,op_str,0)

end

def combine(str,n,op_str,i=0)

  if str == nil
    return
  end

  (i..n).each do |i|
    op_str << str[i]
    p op_str
    if i < n
      combine(str,n,op_str,i+1)
    end
    op_str.chop!
  end
end

combinations_of_string("abc")