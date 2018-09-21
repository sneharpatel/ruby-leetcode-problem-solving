# Given five positive integers, find the minimum and maximum values
# that can be calculated by summing exactly four of the five integers.
# Then print the respective minimum and maximum values as a single line of two space-separated long integers.
#
# Sample Input
#
# 1 2 3 4 5
# Sample Output
#
# 10 14
#
#
def minMaxSum(arr)
  sum = 0
  min = 1.0/0.0
  max = -1.0/0.0
  x = 0

  length = arr.length
  (0..length-1).each do |i|
    sum = sum + arr[i]
  end

  (0..length-1).each do |i|
    x = sum - arr[i]

    if x > max
      max = x
    end
    if x < min
      min = x
    end
  end
  puts "#{max} #{min}"
end


arr = [1,2,3,4,5]

p minMaxSum(arr)