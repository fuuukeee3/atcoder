n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

sorted_a = a.sort
sums = Array.new(1000000 + 1) { 0 }
sorted_a.each do |aa|
  sums[aa] += aa
end

sums2 = Array.new(1000000 + 1) { 0 }
(0..1000000).each do |i|
  sums2[i] = sums2[i - 1] + sums[i]
end

results = []
a.each do |aa|
  results << sums2[-1] - sums2[aa]
end

puts results.join(" ")