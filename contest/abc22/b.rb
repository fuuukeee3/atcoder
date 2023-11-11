n = gets.chomp.to_i
hash = Hash.new {-1}
n.times do
  a = gets.chomp.to_i
  hash[a] += 1
end

puts hash.values.sum
