
#
# or
# write a program to remove duplicates numbers from the list and display the duplicates ?
#

def move_duplicates(a)

  n = a.length

  h = Hash.new

  if a.length < 1
    return nil
  end

  if a.length < 2
    return a
  end

  dup_arr = []

  (0..n-1).each do |i|
    if h[a[i]]
      h[a[i]] = h[a[i]] + 1
    else
      h[a[i]] = 1
    end
  end

  h.each do |key,val|

    if h[key] > 1
      dup_arr.push(key)
    end
  end

  return dup_arr


end

a = [1,2,4,7,2,1,4]
# p move_duplicate_ele_of_array(a)
#
a1 = [1,2,3,1,3,6,6]

a2 = [1,2]


p move_duplicates(a1)