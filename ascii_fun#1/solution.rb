#
# puts '■□'

# def x(n, result_string = '', current = 0)
#   n.times do
#     n.times do |row|
#       row == current || row == n - (current+1) ? result_string += '■' : result_string += '□'
#     end
#     current += 1
#     result_string += "\n"
#   end
#   result_string
# end

def x(n, result_string = '', current = 0)
  n.times do |column|
    n.times do |row|
      row == current || row == n - (current+1) ? result_string += 'o' : result_string += ' '
    end
    current += 1
    result_string += "\n" if (column + 1) != n
  end
  result_string
end

puts x(5)[-1]