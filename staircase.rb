# Write a program that prints a staircase of size n.
#
#     Input Format
#
# A single integer,  , denoting the size of the staircase.
#
#     Output Format
#
# Print a staircase of size  using # symbols and spaces.
#
# Note: The last line must have  spaces in it.


def staircase(n)
  (0..n-1).each do |i|
    (0..n-1).each do |j|
      # p n-1-i
      # p j
      if (j < n-1-i)
        print " "
      else
        print "#"
      end
    end
    print "\n"
  end
end



n = 6
staircase(n)

