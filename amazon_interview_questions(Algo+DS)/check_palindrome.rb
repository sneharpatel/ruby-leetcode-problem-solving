# Program to check for palindrome
# s = mom, :word should be remain same if we read from the end



def check_palindrome(s)

  if s == nil
    return false
  end

  result = ""

  (s.length-1).downto(0).each do |l|
    result << s[l]
  end
  p result

  return result == s

end

s = "mom"
s = "code"
p check_palindrome(s)

