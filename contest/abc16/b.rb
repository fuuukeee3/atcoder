a, b, c = gets.chomp.split(" ").map(&:to_i)
if a + b == c && a - b == c
  puts "?"
elsif a + b != c && a - b != c
  puts "!"
elsif a + b == c && a - b != c
  puts "+"
elsif a + b != c && a - b == c
  puts "-"
end