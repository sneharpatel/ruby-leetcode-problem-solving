# problem:
## https://leetcode.com/problems/two-sum/description/
# Reading material:
# https://www.youtube.com/watch?v=Cj5fZJ-AXWQ
# https://www.youtube.com/watch?v=I58Kw-9tHgY
# Questions:
#
#
# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
#
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
#
# Example:
#
# Given nums = [2, 7, 11, 15], target = 9,
#
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].


# by Brute force method (Time complexity is o(n2))

def sum_of_two_1(arr, t)

  for i in 0..arr.size-1
    for j in 0..arr.size-1
      if arr[i]+arr[j] == t
        return [i, j]
      end
    end
  end
  # return []
end




# By One pass hash table method ( Time complexity is o(n) )

def sum_of_two(arr, t)

  hash = Hash.new

  # for i in 0..arr.size-1
  #   if hash.has_key?(arr[i])
  #     partner_index = hash[arr[i]]
  #     return [partner_index, i]
  #   else
  #     diff = t - arr[i]
  #     hash[diff] = i
  #   end
  # end
 # return []


  for i in 0..arr.size-1
    if hash[arr[i]]
      partner_index = hash[arr[i]]
      return [partner_index, i]
    else
      diff = t - arr[i]
      hash[diff] = i
    end
  end
end



arr = [2,7,11,15]
t = 9

# arr = [2,7,11,6,8,3,4]
# t = 15

# arr = [9,2,4,15,6]
# t = 6

# p sum_of_two_1(arr, t)

p sum_of_two(arr, t)



