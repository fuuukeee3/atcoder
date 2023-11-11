x, a, b = gets.chomp.split(" ").map(&:to_i)
sa = b - a
if sa <= a && a >= b
  puts "delicious"
elsif sa <= x
  puts "safe"
else
  puts "dangerous"
end