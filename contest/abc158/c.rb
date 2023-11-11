a, b = gets.chomp.split(" ").map(&:to_i)

result = 1
loop do
  aa = (result * 0.08).floor
  bb = (result * 0.1).floor

  if aa == a && bb == b
    puts result
    break
  end

  if aa > 100 || bb > 100
    puts -1
    break
  end
  result += 1
end
