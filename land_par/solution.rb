def land_perimeter(land)
  total = 0
  (0..(land.length-1)).each { |i|
    (0..(land[i].length-1)).each do |j|
      if land[i][j] == 'X'
        total += 4
        if j > 0 and land[i][j - 1] == 'X'
          total -= 1
        end
        if j < (land[i].length - 1) and land[i][j + 1] == 'X'
          total -= 1
        end
        if i > 0 and land[i - 1][j] == 'X'
          total -= 1
        end
        if i < (land.length - 1) and land[i + 1][j] == 'X'
          total -= 1
        end
      end
    end
  }
  "Total land perimeter: #{total}"
end

puts land_perimeter(['XOOO',
                     'XOXO',
                     'XOXO',
                     'OOXX',
                     'OOOO'])