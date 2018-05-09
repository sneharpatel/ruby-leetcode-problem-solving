# Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.
#
#     Examples:
#
#     s = "leetcode"
# return 0.
#
#     s = "loveleetcode",
#     return 2.
#     Note: You may assume the string contain only lowercase letters.

def first_unique_char(s)

  hash = Hash.new(0)

  s.each_char.with_index(0) {|char, i|
    if hash[char] != nil
      hash[char] = hash[char] + 1
    else
      hash[char] = 1
    end

    p hash
  }

  s.each_char.with_index(0) {|char, i|
  if hash[char] == 1
    return i
  end
  }
  return -1

end




s1 = "leetcode"
s2 = "loveleetcode"
s3 = "ssee"

p first_unique_char(s3)