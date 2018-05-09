# https://leetcode.com/problems/palindrome-permutation/description/
# Given a string, determine if a permutation of the string could form a palindrome.
#
#     For example,
#         "code" -> False, "aab" -> True, "carerac" -> True.

# palindrome: a sequence which read same from backward or forward: noon, madam

# reverse the string and compare reverse string with original string

def isPalindrome(s)
  reverse_string = ""
  s_length = s.size - 1
  s_length.downto(0).each do |l|
    reverse_string << s[l]
  end
  return reverse_string == s
end


 s1 = "carerac"
p isPalindrome(s1)




# palindrome permuation:

# check for even number of char and only one odd number of char in string. that string is palindrome permuation

# first count frequency of chars and store into hash table

# check whether frequency of counter is even or odd, if count is even return true else return false


def isPalindromePermuation(s)

  if s.length == 0
    return false
  end

  hash = Hash.new

  # count frequency of char into string

  s.each_char do |char|
    if hash[char]
      hash[char] = hash[char] + 1
    else
      hash[char] = 1
    end
  end

  # check number of odd char in hash, it should contain only 1 odd char into hash

  odds = 0
  hash.keys.map do |key|
    odds += 1 if hash[key] % 2 != 0
  end

  return odds <= 1

end

s2 = "mom"
p isPalindromePermuation(s2)





