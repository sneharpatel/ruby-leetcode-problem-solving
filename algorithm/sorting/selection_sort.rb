# Selection sort starts with the first ele in the array and scans through the array to find ele with smallest key,
# which swaps with the first ele.
#
# time complexity is O(n2)
# space complexity is O(1)
#
# requires first (n-1) comparisons, then (n-2), (n-3) and so on.
# So efficiency will be n(n-1)/2 => O(n2) - in worst, avg,and best case
#
# https://www.youtube.com/watch?v=GUDLRan2DWM
#
# in place of logic of selecting the minimum in each pass and putting it as it's appropriate position is selection sort algorithm

def selection_sort(arr)

  n = arr.length
  if n == nil
    return nil
  end
  if n == 1
    return arr
  end

  # find the min value starting at the given index and then swap two ele in array
  #
  # finding the minimum element (considering ascending order) from unsorted part and putting it at the beginning.

  (0..n-1).each do |i|
    min = i
    (i+1..n-1).each do |j|
      if arr[j] < arr[min]
        min = j
      end
    end
    swap(arr,i,min)
  end

  return arr

end

def swap(arr,i,j)
  temp = arr[i]
  arr[i] = arr[j]
  arr[j] = temp
end



a = [2,7,4,1,5,3,8]
p selection_sort(a)
