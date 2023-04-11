n = gets.chomp.to_i
v = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp.split(" ").map(&:to_i)

sum = 0
(0...n).each do |i|
  if v[i] > c[i]
    sum += v[i] - c[i]
  end
end

puts sum