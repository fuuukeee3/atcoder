d, n = gets.chomp.split(" ").map(&:to_i)
results = Array.new(d) { 24 }
n.times do
  l, r, h = gets.chomp.split(" ").map(&:to_i)
  (l..r).each do |i|
    results[i-1] = [results[i-1], h].min
  end
end

puts results.sum