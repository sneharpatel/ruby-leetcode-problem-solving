def right_rotation(arr,d)

  n = arr.size
  result = []

  if (d < 0) || (d > 100) || (n == 0)
    return result
  end

  if n == 1
    return result
  end

  (0..n-1).each do |i|
    result[(i+d) % n] = arr[i]
  end

  return result
  # print result.join(' ')

end


arr = [3,8,9,7,6]

arr = [1,2,3,4,5]

p right_rotation(arr,4)  # [9,7,6,3,8]



# https://matoski.com/article/codility-cyclic-rotation/
# https://www.youtube.com/watch?v=UfN8Uu3riks - right position