# Time complexity (running time in worst, avg and best case) = O(nlogn)
# space complexity = O(n) - not in place algorithm
# divide and conquer algorithm


def merge_sort(ar)
  n = ar.length

  mid = n/2
  left_ar = ar[0..mid-1]
  right_ar = ar[mid..n-1]

  if ar == nil
    return nil
  end
  if n < 2
    return ar
  end

  merge_sort(left_ar) # sort left sub list
  merge_sort(right_ar) # sort right sub list
  merge_ar(left_ar,right_ar,ar) # merge left and right sub-list

end


def merge_ar(l,r,a)

  nl = l.length
  nr = r.length
  lind = 0
  rind = 0
  aind = 0

  while (lind < nl) && (rind < nr)
    if l[lind] <= r[rind]
      a[aind] = l[lind]
      lind = lind + 1
    else
      a[aind] = r[rind]
      rind = rind + 1
    end
    aind = aind + 1
  end

  while (lind < nl)
    a[aind] = l[lind]
    lind = lind + 1
    aind = aind + 1
  end

  while (rind < nr)
    a[aind] = r[rind]
    rind = rind + 1
    aind = aind + 1
  end

  return a

end



a = [2,4,1,6,8,5,3,7]
a1 = [8,4,10,5,14,7,19]

p merge_sort(a1)