# input string = aabbbccccaaa, maintain the insertion order and output should be a2b3c4a3
#
# https://www.youtube.com/watch?v=XMKMgzU1uiw
#
# String cheat sheet: https://www.shortcutfoo.com/app/dojos/ruby-strings/cheatsheet
#
def compress_string(s)

  out = ""
  sum = 1

  (0..s.length-1).each do |i|
    if s[i] == s[i+1]
      sum = sum + 1
    else
      out = out.to_s + s[i].to_s + sum.to_s
      sum = 1
    end
  end
  # out = out.to_s + s.chars[s.length-1].to_s + sum.to_s
  # return out.length < s.length ? out : s
  return out
end


s1 = "aabbbccccaaa"
s2 = "a"
s3 = "aaa"


p compress_string(s3)