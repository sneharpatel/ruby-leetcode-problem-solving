# Given a string (understood to be a sentence), reverse the order of the words.
# "Hello world" becomes "world Hello"
#
#

def reverse_order_of_the_words(s)

  s = s.split(" ")

  if s == nil
    return nil
  end

  if s.length == 1
    return s
  end
  rev_str_res = []

  (0..s.length-1).each do |w|
    rev_str_res.push(s.pop)
  end

  return rev_str_res.join(" ")

end

s = "Hello world"
s = ""
s = "w"

s = "Do or do not, there is no try."


p reverse_order_of_the_words(s)
# p reverse_order_of_the_words(a).join(" ")


