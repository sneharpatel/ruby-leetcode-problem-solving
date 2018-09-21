# Create an algorithm to find the first non repetitive character in words like 'television' and 'arizona'
#
def first_non_repetitive_char(s)

  if s == nil
    return nil
  end

  hash = Hash.new(0)

  s.each_char do |char|
    if hash[char]
      hash[char] = hash[char] + 1
    else
      hash[char] = 1
    end
    p hash
  end

  s.each_char do |char|
    if hash[char] == 1
      return char
    end
  end

  return "no uniq char in string"

end


s = "television"
# s = "arizona"
# s = "ss"
# s = ""
s = "test"
s = "total"
s = "teeter"

p first_non_repetitive_char(s)