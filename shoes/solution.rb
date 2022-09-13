def pair_of_shoes(shoes)
  shoes = shoes.sort_by { |element| element[0] }
  print shoes
  arr = []
  for i in shoes
    if i[0] == 0
      arr.push(i) if i[0] == 0
    else
      flag = false
      for j in arr
        if j[-1] == i[-1]
          flag = true
        end
      end
      false unless flag
    end
  end
  print arr
  true
end

# shoes_1 = [[0, 21],
#            [1, 23],
#            [1, 21],
#            [0, 23]]
# puts pair_of_shoes(shoes_1)

shoes_2 = [[0, 21],
           [1, 23],
           [1, 21],
           [1, 23]]
puts pair_of_shoes(shoes_2)