def telephone_words(digits)
  n = digits.length
  h = get_key_value
  ot_pt = ""

  if n == nil || n == ""
    return
  end

 print_words(digits,n,ot_pt,i=0,h)
end

def print_words(digits,n,ot_pt,i,h)

  if i == n
    p ot_pt
    return
  end

  get_chars = h[digits[i].to_i]
  get_chars.each_char do |ch|
    tmp = ot_pt + ch
    print_words(digits,n,tmp,i+1, h)
  end

end

def get_key_value
  h = []
  h[0] = "0"
  h[1] = "1"
  h[2] = "ABC"
  h[3] = "DEF"
  h[4] = "GHI"
  h[5] = "JKL"
  h[6] = "MNO"
  h[7] = "PRS"
  h[8] = "TUV"
  h[9]= "WXY"

  return h

end

telephone_words("23")