x, y, z = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")

comp = []
i = 0
while i < s.size
  j = i
  while j < s.size && s[i] == s[j]
    j += 1
  end

  comp << [s[i], j -i]
  i = j
end

p comp

capslock = false
sum = 0
comp.each do |c|
  p sum
  case c[0]
  when "A"
    if capslock
      p1 = x * c[1]
      p2 = z + (y * c[1])
      if p1 <= p2
        sum += p1
      else
        sum += p2
        capslock = !capslock
      end
    else
      p1 = z + (x * c[1])
      p2 = y * c[1]
      if p1 <= p2
        sum += p1
        capslock = !capslock
      else
        sum += p2
      end
    end
  when "a"
    if capslock
      p1 = z + (x * c[1])
      p2 = y * c[1]
      if p1 < p2
        sum += p1
        capslock = !capslock
      else
        sum += p2
      end
    else
      p1 = x * c[1]
      p2 = z + (y * c[1])
      if p1 <= p2
        sum += p1
      else
        sum += p2
        capslock = !capslock
      end
    end
  end
end

puts sum