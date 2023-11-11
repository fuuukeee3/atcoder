n = gets.chomp
sum = n.split("").map(&:to_i).sum
nn = n.to_i

if nn % sum == 0
  puts "Yes"
else
  puts "No"
end