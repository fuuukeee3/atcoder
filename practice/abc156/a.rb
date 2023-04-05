n, r = gets.chomp.split(" ").map(&:to_i)
if n >= 10
  puts r
else
  puts 100 * (10 - n) + r
end