def filled_array(number, times)

end

def max_partition(base_int, partition_length)
  partition_base = (base_int.to_f / partition_length.to_f).floor
  # puts partition_base, partition_length
  rest = base_int - (partition_base * partition_length)
  # puts rest
  result = Array.new(partition_length, partition_base)
  # print(result)
  return result unless rest > 0

  print(rest.downto(1).each { |e| puts e})
  rest.downto(1).each_with_index { |value, index| result[index] += 1 }
  print result
  result
end

def min_partition(base_int, partition_length)
  min_value = base_int - (partition_length - 1)
  [min_value, *Array.new(partition_length - 1, 1)]
end

def find_spec_partition(n, k, com)
  puts "number: #{n}, partition_length: #{k}, operation: #{com}"
  com == 'max' ? max_partition(n, k) : min_partition(n, k)
end

find_spec_partition(10, 4, 'max')