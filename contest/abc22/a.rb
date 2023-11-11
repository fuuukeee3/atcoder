n, s, t = gets.chomp.split(" ").map(&:to_i)
w = gets.chomp.to_i
if w >= s && w <= t
  count = 1
else
  count = 0
end
(n-1).times do
  a = gets.chomp.to_i
  w += a
  count += 1 if w >=s && w <= t
end

puts count