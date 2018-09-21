# A left rotation operation on an array of size  shifts each of the array's elements  unit to the left.
# For example, if  left rotations are performed on array , then the array would become .
#
# Given an array of  integers and a number, , perform  left rotations on the array.
# Then print the updated array as a single line of space-separated integers.
#
# Input Format
#
# The first line contains two space-separated integers denoting the respective values of
# (the number of integers) and  (the number of left rotations you must perform).
# The second line contains  space-separated integers describing the respective elements of the array's initial state.
#
# Output Format
#
# Print a single line of  space-separated integers denoting the final state of the array after performing  left rotations.
#
# Sample Input
#
# 5 4
# 1 2 3 4 5
# Sample Output
#
# 5 1 2 3 4
#


def leftRotation(arr, d)

  # for i in 0...d
  #   first = arr[0]
  #   for j in 1...arr.size
  #     arr[j - 1] = arr[j]
  #   end
  #   arr[-1] = first
  # end
  #
  # return arr
  # print arr.join(" ")

  #
  #
  # Modulo operation:  Given two numbers, a (the dividend) and n (the divisor),
  # a modulo n (abbreviated as a mod n) is the remainder from the division of a by n.
  # for e.g 4 % 5 = 4 as 5*0 = 0; 4-0 = 4 reminder

  # str = ''
  # length = arr.length
  # length.times do |i|
  #   new_index = (i + d) % length
  #   str += "#{arr[new_index]} "
  # end
  # puts str.strip
  #
  result = []
  length = arr.length
  (0..length-1).each do |i|
    new_index = (i + d) % length
    result.push(arr[new_index])
  end
  return result

end



arr = [1, 2, 3, 4, 5]

p  leftRotation(arr,4)









#https://www.youtube.com/watch?v=wKzFKViBTZg - left rotation
# https://www.youtube.com/watch?v=UfN8Uu3riks - right position
#
#
# https://www.hackerrank.com/challenges/ctci-array-left-rotation/forum
# # Initial assignments:
#   # array = [1, 2, 3, 4]
#   # length_of_array = array.length = 4
#   # no_of_left_rotation = k = 2
#   # new_arr = Arra.new(length_of_array)
# 	# new_arr: [nil, nil, nil, nil]
#
# # NOTE:
#   # length_of_array.times do |i|
#     # is equivalent to
#   # for(i = 0; i < length_of_array; i++)
#
# # Algorithm to calculate new index and update new array for each index (i):
#   # new_index = (i + no_of_left_rotation) % length_of_array
#   # new_arr[i] = array[new_index]
#
# # LOOP1:
#   # i = 0
#   # new_index = (0 + 2) % 4 = 2
#   # new_arr[i = 0] = array[new_index = 2] = 3
#   # new_arr: [3, nil, nil, nil]
#
# # LOOP2:
#   # i = 1
#   # new_index = (1 + 2) % 4 = 3
#   # new_arr[i = 1] = array[new_index = 3] = 4
#   # new_arr: [3, 4, nil, nil]
#

