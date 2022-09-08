def simplify(poly)
  parsed_poly = parse_poly(poly)
  remade_poly = remake_poly(parsed_poly)
  result = deparse_poly(remade_poly)
  result
end

def parse_poly(poly)
  poly.insert(0, '+') if poly[0] != '-'
  numbers = poly.split(/\W/).reject { |c| c.empty? }
  numbers = numbers.map { |elem| elem.chars.sort.join }
  numbers = numbers.map { |elem| elem.scan(/\d+|[A-Za-z]+/) }
  numbers.each { |arr| arr.insert(0, '1') if arr[0].to_i.to_s == '0' }
  symbols = poly.split(/\w/).reject { |c| c.empty? }
  numbers.zip symbols
end

def remake_poly(parsed_poly)
  parsed_poly.each_with_index do |block, index|
    parsed_poly.each_with_index do |ins_block, ins_index|
      next if index >= ins_index

      if block[0][1] == ins_block[0][1]
        new_number = (block[1] + block[0][0]).to_i + (ins_block[1] + ins_block[0][0]).to_i
        if new_number >= 0
          block[0][0] = new_number.to_s
          block[1] = '+'
        else
          block[0][0] = -new_number.to_s
          block[1] = '-'
        end
        parsed_poly.delete_at(ins_index)
      end
    end
  end
end

def deparse_poly(parsed_poly, res = '')
  parsed_poly = parsed_poly.sort_by { |elem| elem[0][1].length }
  parsed_poly.each do |base|
    if base[0][0] != '0'
      if base[0][0] != '1'
        res += base[1] + base[0][0] + base[0][1]
      else
        if res.empty? && base[1] == '+'
          res += base[0][1]
        else
          res += base[1] + base[0][1]
        end
      end
    end
  end
  res
end

print simplify("dc+dcba") # "cd+abcd"
puts ' '
print simplify("2xy-yx") # "xy"
puts ' '
print simplify("-a+5ab+3a-c-2a") # "-c+5ab"
puts ' '
# TODO give + more importance over -