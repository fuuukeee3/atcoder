a, b = gets.chomp.split(" ").map(&:to_i)
kokei = a + b
sibo = b

if kokei >= 15 && sibo >= 8
  puts 1
elsif kokei >= 10 && sibo >= 3
  puts 2
elsif kokei >= 3
  puts 3
else
  puts 4
end