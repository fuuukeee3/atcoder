n = gets.chomp.split("").map(&:to_i)
if n.sum % 9 == 0
  puts "Yes"
else
  puts "No"
end