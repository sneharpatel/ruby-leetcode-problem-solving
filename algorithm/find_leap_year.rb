def find_leap_year(year)
  if ((year % 4 == 0) && year % 100 != 0) || (year % 400) == 0
    puts "It's a leap year"
  else
    puts "It's not a leap year"
  end

end

find_leap_year(1800)