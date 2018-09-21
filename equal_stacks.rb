# You have three stacks of cylinders where each cylinder has the same diameter, but they may vary in height.
# You can change the height of a stack by removing and discarding its topmost cylinder any number of times.
#
#     Find the maximum possible height of the stacks such that all of the stacks are exactly the same height.
# This means you must remove zero or more cylinders from the top of zero or more of the three stacks until
# they're all the same height, then print the height. The removals must be performed in such a way as to maximize the height.
#
# Note: An empty stack is still a stack.
#
# Input Format
#
# The first line contains three space-separated integers, , , and , describing the respective number of cylinders in stacks , , and .
# The subsequent lines describe the respective heights of each cylinder in a stack from top to bottom:
#
# The second line contains  space-separated integers describing the cylinder heights in stack . The first element is the top of the stack.
# The third line contains  space-separated integers describing the cylinder heights in stack . The first element is the top of the stack.
# The fourth line contains  space-separated integers describing the cylinder heights in stack . The first element is the top of the stack.
# Constraints
#
# Output Format
#
# Print a single integer denoting the maximum height at which all stacks will be of equal height.
#
# Sample Input
#
# 5 3 4
# 3 2 1 1 1
# 4 3 2
# 1 1 4 1
# Sample Output
#
# 5
#
#
def equal_stacks(h1,h2,h3)

  sum1 = 0
  sum2 = 0
  sum3 = 0

   n1 = h1.length-1
   n2 = h2.length-1
   n3 = h3.length-1

  (0..n1).each do |i|
    sum1 = sum1 + h1[i]
  end
  (0..n2).each do |i|
    sum2 = sum2 + h2[i]
  end
  (0..n3).each do |i|
    sum3 = sum3 + h3[i]
  end

  top1 = 0
  top2 = 0
  top3 = 0
  while true
    # If sum of all three stack are equal
    if (sum1 == sum2 && sum2 == sum3)
      return sum1
    end

    # Finding the stack with maximum sum and
    # removing its top element.
    if (sum1 >= sum2) && (sum1 >= sum3)
      sum1 = sum1 - h1[top1]
      top1 = top1 + 1
    elsif (sum2 >= sum1) && (sum2 >= sum3)
      sum2 = sum2 - h2[top2]
      top2 = top2 + 1
    elsif (sum3 >= sum1) && (sum3 >= sum2)
      sum3 = sum3 - h3[top3]
      top3 = top3 + 1
    end
  end

  return sum1

end


h1 = [3,2,1,1,1]
h2 = [4,3,2]
h3 = [1,1,4,1]

# h1 = [1]
# h2 = [1]
# h3 = [1]
p equal_stacks(h1,h2,h3)