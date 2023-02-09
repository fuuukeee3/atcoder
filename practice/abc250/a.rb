h, w = gets.chomp.split(" ").map(&:to_i)
rc = gets.chomp.split(" ").map(&:to_i)
total = 0
if w == 1
  total += 0
elsif rc[1] == 1 || rc[1] == w
  total += 1
else
  total += 2
end

if h == 1
  total += 0
elsif rc[0] == 1 || rc[0] == h
  total += 1
else
  total += 2
end

puts total
