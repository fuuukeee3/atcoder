a, b = gets.chomp.split(" ").map(&:to_i)

if (a - b).abs == 1 || (a - b).abs == 9
  puts "Yes"
else
  puts "No"
end