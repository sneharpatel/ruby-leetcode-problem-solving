def solve(s,d,m)
  n = s.length-1

  result = 0

  (0..n).each do |i|
    sum = 0
    (0..m-1).each do |j|
      if (i+j) <= n
        sum = sum + s[i+j]
      end
    end

    if sum == d
      result = result + 1
    end

  end

  return result
end


s = [1,2,1,3,2]
d = 3
m = 2

p solve(s,d,m)