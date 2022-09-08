# def rolldice_sum_prob(sum_, dice_amount, numbers = [1,2,3,4,5,6])
#   find_it(numbers * dice_amount, sum_, dice_amount).uniq.size.to_f / (6 ** dice_amount)
# end
#
# def find_it(array, tot, dice)
#   (1..array.size).each_with_object([]) { |n,arr|
#     array.combination(n).each { |a| arr << a if a.length == dice && a.reduce(:+) == tot } }
# end

def rolldice_sum_prob(sum_, dice_amount)
  find_it(sum_, dice_amount).to_f / (6 ** dice_amount)
end

def find_it(tot, dice)
  (dice..dice).flat_map{|n| (1..6).to_a.repeated_permutation(n).map(&:sum)}.count tot
end

puts rolldice_sum_prob(8, 3)
puts rolldice_sum_prob(11, 2)

