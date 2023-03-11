x, y = gets.chomp.split(".").map(&:to_i)
if y <= 2
  puts x.to_s + "-"
elsif y <= 6
  puts x.to_s
else
  puts x.to_s + "+"
end