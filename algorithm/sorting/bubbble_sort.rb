def sort_numbers(arr)
  n = arr.length-1
  (0..n).each do |i|
    (i+1..n).each do |j|
      if arr[i] > arr[j] # i <= j
        swap(arr, i, j)
      end
      p "#{i},#{j}", arr
    end
  end
  arr
end

def swap(arr, i, j)
  temp = arr[j]
  arr[j] = arr[i]
  arr[i] = temp
end
arr = [16,5,8,9,7,6,1]
p arr
p sort_numbers(arr)