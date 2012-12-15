def simularity(string, suffix)
  for i in 0..suffix.length
    break if suffix[i] != string[i]
  end
  i
end

File.open('output00.txt', 'w') do |output|
  File.open("input00.txt") do |input|
    input.gets # skip first line (= number of test cases)
    input.each do |line|
      line.chomp!
      length = line.length
      total = 0
      (0..length-1).each do |pos|
        total = total + simularity(line, line[pos, length-pos])
      end
      output.puts total
    end
  end
end
