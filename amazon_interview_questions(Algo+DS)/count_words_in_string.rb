# Count no. of words in a string
#

def count_words(s)

  if s == nil || s.length == 0
    return 0
  end
  space_seen = true
  count = 0
  s.each_char do |i|
    if isWordSeperator(i)
      if !space_seen
        space_seen =  true
        count = count + 1
      else
        #do nothing
      end
    else
      space_seen = false
    end
  end

  return count
end

def isWordSeperator(ch)
  return ch == " " || ch == "," || ch == "."
end


s0 = "asdf asdf a sadf to.   asdf asdf count.    "

s = "one"

s1 = "One two         three\n    four\tfive.  "
s = "one  "
s = "YouAre,best"

p count_words(s0)