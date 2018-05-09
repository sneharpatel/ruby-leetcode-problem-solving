# https://www.youtube.com/watch?v=QZOLb0xHB_Q


# Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
#
#     An input string is valid if:
#
#                                  Open brackets must be closed by the same type of brackets.
#     Open brackets must be closed in the correct order.
#     Note that an empty string is also considered valid.


# Solution-1 : initalize stack as an array

def valid_parentheses(s)


  stack = []

  s.each_char do |char|

    if (char == '(' || char == '{' || char == '[')
      stack << char
    elsif (char == ')' && !stack.empty? && stack.last == '(')
      stack.pop
    elsif (char == ']' && !stack.empty? && stack.last == '[')
      stack.pop
    elsif (char == '}' && !stack.empty? && stack.last == '{')
      stack.pop
    else
      return false
    end

  end

  return stack.empty?

end



# solution:2 by initalizing stack object from stack class
require_relative 'stack'

def valid_parentheses1(s)

  stack = Stack.new

  s.each_char do |char|

    if (char == '(' || char == '{' || char == '[')
      stack.push(char)
    elsif (char == ')' && !stack.empty? && stack.peek == '(')
      stack.pop
    elsif (char == ']' && !stack.empty? && stack.peek == '[')
      stack.pop
    elsif (char == '}' && !stack.empty? && stack.peek == '{')
      stack.pop
   else
     return false
    end
  end

 return stack.empty?

end


s1 = "[(])"

s2 = "[({})]"

s3 = ')]}'

p valid_parentheses(s3)
p valid_parentheses1(s3)