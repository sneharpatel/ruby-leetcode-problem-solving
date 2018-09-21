#  how to find a pair which sums up to a given element in an array

def pair_of_ele(a,k)

  n = a.length-1
  hash = Hash.new

  (0..n).each do |i|
    if hash[a[i]]
      partner_value = hash[a[i]]
      return [partner_value, a[i]]
    else
      diff = k - a[i]
      hash[diff] = a[i]
    end
  end
end


a = [2,6,7,4]
    # k = 9  #[2,7]

a1 = [2,7,11,6,8,3,4]
    # k1 = 15 # [7,8]

p pair_of_ele(a1,15)