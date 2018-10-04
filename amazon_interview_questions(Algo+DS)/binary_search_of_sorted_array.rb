def binary_search(arr,x)

  start = 0
  end_pt = arr.length-1

  if arr[start] > arr[end_pt]
    return "array is not sorted"
  end

  while (start <= end_pt)
    mid = (start + end_pt) / 2
    if arr[mid] == x
      return mid
    elsif arr[mid] < x
      start = mid + 1
    else
      end_pt = mid - 1
    end
  end
  return "element is not in array"
end


arr = [10,12,13,14,17,18,43,56]
# arr = []
# arr = [101,34,45,290]

p binary_search(arr,56)
