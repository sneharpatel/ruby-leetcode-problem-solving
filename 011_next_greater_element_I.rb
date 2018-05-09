# You are given two arrays (without duplicates) nums1 and nums2 where nums1’s elements are subset of nums2. Find all the next greater numbers for nums1's elements in the corresponding places of nums2.
#
# The Next Greater Number of a number x in nums1 is the first greater number to its right in nums2. If it does not exist, output -1 for this number.
#
# Example 1:
# Input: nums1 = [4,1,2], nums2 = [1,3,4,2].
# Output: [-1,3,-1]
# Explanation:
#     For number 4 in the first array, you cannot find the next greater number for it in the second array, so output -1.
#     For number 1 in the first array, the next greater number for it in the second array is 3.
#     For number 2 in the first array, there is no next greater number for it in the second array, so output -1.
# Example 2:
# Input: nums1 = [2,4], nums2 = [1,2,3,4].
# Output: [3,-1]
# Explanation:
#     For number 2 in the first array, the next greater number for it in the second array is 3.
#     For number 4 in the first array, there is no next greater number for it in the second array, so output -1.
# Note:
# All elements in nums1 and nums2 are unique.
# The length of both nums1 and nums2 would not exceed 1000.


def next_greater_element_I(num1, num2)



  if num1.size > 1000 || num2.size > 1000
     fail('Array length is exceed than 1000')
  end


  stack = []
  hash = Hash.new(0)
  result = []

  # for num2 check whether stack is empty or not, if empty it pushes num into stack and if not empty it will go to while loop and pop out stack and push into hash

  num2.each_with_index { |num, inx |
    while (!stack.empty?) && (stack.last < num)
      # stack.pop()
      hash[stack.pop()] = num
    end
    stack.push(num)
  }

  # for num1: check if there is a key for num1[i] it, will return value and if not then return -1

  num1.each_with_index { |n, i|
  if hash.include? n
    result.push hash[n]
  else
    result.push -1
  end
  }
  p stack  # remaining elements in stack after each operation
  p hash   # key value pair in hash for each operation
  return result

end


# num1 = [4,1,2]
# num2 = [1,3,4,2]

num1 = [9,2,2,6]
num2 = [9,6,4,1,2,3,7,5]

p next_greater_element_I(num1,num2)

