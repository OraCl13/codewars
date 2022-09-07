def est_subsets(arr)
  (arr.length * (arr.length + arr.length-1)) / 2
end

arr = [2, 3, 4, 5, 5, 6, 6, 7, 8, 8]
puts est_subsets([1,2,3,4])
puts est_subsets(arr)
