# def remove_chars(s,r)
#   s = s.split("")
#   r = r.split("")
#
#   result_str = ""
#   s.each do |c|
#     if  !r.include?(c)
#       result_str = result_str + c
#     end
#   end
#
#   return result_str
# end

def remove_char(s,r)  # O(n+m) =~ O(n)

  result_str = ""
  h = Hash.new

  r.each_char do |c|
    h[c] = 1
  end

  s.each_char do |c|
    if !h.has_key?(c)
      result_str << c
    end
  end
  return result_str
end



s = "Battle of the Vowels: Hawaii vs. Grozny"
r = "aeiou"

p remove_char(s,r)