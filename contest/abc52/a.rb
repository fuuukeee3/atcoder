a, b, c, d = gets.chomp.split(" ").map(&:to_i)
if a * b == c * d
  puts a * b
elsif a * b > c * d
  puts a * b
else
  puts c * d
end