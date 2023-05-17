n, m, b = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp.split(" ").map(&:to_i)

sum = b * n * m
a.each do |aa|
  sum += aa * m
end

csum = c.sum
sum += csum * n
puts sum

