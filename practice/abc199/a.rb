a, b, c = gets.chomp.split(" ").map(&:to_i)
if a ** 2 + b ** 2 < c ** 2
  puts "Yes"
else
  puts "No"
end