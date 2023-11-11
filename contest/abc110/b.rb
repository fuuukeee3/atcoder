n, m, x, y = gets.chomp.split(" ").map(&:to_i)
xx = gets.chomp.split(" ").map(&:to_i)
yy = gets.chomp.split(" ").map(&:to_i)

xxx = xx + [x]
yyy = yy + [y]

if xxx.max < yyy.min
  puts "No War"
else
  puts "War"
end
