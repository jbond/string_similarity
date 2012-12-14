def simtot(string)
  total=0
  length = string.length
  (0..length-1).each do |pos|
    total = total + sim(string, string[pos, length-pos])
  end
  total
end

def sim(string, suffix)
  for i in 0..suffix.length
    break if suffix[i] != string[i]
  end
  i
end
