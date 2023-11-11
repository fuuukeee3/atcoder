n, m, c = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
a = []
n.times do
  a << gets.chomp.split(" ").map(&:to_i)
end

count = 0
a.each do |aa|
  sum = 0
  (0...m).each do |i|
    sum += aa[i] * b[i]
  end
  count += 1 if sum + c > 0
end

puts count