x = gets.chomp.to_i
i = 0
money = 100
loop do
  break if x <= money
  i += 1
  money += (money / 100).floor
end

puts i
