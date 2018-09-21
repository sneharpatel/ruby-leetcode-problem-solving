#
#
# https://alvinalexander.com/blog/post/ruby/ruby-count-number-of-times-words-appear-in-text-file
#
#
#
def count_words_frequency_from_file

  the_file = '/Users/sneha/Documents/words_occurance_count_file'
  f = open the_file
  h = Hash.new

  f.each_line { |line|
  words = line.split
    words.each {|word|
      w = word.downcase()
      w = cleanWord(w)
      if h.has_key?(w)
        h[w] = h[w] + 1
      else
        h[w] = 1
      end
    }
  }

  h.sort{|key,val| key[1]<=>val[1]}.each do |key,val|
    puts "#{key} => #{val}"
  end

  # h.sort{|a,b| a[1]<=>b[1]}.each { |elem|
  #   puts "\"#{elem[0]}\" has #{elem[1]} occurrences"
  # }

end

def cleanWord(w)
  w.gsub(/[^a-z0-9]/,'').gsub(/[.]/,'')
end


count_words_frequency_from_file