n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

results = Hash.new { 0 }
arr.each do |a|
  results[a] += 1
end

count = 0
results.each do |k, v|
  count += v / 2
end

puts count