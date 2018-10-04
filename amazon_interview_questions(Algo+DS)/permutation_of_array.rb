# array permutation:
# https://medium.com/@julia.herron/interview-practice-find-all-possible-permutations-of-an-input-string-1f316f5692f1
#
#
def permutation_array(ar, i=0)

  n = ar.size

  if i == n
    p ar
  end

  (i..n-1).each do |j|
    swap(ar,i,j)
    permutation_array(ar, i+1)
    swap(ar,i,j)
  end
end


def swap(a,i,j)
  temp = a[i]
  a[i] = a[j]
  a[j] = temp
end

a = "abc"
a1 = [1,2,3]
permutation_array(a)