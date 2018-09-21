#HackerLand University has the following grading policy:
#
# Every student receives a grade  in the inclusive range from 0 to 100.
# Any grade  less than 40  is a failing grade.
# Sam is a professor at the university and likes to round each student's  according to these rules:
#
# If the difference between the grade and the next multiple of 5 is less than 3, round grade up to the next multiple of 5.
# If the value of grade is less than 38, no rounding occurs as the result will still be a failing grade.
# For example, grade = 84 will be rounded to 85 but grade = 29  will not be rounded because the rounding would
# result in a number that is less than 40.
# #
# # Given the initial value of grade for each of Sam's n students, write code to automate the rounding process.
# Complete the function solve that takes an integer array of all grades, and return an integer array
# consisting of the rounded grades. For each , round it according to the rules above and print the result on a new line.
#
# Input Format
#
# The first line contains a single integer denoting  (the number of students).
# Each line  of the  subsequent lines contains a single integer, , denoting student 's grade.
#
# Student 1 received a 73, and the next multiple of 5 from 73 is 75. Since 75-73 < 3 , the student's grade is rounded to 75.
# Student 2 received a 67, and the next multiple of 5 from 67 is 70 . Since 70-67 = 3 , the grade will not be modified and the student's final grade is 67 .
# Student 3 received a 38, and the next multiple of 5 from 38 is 40. Since 40-38 < 3 , the student's grade will be rounded to 40.
# Student  received a grade below 38 (i.e 33) , so the grade will not be modified and the student's final grade is 33.
#
#
def solve(arr)

  result = []

  arr.each do |i|
    if i < 38
      result << i
    else
      mg1 = i+1
      mg2 = i+2
      if mg1%5 == 0
        result << mg1
      elsif mg2%5 == 0
        result << mg2
      else
        result << i
      end
    end
  end

  result.each do |r|
    puts r
  end

end

arr = [73,67,38,33]
solve(arr)