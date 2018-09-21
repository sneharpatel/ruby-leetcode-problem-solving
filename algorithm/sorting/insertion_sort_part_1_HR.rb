
# https://www.hackerrank.com/challenges/insertionsort1/problem


def insertionSort1(n, ar)

  temp = ar[n-1]
  p ar[n-1]
  (n-2).downto(0) do |i|
    if ar[i] > temp
      ar[i+1] = ar[i]
      print ar.join(" ")
    else
      ar[i+1] = temp
      print ar.join(" ")
      break
    end
    print "\n"
  end

  if ar[0] > temp
    ar[0] = temp
    print ar.join(" ")
  end
end

arr = [2,4,6,8,11]

arr =[3,4,6,8,2]
arr1 = [1,2,4,5,3]

insertionSort1(5,arr)

#
# n = gets.to_i
#
# arr = gets.rstrip.split(' ').map(&:to_i)
#
# p arr
#
# insertionSort1 n, arr