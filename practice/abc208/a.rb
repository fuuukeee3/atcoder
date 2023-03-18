a, b = gets.chomp.split(" ").map(&:to_i)
if b <= 6 * a && b >= a
  puts "Yes"
else
  puts "No"
end