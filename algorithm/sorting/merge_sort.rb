def merge_sort(ar)
  n = ar.length

  mid = n/2
  left_ar = ar[0...mid]  # not include mid (range will 0 to mid-1)
  p left_ar
  right_ar = ar[mid..n-1]
  p right_ar

  if ar == nil
    return nil
  end
  if n < 2
    return ar
  end

  merge_sort(left_ar)
  merge_sort(right_ar)
  merge_ar(left_ar,right_ar,ar)

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