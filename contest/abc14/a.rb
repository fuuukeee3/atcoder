a = gets.chomp.to_i
b = gets.chomp.to_i

aa = b - (a % b)
if aa == b
  puts 0
else
  puts aa
end