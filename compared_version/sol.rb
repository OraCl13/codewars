def compare_versions(version1,version2)
  parse_v1 = version1.split '.'
  parse_v2 = version2.split '.'

  (0..[parse_v1.length, parse_v2.length].max).each { |ind|
    if (parse_v1[ind].to_i || 0) < (parse_v2[ind].to_i || 0)
      return false
    end
  }
  true
end


puts compare_versions("11", "10");                    # returns true
puts compare_versions("11", "11");                    # returns true
puts compare_versions("10.4.6", "10.4");              # returns true
puts compare_versions("10.4", "11");                  # returns false
puts compare_versions("10.4", "10.10");               # returns false
puts compare_versions("10.4.9", "10.5");              # returns false