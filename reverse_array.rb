def reverseArray(a)
  result = []

  (0..a.length-1).each do |i|
    result = result.push(a.pop)
    # p result
  end
   return result
  # print result.join(" ")

end


a = [1, 4, 3, 2]
p reverseArray(a)

# s = "test reverse string"
# a1 = s.split(" ")
# p a1

# s = "fizzbuzz"
# a1 = s.split('')
# p a1
# p a1.join(" ")


# p reverseArray(a1).join(" ")


