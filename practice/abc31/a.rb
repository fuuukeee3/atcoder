a, d = gets.chomp.split(" ").map(&:to_i)
aa = (a + 1) * d
bb = a * (d + 1)
puts [aa, bb].max