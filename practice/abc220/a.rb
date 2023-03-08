a, b, c = gets.chomp.split(" ").map(&:to_i)
i = 1
loop do
  if c * i >= a && c * i <= b
    puts c * i
    exit
  end

  if c * i > b
    puts -1
    exit
  end

  i += 1
end