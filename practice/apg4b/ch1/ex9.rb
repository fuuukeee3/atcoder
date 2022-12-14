x, a, b = gets.chomp.split(" ").map(&:to_i)

puts x += 1
puts x *= (a + b)
puts x *= x
puts x -= 1
