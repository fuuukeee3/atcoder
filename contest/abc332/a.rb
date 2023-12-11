n, s, k = gets.chomp.split(" ").map(&:to_i)
sum = 0
n.times do
  pp, q = gets.chomp.split(" ").map(&:to_i)
  sum += pp * q
end

if sum >= s
  puts sum
else
  puts sum + k
end