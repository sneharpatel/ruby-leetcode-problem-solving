# Input Format
#
# The first line contains an integer denoting , the number of birds sighted and reported in the array .
#     The second line describes  as  space-separated integers representing the type numbers of each bird sighted.
#
#     Constraints
#
# It is guaranteed that each type is , , , , or .
#     Output Format
#
# Print the type number of the most common bird; if two or more types of birds are equally common,
# choose the type with the smallest ID number.
#
# Sample Input 0
#
# 6
# 1 4 4 4 5 3
# Sample Output 0
#
# 4
#
# Explanation 0
#
# The different types of birds occur in the following frequencies:
#
# Type :  bird
# Type :  birds
# Type :  bird
# Type :  birds
# Type :  bird
# The type number that occurs at the highest frequency is type , so we print  as our answer.




    def migrating_birds(ar)

  nums = []   # empty array to store nums of frequency of type
  max = 0
  id = 0
  ar.each do |i|
    if nums[i] == nil
      nums[i] = 1
    else
      nums[i] += 1
    end
    if (nums[i] >= max)
      max = nums[i]
      id = i
    end
  end
  return id
end

ar = [1,4,4,4,5,3]

p migrating_birds(ar)