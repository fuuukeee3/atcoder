x, y = gets.chomp.split(" ").map(&:to_i)

if x >=y
  puts 0
else
  puts ((y - x) / 10.0).ceil
end