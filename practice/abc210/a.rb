n, a, x, y = gets.chomp.split(" ").map(&:to_i)
total = n * x
if n - a > 0
  total -= (n - a) * (x - y)
end

puts total
