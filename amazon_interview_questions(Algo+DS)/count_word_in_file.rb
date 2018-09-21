# /Users/sneha/Documents/words_occurance_count_file
#
# Write a method that returns a count of each word in the file
#
#
#


def count_words_in_file
  the_file = '/Users/sneha/Documents/words_occurance_count_file'
  f = open the_file
  space_seenn = true
  count = 0
  f.each_line { |line|
  line.each_char do |i|
    if isWordSeperator(i)
      if space_seenn == false
        space_seenn = true
        count = count + 1
      else
        #do nothing
      end
    else
      space_seenn = false
    end

  end

  }

  return count

end

def isWordSeperator(char)
  return char == " " || char == "," || char == "." || char == "!"
end


p count_words_in_file