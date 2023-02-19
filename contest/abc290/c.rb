require 'set'

n, k = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

results = (0..k).to_a
arr.each do |a|
  next if a >= k
  results.delete(a)
end

puts results.max