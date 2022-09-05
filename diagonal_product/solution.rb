MSSV = [[1, 4, 7, 6, 5],
        [-3, 2, 8, 1, 3],
        [6, 2, 9, 7, -4],
        [1, -2, 4, -2, 6],
        [3, 2, 2, -4, 7]]

def sum_prod_diags(matrix, sum1 = 0, sum2 = 0)
  (0..(matrix[0].length)-1).each do |column|
    temp = 1
    matrix.each_with_index do |sub_arr, index|
      next unless sub_arr[index+column]
      # TODO
      temp *= sub_arr[index+column]
    end
    sum1 += temp
  end


  sum1
end

puts sum_prod_diags MSSV