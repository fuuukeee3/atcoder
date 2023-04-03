x, y, z = gets.chomp.split(" ").map(&:to_i)
x, y = y, x
x, z = z, x
puts [x, y, z].join(" ")