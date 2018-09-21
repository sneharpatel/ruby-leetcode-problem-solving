# find the largest sum of consecutive integers in an array
#
# https://www.youtube.com/watch?v=kekmCQXYwQ0
#

def largest_sum(arr)

  if arr.length == 0
    return nil
  end

  if arr.length == 1
    return arr
  end

  max_so_far = arr[0]   # 1st ele of the array
  max_ending_here = 0

  start_idx = 0  # start index of subarray
  end_idx = 0    # end index of subarray
  s = 0          # searches starting point of the sub array

  n = arr.length
  (0..n-1).each do |i|
    max_ending_here = max_ending_here + arr[i]
    if max_so_far < max_ending_here
      max_so_far = max_ending_here
      start_idx = s
      end_idx = i
    end

    if max_ending_here < 0
      max_ending_here = 0
      s = i+1
    end
  end


  p "starting index: #{start_idx}"
  p "End index: #{end_idx}"
  return max_so_far


end



arr = [1,2,3,4,5]

array = [-2,-3,4,-1,-2,1,5,-3]

ar = [-2,-3,4,-1,-2,1,5,-3]
p largest_sum(ar)