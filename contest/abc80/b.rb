n = gets.chomp.to_i
x = n.to_s.split("").map(&:to_i).sum

if n % x == 0
  puts "Yes"
else
  puts "No"
end