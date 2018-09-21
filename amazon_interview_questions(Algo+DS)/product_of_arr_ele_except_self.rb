# Product of all n elements expect the index value for each index. ar = [2,3,4]
#
#
# https://leetcode.com/problems/product-of-array-except-self/discuss/135882/A-Java-solution-with-an-explanation
#
#https://leetcode.com/problems/product-of-array-except-self/discuss/152072/Ruby-solution-in-O(n)-time-and-O(1)-space
#
def product_of_arr(nums)
  output = []

  # Calculate product of numbers to the left of the current element
  left_product = 1
  # 0.upto(nums.size - 1) do |i|
  (0..nums.size-1).each do |i|
    output[i] = left_product
    left_product *= nums[i]
  end

  # Repeat the same, but in the opposite direction
  right_product = 1
  (nums.size - 1).downto(0) do |i|
    output[i] *= right_product
    right_product *= nums[i]
  end

  return output

end

a = [2,3,4]

p product_of_arr(a)