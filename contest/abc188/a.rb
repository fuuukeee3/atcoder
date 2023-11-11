x, y = gets.chomp.split(" ").map(&:to_i)
if (x - y).abs < 3
  puts "Yes"
else
  puts "No"
end