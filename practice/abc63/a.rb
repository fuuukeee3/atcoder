a, b = gets.chomp.split(" ").map(&:to_i)
if a + b >= 10
  puts "error"
else
  puts a + b
end