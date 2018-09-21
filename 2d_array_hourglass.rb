# HACKER-RANK:
# Task
# Calculate the hourglass sum for every hourglass in , then print the maximum hourglass sum.
#
#     Note: If you have already solved the Java domain's Java 2D Array challenge, you may wish to skip this challenge.
#
# Input Format
#
# There are  lines of input, where each line contains  space-separated integers describing 2D Array ; every value in  will be in the inclusive range of  to .
#
# Constraints
#
# Output Format
#
# Print the largest (maximum) hourglass sum found in .
#
# Sample Input
#
# 1 1 1 0 0 0
# 0 1 0 0 0 0
# 1 1 1 0 0 0
# 0 0 2 4 4 0
# 0 0 0 2 0 0
# 0 0 1 2 4 0
# Sample Output
#
# 19
#
#
#
# 1 1 1   1 1 0   1 0 0  0 0 0
#   1       0       0      0
# 1 1 1   1 1 0   1 0 0  0 0 0
#
# and so on
#
# so for e.g 1st hourglass:
#
# start (i=0,j=0)
# (0,0) + (0,1) + (0,2) +
#         (1,1) +
# (2,0) + (2,1) + (2,2)
#
# (i,j)+ (i,j+1) + (i,j+2) +
#       (i+1, j+1)+
# (i+2, j) + (i+2,j+1) + (i+2,j+2)
#
# for all hourglasses this sum will be same and start from 0..3 except 4,5 row and col for 6x6 2d matrix





def array2D(arr)
  # arr = Array.new(6)
  #
  # ## initilizing as negative integer | in order to work on negative array values
  # for arr_i in (0..6-1)
  #   arr_t = gets.strip
  #   arr[arr_i] = arr_t.split(' ').map(&:to_i)
  # end

  max = -1.0/0.0
  (0..3).each do |i|
    (0..3).each do |j|
       if (j<4) && (i<4)
        sum = arr[i][j].to_i + arr[i][j+1].to_i + arr[i][j+2].to_i + arr[i+1][j+1].to_i + arr[i+2][j].to_i + arr[i+2][j+1].to_i + arr[i+2][j+2].to_i
       end

      if max < sum
        max = sum
      end
    end
  end
  return max
end


# fptr = File.open(ENV['OUTPUT_PATH'], 'w')
#
# arr = Array.new(6)
#
# 6.times do |i|
#   arr[i] = gets.rstrip.split(' ').map(&:to_i)
# end
#
# result = array2D arr
#
# fptr.write result
# fptr.write "\n"
#
# fptr.close()
#

arr = [ [1,1,1,0,0,0],
        [0,1,0,0,0,0],
        [1,1,1,0,0,0],
        [0,0,2,4,4,0],
        [0,0,0,2,0,0],
        [0,0,1,2,4,0] ]


arr1 = [[-1, -1, 0, -9, -2, -2],
       [-2, -1, -6, -8, -2, -5],
       [-1, -1, -1, -2, -3, -4],
       [-1, -9, -2, -4, -4, -5],
       [-7, -3, -3, -2, -9, -9],
       [-1, -3, -1, -2]]


arr2 = [[0, -4, -6, 0, -7, -6],
        [-1, -2, -6, -8, -3, -1],
        [-8, -4, -2, -8, -8, -6],
        [-3, -1, -2, -5, -7, -4],
        [-3, -5, -3, -6, -6, -6],
        [-3, -6, 0, -8, -6]]


arr3 = [[1, 1, 1, 0, 0, 0],
        [0, 1, 0, 0, 0, 0],
        [1, 1, 1, 0, 0, 0],
        [0, 9, 2, -4, -4, 0],
        [0, 0, 0, -2, 0, 0],
        [0, 0, -1, -2, -4, 0]]

p array2D(arr)