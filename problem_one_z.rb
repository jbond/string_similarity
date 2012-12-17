#credit to Daniel Fischer
#translated from his Python code at:
#http://stackoverflow.com/questions/12572786/algorithm-string-similarity

def z_function(str)
    zarray = Array.new(str.length, 0)
    zarray[0] = str.length
    left = 0; right = 0; i = 1
    while i < str.length
        if i > right
            j = 0; k = i
            while k < str.length and str[j] == str[k]
                j += 1
                k += 1
            end
            zarray[i] = j
            if j > 0
                left, right = i, i+j-1
            end
        else
            z = zarray[i-left]
            s = right-i+1
            if z < s
                zarray[i] = z
            else
                j, k = s, s+i
                while k < str.length and str[j] == str[k]
                    j += 1
                    k += 1
                end
                zarray[i] = j
                left, right = i, i+j-1
            end
        end
        i += 1
    end
    return zarray
end

test_cases = gets.to_i
(1..test_cases).each do
  line = gets.chomp
  total = 0
  z_function(line).each { |elem| total+=elem }
  puts total
end
