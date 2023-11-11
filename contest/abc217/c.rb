n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
results = []
(0...n).each do |i|
  index = arr[i] - 1

  results[index] = i + 1
end

puts results.join(" ")