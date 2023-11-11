n, x = gets.chomp.split(" ").map(&:to_i)
result = -1
xx = 0
n.times do |i|
  v, p = gets.chomp.split(" ").map(&:to_i)
  xx += v * p
  if x * 100 < xx && result == -1
    result = i + 1
  end
end

puts result