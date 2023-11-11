h1, w1 = gets.chomp.split(" ").map(&:to_i)
h2, w2 = gets.chomp.split(" ").map(&:to_i)
if h1 == h2 || h1 == w2 || w1 == w2 || w1 == h2
  puts "YES"
else
  puts "NO"
end