n = gets.chomp.to_i
sunuke = gets.chomp.split(" ").map(&:to_i)
takahashi = gets.chomp.split(" ").map(&:to_i)

results = takahashi.dup
(n * 2).times do |i|
  results[(i + 1) % n] = [results[(i + 1) % n], results[i % n] + sunuke[i % n]].min
end

puts results.join("\n")
