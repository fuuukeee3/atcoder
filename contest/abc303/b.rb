require 'set'
n, m = gets.chomp.split(" ").map(&:to_i)
arr = []
m.times do
  a = gets.chomp.split(" ").map(&:to_i)
  (0...(n-1)).each do |i|
    arr << [a[i], a[i+1]].sort
  end
end

puts (1..n).to_a.combination(2).size - arr.uniq.size