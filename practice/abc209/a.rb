a, b = gets.chomp.split(" ").map(&:to_i)
if b - a >= 0
  puts b - a + 1
else
  puts 0
end