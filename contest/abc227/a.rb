n, k, a = gets.chomp.split(" ").map(&:to_i)

loop do
  k -= 1
  break if k == 0

  if a == n
    a = 1
  else
    a += 1
  end

end

puts a