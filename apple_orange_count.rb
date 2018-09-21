# Complete the function countApplesAndOranges,
#
#                       where,
#
#                       Starting point of Sam's house location.
#  Ending location of Sam's house location.
#     Location of the Apple tree.
#         Location of the Orange tree.
#             Number of apples that fell from the tree.
#                 Distance at which each apple falls from the tree.
#                     Number of oranges that fell from the tree.
#                         Distance at which each orange falls from the tree.
#
#                  Given the value of  for  apples and  oranges, can you determine how many apples and oranges
#                 will fall on Sam's house (i.e., in the inclusive range )? Print the number of apples that fall
#               on Sam's house as your first line of output, then print the number of oranges that fall on
#               Sam's house as your second line of output.
#
# Input Format
#
# The first line contains two space-separated integers denoting the respective values of s and t .
# The second line contains two space-separated integers denoting the respective values of a and  b.
# The third line contains two space-separated integers denoting the respective values of m and n.
# The fourth line contains m  space-separated integers denoting the respective distances that each apple falls from point a.
# The fifth line contains n space-separated integers denoting the respective distances that each orange falls from point b .
#
# Constraints
#
# Output Format
#
# Print two integers on two different lines:
#
# The first integer: the number of apples that fall on Sam's house.
#                                 The second integer: the number of oranges that fall on Sam's house.
# Sample Input 0
#
# 7 11
# 5 15
# 3 2
# -2 2 1
# 5 -6
# Sample Output 0
#
# 1
# 1


def countApplesAndOranges(s, t, a, b, apples, oranges)

  applesCount = 0
  orangesCount = 0
  applength = apples.length
  orangelength = oranges.length

  (0..applength-1).each do |i|
    if (a+apples[i] >= s) && (a+apples[i] <= t)
      applesCount = applesCount + 1
    end
  end

  (0..orangelength-1).each do |i|
    if ( b+oranges[i] >= s) && ( b+oranges[i] <= t)
      orangesCount = orangesCount + 1
    end
  end

  puts applesCount
  puts orangesCount

end

app = [-2, 2, 1]
ora = [5, -6]

p countApplesAndOranges(7,11,5,15, app, ora)