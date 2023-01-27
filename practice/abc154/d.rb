n, k = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map(&:to_i)

sums = [0]
(1..1000).each_with_index do |i, index|
  sums << i + sums[index]
end
p sums[3 - 1], sums[11]

kitai = [0]
arr.each_with_index do |a, index|
  aa = (1..a).to_a
  kitai << (aa.sum / aa.size.to_f) + kitai[index]
end

# p kitai
results = []
(0..(n - k)).each do |i|
  results << kitai[i + k] - kitai[i]
end

puts results.max
