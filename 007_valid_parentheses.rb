# https://www.youtube.com/watch?v=QZOLb0xHB_Q


# Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
#
#     An input string is valid if:
#
#                                  Open brackets must be closed by the same type of brackets.
#     Open brackets must be closed in the correct order.
#     Note that an empty string is also considered valid.


# property: last unclosed, first closed
# Solution-1 : initialize stack as an array
#
# 1. scan each char from left to right
# 2. if opening symbol, push it into stack
# 3. if closing symbol and top of stack opening of same type , pop it from stack
# 4. should end with empty stack
#

def valid_parentheses(s)


  stack = []

  s.each_char do |char|

    if (char == '(' || char == '{' || char == '[')
      stack.push(char)
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


s1 = "[(])"

s2 = "[({})]"

s3 = ')]}'

p valid_parentheses(s2)
