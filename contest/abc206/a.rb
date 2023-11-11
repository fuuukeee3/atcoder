n = gets.chomp.to_i
a = (n * 1.08).floor

if a < 206
  puts "Yay!"
elsif a == 206
  puts "so-so"
else
  puts ":("
end