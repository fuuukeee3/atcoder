a, b = gets.chomp.split(" ").map(&:to_i)

if a <= 8 && b <= 8 && a + b <= 16
  puts "Yay!"
else
  puts ":("
end
