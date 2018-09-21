# Reverse a string
#
def reverse_string(s)

  reverse_str = ""

  str_length = s.length-1

  str_length.downto(0).each do |l|
    reverse_str << s[l]
  end

  return reverse_str
end


s = "code"

p reverse_string(s)