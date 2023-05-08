d, n = gets.chomp.split(" ").map(&:to_i)
case d
when 0
  if n == 100
    puts n + 1
  else
    puts n
  end
when 1
  if n ==  100
    puts n * 100 + 1 * 100
  else
    puts n * 100
  end
when 2
  if n == 100
    puts n * 100 * 100 + 1 * 100 * 100
  else
    puts n * 100 * 100
  end
end