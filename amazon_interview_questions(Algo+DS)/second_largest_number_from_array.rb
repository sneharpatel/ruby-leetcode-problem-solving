# From a given list of array (Not sorted) find the second largest value
#

def second_largest_number(arr)

  first_largest = -1.0/0.0
  second_largest = -1.0/0.0

  n = arr.length

  if n < 2
    return "invalid input"
  end

  (0..n-1).each do |i|
    if (arr[i] > first_largest)
      second_largest = first_largest
      first_largest = arr[i]
    elsif (arr[i] > second_largest) && (arr[i] != first_largest)
      second_largest = arr[i]
    end
  end

  if second_largest == -1.0/0.0
    return "no second largest element"
  else
    return second_largest
  end


end


arr1 = [12, 35, 1, 10, 34, 1]
arr = [10, 5, 10]
arr = [10, 10, 10]
arr =[10]
p second_largest_number(arr1)