#sum up all elements in matrix

def sum_of_ele_matrix(a)

  n = a.length
  sum = 0
  (0..n-1).each do |i|
    (0..n-1).each do |j|
      sum = sum + a[i][j]
     end
  end
  return sum
end



arr = [[1,2,3],[4,5,6],[7,8,9]]

p sum_of_ele_matrix(arr)