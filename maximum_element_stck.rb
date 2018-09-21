# You have an empty sequence, and you will be given  queries. Each query is one of these three types:
#
#     1 x  -Push the element x into the stack.
#     2    -Delete the element present at the top of the stack.
#     3    -Print the maximum element in the stack.
#     Input Format
#
# The first line of input contains an integer, . The next  lines each contain an above mentioned query.
# (It is guaranteed that each query is valid.)
#
#
# For each type  query, print the maximum element in the stack on a new line.
#
# Sample Input
#
# 10
# 1 97
# 2
# 1 20
# 2
# 1 26
# 1 20
# 2
# 3
# 1 91
# 3
# Sample Output
#
# 26
# 91
#

no_of_query = gets.chomp.to_i  # 10 queries
p no_of_query
max = -1.0/0.0
stack = []

(1..no_of_query).each do |tq|   #for each query
  tq = gets.chomp        # get type of query 1,2,3
  # p tq
  a = tq.split(" ")      # split type of query and store into an array
  # p a

  if a[0] == "1"
    max = a[1].to_i > max ? a[1].to_i : max
    # p max
    stack.push(max)
  elsif a[0] == "2"
    stack.pop()
    max =  (stack.empty?) ? -1.0/0.0 : stack.last()
  elsif a[0] == "3"
    puts max
  end

end

