# write a program where a there are multiple users logging into the system or file and
# I want to know the login Occurrences of the each user .
# Note : The file is separated by the commas. ex: User1 , User2, user1 , user3.........
#


def login_occurrence_user

  file = '/Users/sneha/Documents/count_number_of_users_login'
  f = open file
  hash = Hash.new()

  f.each_line do |line|
    words = line.split
    words.each do |word|
      w = word.downcase()
      w = clear_word(w)
      if hash[w]
        hash[w] = hash[w] + 1
      else
        hash[w] = 1
      end
    end
  end

  hash.sort.map.each do |key,val|
    puts "#{key} => #{val}"
  end

end

def clear_word(w)
  w.gsub(/[,]/, '').gsub(/[.]/,'')

end

login_occurrence_user

