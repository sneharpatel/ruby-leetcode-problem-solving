# problem: https://leetcode.com/problems/valid-anagram/description/

# Given two strings s and t, write a function to determine if t is an anagram of s.

#     For example,
#         s = "anagram", t = "nagaram", return true.
#     s = "rat", t = "car", return false.

#note: You may assume the string contains only lowercase alphabets

# Source:  https://www.youtube.com/watch?v=8vuvYYEFwEM



def valid_anagram(s,t)

  if s.length != t.length
    return false
  end

  #create hashes
  hash_table1 = Hash.new(0)
  hash_table2 = Hash.new(0)

  #check frequency of letters in string

  s.each_char do |ch|
    if hash_table1[ch] == nil?
      hash_table1[ch] = hash_table1[ch] + 1
    else
      hash_table1[ch] =  1
    end

    p hash_table1

  end

  t.each_char do |ch|
    if hash_table2[ch] == nil?
      hash_table2[ch] = hash_table2[ch] + 1
    else
      hash_table2[ch] = 1
    end
    p hash_table2
  end

  #compare both hash table

  return hash_table1 == hash_table2

end

s1 = "anagram"
t1 = "nagaram"

p valid_anagram(s1,t1)


