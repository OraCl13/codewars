def fish(shoal, current_size = 1, amount = 0, next_size = 4)
  shoal = shoal.split('').map(&:to_i).sort
  # print shoal
  for fish in shoal
    if fish <= current_size
      amount += fish
    end
    if amount >= next_size
      amount -= 4 * next_size
      current_size+=1
      next_size = current_size * 4
    end
  end
  current_size
end

puts fish("1111")
puts fish("6")
puts fish("0")
puts fish("11112222") # 2
puts fish("111122223333") # 4
puts fish("111111111111") # 3
# puts fish("111111111111111111112222222222")
# puts fish("151128241212192113722321331")