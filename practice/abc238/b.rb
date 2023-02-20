n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

results = [0]
n.times do |i|
  a = arr[i] + results[i]
  a -= 360 if a > 360
  results << a
end

results.sort!
results << 360

max = 0
(0..n).each do |i|
  max = [max, results[i + 1] - results[i]].max
end

puts max