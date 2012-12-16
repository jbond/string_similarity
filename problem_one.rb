def simularity(string, suffix)
  for i in 0..suffix.length
    break if suffix[i] != string[i]
  end
  i
end

test_cases = gets.to_i
(1..test_cases).each do
  line = gets.chomp
  length = line.length
  total = length # string matches itself, no need to calculate
  (1..length-1).each do |suffix_start|
    total = total + simularity(line, line[suffix_start, length-suffix_start])
  end
  puts total
end
