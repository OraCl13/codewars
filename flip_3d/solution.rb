def flip(dir, box)
  case dir
  when 'R'
    box = box.map(&:sort)
  when 'L'
    box = box.map(&:sort).map(&:reverse)
  when 'D'
    box = vertical_sort(box, true)
  when 'U'
    box = vertical_sort(box, false)
  end
  box
end

def vertical_sort(box, to_top, new_box = [])
  box[0].length.times do |elem|
    temp_arr = []
    box.length.times do |arr|
      temp_arr << box[arr][elem]
    end
    to_top ? new_box << temp_arr.sort : new_box << temp_arr.sort.reverse
  end
  new_box[0].zip(*new_box.drop(1))
end

box = [[1, 3, 2],
       [4, 5, 1],
       [6, 5, 3],
       [7, 2, 9]]
# flip('R', box)
# puts 'x'
# flip('L', box)
puts 'x'
print flip('U', box)
puts 'x'