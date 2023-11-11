w, h = gets.chomp.split(" ").map(&:to_i)
if w % 16 == 0 && h % 9 == 0
  puts "16:9"
else
  puts "4:3"
end