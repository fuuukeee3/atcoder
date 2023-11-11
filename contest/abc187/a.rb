a, b = gets.chomp.split(" ")
aa = a.split("").map(&:to_i).sum
bb = b.split("").map(&:to_i).sum
puts [aa, bb].max
