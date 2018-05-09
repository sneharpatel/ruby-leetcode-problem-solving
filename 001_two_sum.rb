# problem:
## https://leetcode.com/problems/two-sum/description/
# Reading material:
# https://www.youtube.com/watch?v=Cj5fZJ-AXWQ
# https://www.youtube.com/watch?v=I58Kw-9tHgY
# Questions:
#


# by Brute force method (Time complexity is o(n2))

def sum_of_two_1(arr, t)

  for i in 0..arr.size-1
    for j in 0..arr.size-1
      if arr[i]+arr[j] == t
        return [i, j]
      end
    end
  end
  return []
end




# By One pass hash table method ( Time complexity is o(n) )

def sum_of_two(arr, t)

  hash = Hash.new

  for i in 0..arr.size-1
    if hash.has_key?(arr[i])
      partner_index = hash[arr[i]]
      return [i, partner_index]
    else
      diff = t - arr[i]
      hash[diff] = i
    end
  end
 return []
end



# arr = [2,7,11,15]
# t = 9

arr = [2,7,11,6,8,3,4]
t = 15

# p sum_of_two_1(arr, t)

p sum_of_two(arr, t)



