a, b = gets.chomp.split(" ").map(&:to_i)
if a == b
  puts "Draw"
elsif a == 1
  puts "Alice"
elsif b == 1
  puts "Bob"
elsif a > b
  puts "Alice"
else
  puts "Bob"
end
