# write a program to remove duplicates numbers from the list

def remove_duplicate_from_list(arr)

  new_array = []
  h = Hash.new

  n = arr.length

  (0..n-1).each do |i|
    if h[arr[i]]
      h[arr[i]] = h[arr[i]] + 1
    else
      h[arr[i]] = 1
    end
  end

  h.each do |key,val|
    new_array.push(key)
  end

  new_array

end

arr0 = [1,2,3,4,5,5,5,6,3,2]
arr1 = [4, 3, 2, 4, 9, 2]
arr2 = [2]
arr3 = [7, 3, 21, 18, 34, 18, 3, 21]
arr4 = [1,2,2,3,4,4,5,5]


p remove_duplicate_from_list(arr3)




