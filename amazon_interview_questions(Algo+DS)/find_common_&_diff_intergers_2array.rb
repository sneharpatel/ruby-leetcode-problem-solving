# Given two int arrays. Find out common numbers and different numbers.  Refactor
#
def find_common_diff_integers(arr1,arr2)

  if (arr1 == nil && arr2 == nil) || (arr1.length == 0 && arr2.length == 0)
    return 0
  end

  a1 = arr1.length
  a2 = arr2.length

  common_ele = []
  diff_ele = []

  h1 = Hash.new
  h2 = Hash.new

  (0..a1-1).each do |i|
    if !h1.has_key?(i)
      h1[i] = arr1[i]

    end
  end

  (0..a2-1).each do |i|
    if !h2.has_key?(i)
      h2[i] = arr2[i]
    end
  end

  (0..a1-1).each do |i|
    if arr1[i] == h2[i]
      common_ele.push(arr1[i])
    else
      diff_ele.push(arr1[i])
    end
  end

  (0..a2-1).each do |i|
    if arr2[i] != h1[i]
      diff_ele.push(arr2[i])
    end
  end

  #
  # p common_ele
  # p diff_ele

  return "Common elements: #{common_ele}, Different elements: #{diff_ele}"

end


arr1 = [1,2,3]
arr2 = [1,2,4,5]

a1 = []
a2 = []

a = []
b = [2,3,4]

p find_common_diff_integers(arr1,arr2)