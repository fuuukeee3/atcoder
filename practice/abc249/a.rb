a, b, c, d, e, f, x = gets.chomp.split(" ").map(&:to_i)

takahashi = 0
aoki = 0

(0...x).each do |i|
  if i % (a + c) < a
    takahashi += b
  end
  if i % (d + f) < d
    aoki += e
  end
end

if takahashi == aoki
  puts "Draw"
elsif takahashi > aoki
  puts "Takahashi"
else
  puts "Aoki"
end