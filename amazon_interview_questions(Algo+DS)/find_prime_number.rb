# Find the prime numbers from the given list of array (1-100)
#
#
#

def find_prime_number(n)

  (2..n).each do |i|
    if prime(i) == true
    print "#{i} "
    end
  end

end

def prime(n)
  last = Math.sqrt(n).to_i
  (2..last).each do |j|
    if (n % j) == 0
      return false
    end
  end
  true
end


find_prime_number(100)
