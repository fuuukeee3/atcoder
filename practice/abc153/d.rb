def rec(n)
  return 1 if n == 1

  1 + rec(n/2) * 2
end

h = gets.chomp.to_i

puts rec(h)
