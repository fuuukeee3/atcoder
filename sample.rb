def rec(n)
  return 1 if n == 1

  n + rec(n-1)
end

n = gets.chomp.to_i
puts rec(n)