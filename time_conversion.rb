# https://github.com/PaulNoth/hackerrank/tree/master/practice/algorithms/warmup/time_conversion
#
#
def timeConversion(s)
  timeArr = s.split(":")

  hour = timeArr[0]
  min = timeArr[1]
  seconds = timeArr[2][0..1]
  am_pm = timeArr[2][2..3]

  if am_pm == "AM"
    if hour == "12"
      hour = "00"
    end
  else
    if hour != "12"
      hour = (hour.to_i + 12).to_s
    end
  end

  return (hour+":"+min+":"+seconds)
end

# s = "12:05:45PM"
s1 = "07:05:45PM"
#
s = "12:05:45AM"
p timeConversion(s)  # o/p: "00:05:45"
p timeConversion(s1)

