n = gets.chomp.to_i
b = gets.chomp.split(" ").map(&:to_i)

results = []
(n-1).times do |i|
  if i.zero?
    results[i] = b[i]
  else
    results[i] = [b[i], b[i - 1]].min
  end
end

results << b[n-2]

puts results.sum