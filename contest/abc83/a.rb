a, b, c, d = gets.chomp.split(" ").map(&:to_i)
left = a + b
right = c + d

if left == right
  puts "Balanced"
elsif left > right
  puts "Left"
else
  puts "Right"
end
