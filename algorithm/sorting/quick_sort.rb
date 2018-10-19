# time complexity = O(nlog(n)) in avg and best case
# O(n2) in worst case

def quick_sort(a,st,ed)

  if a.length == 0
    return nil
  end
  if a.length < 2
    return a
  end

  if st < ed
    p_index = partition(a,st,ed)  # calling partition index
    quick_sort(a,st,p_index-1)
    quick_sort(a,p_index+1,ed)
  end
  return a
end


# This function takes last element as pivot, places
# the pivot element at its correct position in sorted
# array, and places all smaller (smaller than pivot)
# to left of pivot and all greater elements to right
# of pivot
def partition(a,st,ed)

  pivot = a[ed]
  p_index = st

  (st..ed-1).each do |i|
    if (a[i] <= pivot)
      swap(a,i,p_index)
      p_index = p_index + 1
    end
  end

  swap(a,p_index,ed)
  return p_index
end


def swap(a,i,j)
  temp = a[i]
  a[i] = a[j]
  a[j] = temp
end


a = [7,2,1,6,8,5,3,4]
s = 0
e = 7
p quick_sort(a,s,e)