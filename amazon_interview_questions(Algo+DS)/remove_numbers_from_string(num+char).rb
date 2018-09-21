# Remove numbers from a mix of numbers and characters : Refactor
#
# https://stackoverflow.com/questions/26749065/what-is-the-difference-between-tr-and-gsub
# use tr when you want to replace (translate) single characters.
def remove_numbers(s)

  return s.tr("0-9", "")

end

s = "te9st0"
p remove_numbers(s)


def remove_chars(s)

  return s.tr("a-zA-Z", "")
end


s = "1a12q2s2asAZ"

p remove_chars(s)