n, a, b = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp.split(" ").map(&:to_i)

ab = a + b
puts c.find_index(ab) + 1