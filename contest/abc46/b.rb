n, k = gets.chomp.split(" ").map(&:to_i)
sum = k
(n-1).times do
  sum *= k - 1
end

puts sum