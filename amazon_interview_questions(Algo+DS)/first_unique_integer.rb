 # Find the first unique integer from a set of arrays
 #


 def first_unique_integer(arr)

   if arr.length == 0
     return nil
   end

   if arr.length == 1
     return arr
   end

   hash = Hash.new

   n = arr.length


   (0..n-1).each do |i|
     if hash[arr[i]]
      hash[arr[i]] = hash[arr[i]] + 1
     else
       hash[arr[i]] = 1
     end
   end
   p hash

   (0..n-1).each do |i|
     if hash[i] == 1
       return i
     end
   end

   return "no unique integer"

 end



 ar1 = [4,4,3,6,5,7,7,8,1]
 ar = [2,2,4,4]

 ar0 = []


 p first_unique_integer(ar1)