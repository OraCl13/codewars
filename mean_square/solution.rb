def solution (arr1, arr2)
  sum = (arr1.length).times.map  { |elem| (arr1[elem] - arr2[elem]) ** 2 }.to_a.sum.to_f
  sum / arr2.length
end


# print solution [1, 2, 3], [4, 5, 6]
print solution [10, 20, 10, 2], [10, 25, 5, -2]
# puts solution [-1, 0], [0, -1]