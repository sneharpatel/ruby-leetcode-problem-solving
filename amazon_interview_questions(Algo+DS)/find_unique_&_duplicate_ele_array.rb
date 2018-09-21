# find unique and duplicate ele from a single array: Refactor
#
# # Given an array of integers, how would you move the duplicate integers into a different array?
# # What is the efficiency of your algorithm?
#
# https://www.youtube.com/watch?v=84R-enRx_Zc

def find_unique_and_duplicate_ele(arr)

  n = arr.length
  h = Hash.new
  unique_ele = []
  duplicate_ele = []


  if arr.length == 0
    return 0
  end

  if arr.length == 1
    return arr
  end

  # (0..n-1).each do |i|
  #   cnt = 1
  #   (i+1..n-1).each do |j|
  #     if arr[i] == arr[j]
  #       cnt = cnt + 1
  #       duplicate_array[j] = 0
  #     end
  #   end
  #   if duplicate_array[i] != 0
  #     duplicate_array[i] = cnt
  #   end
  # end
  #
  # print "Unique numbers:"
  # (0..n-1).each do |i|
  #   if duplicate_array[i] == 1
  #     print"#{arr[i]} "
  #   end
  # end
  #
  # print "\n"
  # print "Duplicates numbers:"
  # (0..n-1).each do |i|
  #   if duplicate_array[i] > 1
  #     print "#{arr[i]} "
  #   end
  # end
  #

  (0..n-1).each do |i|
    if h[arr[i]]
      h[arr[i]] = h[arr[i]] + 1
    else
      h[arr[i]] = 1
    end
  end

  p h
  # (0..n-1).each do |i|
  #   if h[arr[i]] > 1
  #     duplicate_ele.push(arr[i])
  #   else
  #     unique_ele.push(arr[i])
  #   end
  #
  h.each do |key,val|

    if h[key] > 1
      duplicate_ele.push(key)
    else
      unique_ele.push(key)
    end

  end

  return "unique elements: #{unique_ele}, Duplicate elements: #{duplicate_ele}"
end




ar = [2,3,4,2,3,5,6]

p find_unique_and_duplicate_ele(ar)