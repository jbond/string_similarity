class String
  def total_simularity
    total = 0
    (0..length-1).each do |pos|
      total = total + simularity(self[pos, length-pos])
    end
    total
  end

  def simularity(suffix)
    for i in 0..suffix.length
      break if suffix[i] != self[i]
    end
    i
  end
end
