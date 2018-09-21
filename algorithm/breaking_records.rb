# Maria plays college basketball and wants to go pro. Each season she maintains a record of her play.
# She tabulates the number of times she breaks her season record for most points and least points in a game.
# Points scored in the first game establish her record for the season, and she begins counting from there.
#
#     For example, assume her scores for the season are represented in the array .
# Scores are in the same order as the games played. She would tabulate her results as follows:
#
#                                                                                                                                                                          Count
#     Game  Score  Minimum  Maximum   Min Max
#     0      12     12       12       0   0
#     1      24     12       24       0   1
#     2      10     10       24       1   1
#     3      24     10       24       1   1
#     Given Maria's array of  for a season of  games,
# find and print the number of times she breaks her records for most and least points scored during the season.
#
# Sample Input 0
#
# 9
# 10 5 20 20 4 5 2 25 1
# Sample Output 0
#
# 2 4



def breakingRecords(scores)
  max_score = scores[0]
  min_score = scores[0]
  # highest_record = 0
  # lowest_record = 0
  result = []
  result[0] = 0
  result[1] = 0
  n = scores.length-1
  (1..n).each do |i|
    if scores[i] > max_score
      max_score = scores[i]
      # highest_record = highest_record + 1
      result[0] = result[0] + 1
    end
    if scores[i] < min_score
      min_score = scores[i]
    #   lowest_record = lowest_record + 1
    result[1] = result[1] + 1
    end
  end

  # print "#{highest_record} #{lowest_record}"
  return result
end


scores = [3,4,21,36,10,28,35,5,24,42]
#
# p breakingRecords(scores)



# n = gets.to_i
#
# scores = gets.rstrip.split(' ').map(&:to_i)
#

result = breakingRecords scores

p result.join " "