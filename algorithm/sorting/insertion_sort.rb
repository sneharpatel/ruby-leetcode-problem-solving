#Insertion sort builds a sorted array one ele at a time by comparing each new ele to the already sorted ele
# and inserting the new ele into the correct location - sort a hand of playing cards
#
# stable and in-place algo
#
# best case running time complexity is O(n), when list is already sorted
# insertion sort is efficient way to add a few new ele.s to a pre-ordered list
#
#
# avg and worst case efficiency is O(n2)
#
# adv:
# 1. suitable for sorting small set of data sets
# 2. building blocks for other more complicated sorting algo
#
# dis adv:
# 1. not suitable for large amounts of randomly ordered data
#
# mycodeschool and https://www.hackerearth.com/practice/algorithms/sorting/insertion-sort/tutorial/
def insertion_sort(arr)

  n = arr.length

  if n == nil
    return nil
  end
  if n == 1
    return arr
  end

  (1..n-1).each do |i|
    temp = arr[i]
    j = i
    while (j > 0 && arr[j-1] > temp)
      arr[j] = arr[j-1]
      j = j-1
    end
    arr[j] = temp
  end

  return arr
end


a = [7,2,4,1,5,3]

a0 = [7,2,4,3,7,5]
p insertion_sort(a)