def select_arr(arr)
  # select and return all odd numbers from the Array variable `arr`
  # odd_nums = []
  # arr.each do |i|
  #   if (i % 2) != 0
  #     odd_nums << i
  #   end
  # end
  # return odd_nums
  return arr.select {|a| (a % 2) !=0 }
end


def reject_arr(arr)
  # reject all elements which are divisible by 3
  return arr.reject {|a| (a % 3 == 0)}
end

def delete_arr(arr)
  # delete all negative elements
  return arr.delete_if {|a| a < 0}
end

def keep_arr(arr)
  # keep all non negative elements ( >= 0)
  return arr.keep_if {|a| a >= 0}
end



ar = [1,-2,3,-4,-5,6,7,8]
# p select_arr(ar)
p delete_arr(ar)
p keep_arr(ar)