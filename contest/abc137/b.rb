k, x = gets.chomp.split(" ").map(&:to_i)
results = []
(1...k).each do |i|
  results << x - i
  results << x + i
end
results << x
puts results.sort.join(" ")