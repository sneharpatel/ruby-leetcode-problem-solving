# You're given strings J representing the types of stones that are jewels,
# and S representing the stones you have.  Each character in S is a type of stone you have.
# You want to know how many of the stones you have are also jewels.

# The letters in J are guaranteed distinct, and all characters in J and S are letters.
# Letters are case sensitive, so "a" is considered a different type of stone from "A"


# Examples: 1
# Input: J = "aA", S = "aAAbbbb"
# Output: 3

# Input: J = "z", S = "ZZ"
# Output: 0


# Note:

#     S and J will consist of letters and have length at most 50.
#         The characters in J are distinct.


def jewels_and_stones(j,s)

  if (s == nil || s.length < 1 || j == nil || j.length < 1)
    return 0
  end

  hash = Hash.new

 j.each_char do |char|
   hash[char] = 1
 end

  count = 0
  s.each_char do |char|
    if (hash[s[char]] == 1)
      count = count + 1
    end
  end
  return count

end


# def num_jewels_in_stones(j, s)
#   s.chars.count { |c| j.include?(c) }
# end



j1 = "aA"
s1 = "aAAZZ"

# p num_jewels_in_stones(j1,s1)

p jewels_and_stones(j1,s1)