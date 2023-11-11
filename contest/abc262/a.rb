n = gets.chomp.to_i

loop do
  if n % 4 == 2
    puts n
    return
  end
  n += 1
end
