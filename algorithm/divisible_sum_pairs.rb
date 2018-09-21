def divisible_sum_pairs(n,k,ar)

  pairs = 0

  (0..n-1).each do |i|

    (1..n-1).each do |j|

      if (i < j) && (ar[i] + ar[j]) % k == 0
        pairs = pairs + 1
      end
    end

  end

  return pairs

end

ar = [1,3,2,6,1,2]

p divisible_sum_pairs(6,3,ar)