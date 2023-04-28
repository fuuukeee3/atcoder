a, b = gets.chomp.split(" ").map(&:to_i)
ab = a + b
if ab < 24
  puts ab
else
  puts ab - 24
end