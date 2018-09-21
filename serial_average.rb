# In this challenge, your task is to code a serial_average method which is described below:
#
#     It takes a fixed width string in format: SSS-XX.XX-YY.YY.
#     SSS is a three digit serial number, XX.XX and YY.YY are two digit numbers including up to two decimal digits.
#     It returns a string containing the answer in format SSS-ZZ.ZZ where SSS is the serial number of that input string,
#     and ZZ.ZZ is the average of XX.XX and YY.YY.
#     All numbers are rounded off to two decimal places.
#         For example:
#
# > serial_average('002-10.00-20.00')
# "002-15.00"
#
#
def serial_average(s)
  str = s.split("-")
  p str
  v = (str[1].to_f + str[2].to_f) / 2
  return "#{str[0]}-#{v.round(2)}"
end

s = '002-10.00-20.00'
s1 = "001-12.43-56.78"
s2 = "001-12.43-56.78"
p serial_average(s2)

# class X
#   attr_accessor :p
#
#   def initialize(t)
#     @p = t
#   end
#   def method_missing(name)
#     return @p
#   end
# end
#
# puts X.new("a").method_missing("asdf")
#
# x = 1
#
# puts x == '1'


def process_text(s)

  str = "#{(s[0].strip)}" + ' ' "#{(s[1].strip)}"
  # p s[0]
  # p s[1]
  #
  p str

end

s =["Hi, \n", " Are you having fun?    "]

p process_text(s)


def mask_article(s,a)
  # p s
  # p a[0]
  # str = s.gsub(/([a[0]])/, "<strike>"+a[0]+"</strike>")
  # return str
  #
  str = s.gsub!(/#{a[0]}/, "<strike>"+a[0]+"</strike>")
  return str
end

s = "Hello World! This is crap!"
a =  ["crap"]
# p mask_article(s,a)



def strike(str)
  "<strike>"+str+"</strike>"
end
def mask_article1(str, arr)
  str.gsub!(/#{arr[0]}/, strike(arr[0]))
  str
end

s = "Hello World! This is crap!"
a =  ["crap"]
p mask_article1(s,a)

# "hello".gsub(/([aeiou])/, '')
# "hll"
# "Hello World! This is <strike>crap</strike>!"