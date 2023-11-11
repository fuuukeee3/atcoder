a, b, c, x = gets.chomp.split(" ").map(&:to_i)

if x <= a
  puts 1.0
elsif x > b
  puts 0.0
else
  puts c.to_f / (b - a)
end