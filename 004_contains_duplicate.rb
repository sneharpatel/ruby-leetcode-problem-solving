# https://leetcode.com/problems/contains-duplicate/description/
# Given an array of integers, find if the array contains any duplicates.
# Your function should return true if any value appears at least twice in the array,
# and it should return false if every element is distinct.


def contain_duplicates(arr)

  if arr == nil?
    return false
  end


  hash = Hash.new(0) # counter hash

  arr.each do |i|

    if hash[i]
      hash[i] = hash[i] + 1
    else
      hash[i] = 1
    end
      if hash[i] > 1
        return true
      end
  end

  return false
end

array = [1, 2, 3, 4, 7, 4, 2]

array = [1,4,3]

p contain_duplicates(array)


