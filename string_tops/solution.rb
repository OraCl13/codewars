def tops(msg)
  out = ''
  i = j = 1
  while i < msg.length
    out += msg[i]
    i = i + (2 * j) + 3
    j += 2
  end
  out.reverse
end

puts tops('abcdefghijklmnopqrstuvwxyz12345')