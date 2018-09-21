def bigSorting(unsorted)


  unsorted.sort {|a,b| a.to_i<=>b.to_i}

end




array = ["31415926535897932384626433832795","1","3","10","3","5"]
p bigSorting(array)


# get input from user
n = gets.to_i
unsorted = Array.new(n)

n.times do |i|
  unsorted_item = gets.to_s.rstrip
  unsorted[i] = unsorted_item
end

p unsorted
result = bigSorting unsorted

p result.join "\n"
