n = gets.chomp.to_i
sum = 1
(1..n).each do |i|
  sum = i * (sum % 1000000007)
end

puts sum % 1000000007
